local DAS = DailyAutoShare
local visibilityStateCached = false
local stateIsHidden 		= false
local stateIsMinimised 		= false
local visibleButtonIndex	= 0
DAS.sublabels = {}
DAS.labels = {}
local numLabels             = 0
local labelTexts = {}
local p = DAS.DebugOut
local typeTable = "table"
local sep = "%s%w%w%s"
local alreadyUpdatingLabels = false

local questTextColors = {
	[DAS_STATUS_COMPLETE] = INTERFACE_TEXT_COLOR_DISABLED,
	[DAS_STATUS_OPEN] = INTERFACE_TEXT_COLOR_NORMAL,
	[DAS_STATUS_ACTIVE] = INTERFACE_TEXT_COLOR_SELECTED,
}

local function isHidden()
	return (not DAS.GetActiveIn()) or DAS.GetHidden() or (DAS.GetAutoHide() and (not DAS.OpenDailyPresent()) or #DAS.GetZoneQuests() == 0)
end
local function isMinimised()
	return DAS.GetMinimised() or (not isHidden()) and (DAS.GetAutoMinimize() and (not DAS.OpenDailyPresent()))
end
local function cacheVisibilityStatus(forceOverride)
	stateIsHidden				= isHidden()
	stateIsMinimised			= isMinimised()
	DasControl.stateIsHidden	= stateIsHidden
	DasControl.stateIsMinimised	= stateIsMinimised
end
function DAS.RefreshControl(refreshQuestCache)
  -- p("DAS.RefreshControl(" .. tostring(refreshQuestCache).. ")")
	if not DAS.HasActiveDaily() then
		DAS.SetAutoInvite(false)
  end
	cacheVisibilityStatus()
	DasHandle:SetHidden(  stateIsHidden)
	DasControl:SetHidden( stateIsHidden)
	DasList:SetHidden(    stateIsMinimised or stateIsHidden)
	DasSubList:SetHidden(true)
  DAS.RefreshLabelsWithDelay()
end
local function SetAlpha(control, value)
	if not control then return end
	if value then
		control:SetAlpha(1)
    else
		control:SetAlpha(0.3)
  end
end
local function SetAutoInviteButton(value)
	if value then
		DasButtonInvite:SetAlpha(1)
		DasButtonInvite:SetNormalTexture("/DailyAutoShare/textures/invite_active.dds")
		DasList_BG:SetEdgeColor(ZO_SELECTED_TEXT:UnpackRGBA())
    else
		DasButtonInvite:SetAlpha(0.5)
		DasButtonInvite:SetNormalTexture("/DailyAutoShare/textures/invite_up.dds")
		DasList_BG:SetEdgeColor(ZO_DEFAULT_TEXT:UnpackRGBA())
  end
end
local function SetLockedButton(value)
	if value then
		DasButtonLock:SetNormalTexture("/esoui/art/miscellaneous/locked_up.dds")
		DasButtonLock:SetMouseOverTexture("/esoui/art/miscellaneous/unlocked_down.dds")
		DasButtonLock:SetPressedTexture("/esoui/art/miscellaneous/unlocked_down.dds")
		DasControl:SetMovable(false)
    else
		DasButtonLock:SetNormalTexture("/esoui/art/miscellaneous/unlocked_up.dds")
		DasButtonLock:SetMouseOverTexture("/esoui/art/miscellaneous/locked_down.dds")
		DasButtonLock:SetPressedTexture("/esoui/art/miscellaneous/locked_down.dds")
		DasControl:SetMovable(true)
  end
end
local function SetMinimizedButton(value)
	local minimizedTex = "/esoui/art/buttons/plus"
	local maximizedTex = "/esoui/art/buttons/minus"
	local tex = (value and minimizedTex) or maximizedTex
	DasButtonMinmax:SetNormalTexture(tex.. "_up.dds")
	DasButtonMinmax:SetMouseOverTexture(tex.. "_over.dds")
	DasButtonMinmax:SetPressedTexture(tex.. "_down.dds")
end
local function setButtonStates()
	SetAutoInviteButton(DAS.GetAutoInvite())
	SetAlpha(DasButtonAccept, DAS.GetAutoAcceptShared())
	SetAlpha(DasButtonShare, DAS.GetAutoShare())
	DasButtonSpam:SetAlpha(0.7)
end
DAS.SetButtonStates = setButtonStates
function DAS.QuestLabelClicked(control, mouseButton)
  if mouseButton == MOUSE_BUTTON_INDEX_RIGHT then -- and isValidJournalIndex then
		return DAS.OnRightClick(control)
  end
	if control.dataIsSubList then
		return DAS.RefreshSubLabels(control)
	end
	local journalIndex          = control.dataJournalIndex or 99
	if IsValidQuestIndex(journalIndex) then
    if journalIndex ~= DAS.trackedIndex then
      FOCUSED_QUEST_TRACKER:ForceAssist(journalIndex)
      else
      ShareQuest(journalIndex)
    end
  end
end
function DAS.Donate(_, mouseButton)
	if mouseButton == MOUSE_BUTTON_INDEX_LEFT then
		RequestOpenUnsafeURL("https://github.com/manavortex/DailyAutoShare/issues")
	end
end
function DAS.MinMaxButton()
	local newMinimisedValue = not (stateIsMinimised)
	SetMinimizedButton(newMinimisedValue)
	DAS.SetMinimised(newMinimisedValue)
	DAS.RefreshControl()
end
local function shouldHideLabel(questName, zoneId)
	local questLists = DAS.QuestLists[zoneId] or {}
	-- d(zo_strformat("should <<1>> be hidden?", questName))
	for questListName, questListData in pairs(questLists) do
		if questListData[questName] then
      -- d(questName)
      -- d("active: " .. tostring(DAS.GetQuestListItem(zoneId, questListName, "active")))
      -- d("hidden: " .. tostring(DAS.GetQuestListItem(zoneId, questListName, "invisible")))
			return  (
				(not DAS.GetQuestListItem(zoneId, questListName, "active")) or
          DAS.GetQuestListItem(zoneId, questListName, "invisible"))
    end
  end
	return false
end

local function setControlText(label, hidden)
	local caption = GetControl(label, "_Caption") or nil
	if not caption then return end

	if label.dataJournalIndex == DAS.trackedIndex then
		caption:SetText(string.format("→ %s", label.dataTitle))
	elseif hidden then
		label:SetHidden(true)
		return
	else
		caption:SetText(label.dataTitle)
	end
	caption:SetColor(GetInterfaceColor(INTERFACE_COLOR_TYPE_TEXT_COLORS, questTextColors[label.dataQuestState or DAS_STATUS_OPEN]))
	label:SetHidden(false)
end
local function setLabelTable(questTable)
  local status = DAS_STATUS_COMPLETE
  local index = 1
  local questName, tmpStatus = nil
  for idx, tmpQuestName in pairs(questTable) do
    labelTexts[tmpQuestName] = true
    questName = questName or tmpQuestName
    tmpStatus = DAS.GetQuestStatus(tmpQuestName)
    if tmpStatus == DAS_STATUS_ACTIVE then
      status = tmpStatus
      questName = tmpQuestName
      elseif status ~= DAS_STATUS_ACTIVE and status ~= DAS_STATUS_OPEN then
      status = tmpStatus
    end
  end
  questName = questName or ""
  return questName, status
end
local function makeSubLabelTitle(str, zoneId, listIndex)
  if zoneId ~= nil and DAS.QuestListTitles[zoneId] ~= nil then
    if DAS.QuestListTitles[zoneId][listIndex] ~= nil then
        return string.format("%s...", DAS.QuestListTitles[zoneId][listIndex])
    end
  end
  if not str then return end
  local idx = string.find(str, sep)
  if nil == idx then return string.format("%s...") end
  return string.format("%s...", string.sub(str, 0, idx+3))
end
function DAS.SetSubLabels(questTable)
	if (nil == questTable or {} == questTable) then return end
	local status = DAS_STATUS_COMPLETE
	local index = 1
	for idx, questName in pairs(questTable) do
		index = idx
		local label = DAS.sublabels[idx]
		label.dataJournalIndex 	= DAS.GetLogIndex(questName)
		local bingoString, bingoIndex = DAS.GetBingoStringFromQuestName(questName)
		label.dataBingoString 	= bingoString
		label.dataBingoIndex 	  = bingoIndex
		label.dataQuestName		  = questName
		label.dataTitle         = questName
		label.dataQuestState    = DAS.GetQuestStatus(questName)
		label:SetHidden(false)
		if label.dataQuestState == DAS_STATUS_ACTIVE then
			table.insert(DAS.activeZoneQuests, label.dataJournalIndex)
			status = label.dataQuestState
		elseif status ~= DAS_STATUS_ACTIVE and status ~= DAS_STATUS_OPEN then
			status = label.dataQuestState
		end
		setControlText(label)
	end
	for idx=index, #DAS.sublabels do
		local label = DAS.sublabels[idx]
		label.dataJournalIndex 	= nil
		label.dataBingoString 	= nil
		label.dataQuestName		= nil
		label.dataQuestState	= DAS_STATUS_OPEN
		label:SetHidden(true)
	end
	DAS.setFontSize(DAS.sublabels)
	return status
end

function DAS.setLabels(zoneQuests, zoneId)
	zoneId = zoneId or DAS.GetZoneId()
	zoneQuests = zoneQuests or DAS.GetZoneQuests(zoneId)
	labelTexts = {}
	-- p("DAS.setLabels")
	DAS.activeZoneQuests = {}
	numLabels = 1
	local questName
	for index, questNameOrTable in pairs(zoneQuests) do
		if not labelTexts[questNameOrTable] then
		local label = DAS.labels[numLabels] -- despite the name these are actually buttons
			if nil ~= label then
				local status		= DAS_STATUS_OPEN
				visibleButtonIndex	= visibleButtonIndex +1
				label.dataIsSubList	= false
				if type(questNameOrTable) == typeTable then
					label.dataQuestList				= ZO_DeepTableCopy(questNameOrTable, {})
					if label.dataQuestList ~= {} then
						label.dataIsSubList			= true
					end
					label.dataQuestName, status		= setLabelTable(questNameOrTable)
					label.dataQuestState			= status or DAS_STATUS_OPEN
					label.dataTitle					= makeSubLabelTitle(label.dataQuestList[1], zoneId, index) or questName
				else
					label.dataQuestList		= nil
					label.dataTitle			= questNameOrTable
					label.dataQuestName		= questNameOrTable
					label.dataQuestState	= DAS.GetQuestStatus(label.dataQuestName)
				end
				local hideLabel = (DAS.GetHideCompleted() and label.dataQuestState == DAS_STATUS_COMPLETE) or shouldHideLabel(label.dataQuestName, zoneId)
				-- d(zo_strformat("DAS: <<1>> state <<2>>", label.dataQuestName, label.dataQuestState))
				label:SetHidden(hideLabel)
				label.dataJournalIndex 	= DAS.GetLogIndex(label.dataQuestName)
				label.dataBingoString, label.dataBingoIndex = DAS.GetBingoStringFromQuestName(label.dataQuestName)
				label.dataTitle         = label.dataTitle or ""
				if label.dataQuestState == DAS_STATUS_ACTIVE then
					table.insert(DAS.activeZoneQuests, label.dataJournalIndex)
				end
				labelTexts[label.dataQuestName] = true
				setControlText(label, hideLabel)
				numLabels = numLabels + 1
			end -- nil check end
		end
	end -- for loop end
	return numLabels
end
function DAS.RefreshSubLabels(control)
	DasSubList.dataCurrentList = control
	DasSubList:SetHidden(false)
	DAS.SetSubLabels(control.dataQuestList)
end
function DAS.RefreshLabelsWithDelay() zo_callLater(function() DAS.RefreshLabels() end, 500) end
function DAS.RefreshLabels(forceQuestRefresh, forceSkipQuestRefresh)
	if stateIsMinimised or stateIsHidden then return end
	forceQuestRefresh = forceQuestRefresh or DAS.questCacheNeedsRefresh
	--p(string.format("DAS.RefreshLabels(%s, %s)", tostring(forceQuestRefresh), tostring(forceSkipQuestRefresh)))
	setButtonStates()
	local hideCompleted = DAS.GetHideCompleted()
	if not forceSkipQuestRefresh then
		DAS.RefreshQuestLogs(forceQuestRefresh)
		if FOCUSED_QUEST_TRACKER and FOCUSED_QUEST_TRACKER.assistedData then
			DAS.trackedIndex = FOCUSED_QUEST_TRACKER.assistedData.arg1
		end
	end
	local zoneId = DAS.GetZoneId()
	local zoneQuests = DAS.GetZoneQuests(zoneId)
	DAS.setLabels(zoneQuests, zoneId)
	for bIndex=#DAS.GetZoneQuests()+1, #DAS.labels do
		if DAS.labels[bIndex] then
			DAS.labels[bIndex]:SetHidden(true)
		end
	end
	DAS.RefreshFullBingoString()
	DAS.SetLabelFontSize()
end
function DAS.RefreshGui(hidden, skipLabelsRefresh)
	--p(string.format("DAS.RefreshGui(%s, %s)",tostring(hidden),tostring(skipLabelsRefresh)))
	hidden = hidden or stateIsHidden
	if hidden then
		DasControl:SetHidden(hidden)
		return
	end

	local locked = DAS.GetLocked()
	DasHandle:SetMovable(not locked)
	SetLockedButton(locked)

	DasList:SetHidden(stateIsMinimised)
	SetMinimizedButton(stateIsMinimised)

	if nil == skipLabelsRefresh and not stateIsMinimised then
		DAS.RefreshLabelsWithDelay()
	end
end
function DAS.AnchorList()
  DasList:ClearAnchors()
  if DAS.GetUpsideDown() then
    DasList:SetAnchor(BOTTOM, DasHandle, TOP)
    else
    DasList:SetAnchor(TOP, DasHandle, BOTTOM)
  end
  DasSubList:ClearAnchors()
  if DAS.GetSettings().tooltipRight then
    DasSubList:SetAnchor(LEFT, DasList, RIGHT)
    else
    DasSubList:SetAnchor(RIGHT, DasList, LEFT)
  end
end
local function setFontSize(labelList)
	local labelHeight 	= 30
	local fontScale 	= DAS.GetFontSize()
	for _, control in pairs(labelList) do
		if control:IsHidden() then
			control:SetHeight(0)
		else
			control:SetHeight(labelHeight)
			control:SetScale(fontScale)
		end
	end
end
DAS.setFontSize = setFontSize
function DAS.SetLabelFontSize()
  setFontSize(DAS.labels)
  setFontSize(DAS.sublabels)
end
function DAS.CreateGui()
	do
		local predecessor		= DasHeader
		local offsetX, offsetY	= 10, 10
		for i=1, 28 do
			local button 	= WINDOW_MANAGER:CreateControlFromVirtual(string.format("Das_Label%d",i), DasList, "Das_Label")
			button:SetAnchor(TOPLEFT, predecessor, BOTTOMLEFT, 0, offsetY)
			predecessor 	= button
			offsetY 		= 0
			table.insert(DAS.labels, button)
		end
		local spacer = WINDOW_MANAGER:CreateControlFromVirtual("Das_Spacer1", DasList, "DasInvisibleFooterSpacer")
		spacer:SetAnchor(TOPLEFT, predecessor, BOTTOMLEFT, 0, 0)

		predecessor 	    = DasSubList
		offsetY 		    = 10
		local anchor        = TOPLEFT
		for i=1, 15 do
			local button 	= WINDOW_MANAGER:CreateControlFromVirtual(string.format("Das_Sublabel%d",i), DasSubList, "Das_Label")
			button:SetAnchor(TOPLEFT, predecessor, anchor, offsetX, offsetY)
			predecessor	= button
			offsetY		= 0
			offsetX		= 0
			anchor		= BOTTOMLEFT
			table.insert(DAS.sublabels, button)
		end
		spacer = WINDOW_MANAGER:CreateControlFromVirtual("Das_Spacer2", DasSubList, "DasInvisibleFooterSpacer")
		spacer:SetAnchor(TOPLEFT, predecessor, BOTTOMLEFT, 0, 0)

		DAS.SetLabelFontSize()
	end
	DAS.LoadControlLocation(DasControl)
	DAS.AnchorList()
	cacheVisibilityStatus()
	DAS.RefreshGui(nil, true)
	SCENE_MANAGER:GetScene("hud"):RegisterCallback("StateChange", function(oldState, newState)
		if newState == SCENE_SHOWING then
			if alreadyUpdatingLabels then return end
			zo_callLater(function()
				if not stateIsHidden and not stateIsMinimised then setFontSize(DAS.labels) end
				alreadyUpdatingLabels = false
			end, 500)
		end
	end)
end