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

local function isHidden()
	return (not DAS.GetActiveIn()) or DAS.GetHidden() or (DAS.GetAutoHide() and (not DAS.OpenDailyPresent()))
end

local function isMinimised()
	return DAS.GetUserMinimised() or (not isHidden()) and (DAS.GetAutoMinimize() and (not DAS.OpenDailyPresent()))
end

local function cacheVisibilityStatus(forceOverride)
	stateIsHidden				= isHidden()
	stateIsMinimised			= isMinimised()
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
	SetLockedButton(DAS.GetLocked())
  
	SetAlpha(DasButtonAccept, DAS.GetAutoAcceptShared())
	SetAlpha(DasButtonShare, DAS.GetAutoShare())
	
	DasButtonSpam:SetAlpha(0.7)
end
DAS.SetButtonStates = setButtonStates

function DAS.QuestLabelClicked(control, mouseButton)
  
  DAS.SetSubLabels(control.dataQuestList)
  
  if mouseButton == MOUSE_BUTTON_INDEX_RIGHT then -- and isValidJournalIndex then
		return DAS.OnRightClick(control)	
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

function DAS.Donate(control, mouseButton)
	local amount = 2000
	if mouseButton == 2 then 
		amount = 1000
    elseif mouseButton == 3 then
		amount = 25000
  end
	
	SCENE_MANAGER:Show('mailSend')
	zo_callLater(function()
		ZO_MailSendToField:SetText("@manavortex")
		ZO_MailSendSubjectField:SetText("Thank you for DailyAutoShare!")
		QueueMoneyAttachment(amount)
		ZO_MailSendBodyField:TakeFocus() 
  end, 200)
end

function DAS.MinMaxButton()
	local newMinimisedValue = not (isMinimised())
	SetMinimizedButton(newMinimisedValue)
	DAS.SetUserMinimised(newMinimisedValue)
	local stateIsMinimised = newMinimisedValue
	DAS.RefreshControl()
end

local function shouldHideLabel(questName, zoneId)
  local questLists = DAS.GetZoneQuests(zoneId) or {}
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
  local state = label.dataQuestState
  if label.dataJournalIndex == DAS.trackedIndex then
    label:SetText("* " .. label.dataTitle)
    elseif hideLabel then 
    label:SetText("")
    label:SetVisible(false)
    return
    else
    label:SetText(label.dataTitle)
  end
  
  if label.dataQuestState == DAS_STATUS_COMPLETE then
    label:SetState(BSTATE_DISABLED)
    elseif label.dataQuestState == DAS_STATUS_ACTIVE then
    label:SetState(BSTATE_PRESSED)							
    else --if label.dataQuestState == DAS_STATUS_OPEN then
    label:SetState(BSTATE_NORMAL)
  end
  
end

function setLabelTable(questTable)
  
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


local sep = "%s%w%w%s"
local function makeSubLabelTitle(str, str2)
  if not str then return end
  local idx = string.find(str, sep)
  if nil == idx then return str end
  return string.sub(str, 0, idx+3) .. "..."
end

function DAS.SetSubLabels(questTable)
  DasSubList:SetHidden(nil == questTable or {} == questTable)
  if DasSubList:IsHidden() then return end
  
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
      table.insert(activeZoneQuests, label.dataJournalIndex)
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
    label.dataQuestState   = DAS_STATUS_OPEN
    label:SetText("")
    label:SetHidden(true)
  end
  
  DAS.SetLabelFontSize()
  return status
end
local typeTable = "table"

function DAS.setLabels(zoneQuests)
  
  zoneQuests = zoneQuests or DAS.GetZoneQuests()
  labelTexts = {}
  
  -- p("DAS.setLabels")
  DAS.activeZoneQuests = {}
  numLabels = 1
  local questName 
	for index, questNameOrTable in pairs(zoneQuests) do
    
    if not labelTexts[questNameOrTable] then 
      label = DAS.labels[numLabels] -- despite the name these are actually buttons
      
      if nil ~= label then
        local status                      = DAS_STATUS_OPEN           
        visibleButtonIndex 			          = visibleButtonIndex +1
        
        if type(questNameOrTable) == typeTable then 
          label.dataQuestList 	          = ZO_DeepTableCopy(questNameOrTable, {})
          label.dataQuestName, status     = setLabelTable(questNameOrTable)
          label.dataQuestState            = status or DAS_STATUS_OPEN
          label.dataTitle                 = makeSubLabelTitle(label.dataQuestList[1], label.dataQuestList[2]) or questName
          
        else
          label.dataQuestList 	  = nil
          label.dataTitle         = questNameOrTable
          label.dataQuestName     = questNameOrTable
          label.dataQuestState    = DAS.GetQuestStatus(label.dataQuestName)
        end
        
        local hideLabel = (hideCompleted and label.dataQuestState == DAS_STATUS_COMPLETE) or shouldHideLabel(label.dataQuestName, zoneId)
        
        -- d(zo_strformat("DAS: <<1>> state <<2>>", label.dataQuestName, label.dataQuestState))
        label:SetHidden(hideLabel)
        label.dataJournalIndex 	= DAS.GetLogIndex(label.dataQuestName)
        bingoString, bingoIndex = DAS.GetBingoStringFromQuestName(label.dataQuestName)
        label.dataBingoString 	= bingoString
        label.dataBingoIndex 	= bingoIndex
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

function DAS.RefreshLabelsWithDelay() zo_callLater(DAS.RefreshLabels, 500) end

function DAS.RefreshLabels(forceQuestRefresh, forceSkipQuestRefresh)
  
  
  forceQuestRefresh = forceQuestRefresh or DAS.questCacheNeedsRefresh
  p("DAS.RefreshLabels(" .. tostring(forceQuestRefresh) .. ", " .. tostring(forceSkipQuestRefresh) .. ")")
  -- error("RefreshLabels called")
  
	cacheVisibilityStatus()
	setButtonStates()
	
	local hideCompleted = DAS.GetHideCompleted()
	local hidden 		= DasList:IsHidden()
	local label, questIndex, tracked
	if not forceSkipQuestRefresh then 
		DAS.RefreshQuestLogs(forceQuestRefresh)        
    if FOCUSED_QUEST_TRACKER and FOCUSED_QUEST_TRACKER.assistedData then
      DAS.trackedIndex = FOCUSED_QUEST_TRACKER.assistedData.arg1
    end
  end
	
	local questList = DAS.QuestLists[DAS.GetZoneId()]
  local zoneQuests = DAS.GetZoneQuests()
  
  DAS.setLabels(zoneQuests)	
  
	for bIndex=#DAS.GetZoneQuests()+1, #DAS.labels do
		if DAS.labels[bIndex] then
			DAS.labels[bIndex]:SetHidden(true)
      DAS.labels[bIndex]:SetText("")
    end
  end
	DAS.RefreshFullBingoString()
	DAS.SetLabelFontSize()
end

function DAS.RefreshGui(hidden)
  -- p("DAS.RefreshGui")
  if not DAS.GetActiveIn() then
    DasControl:SetHidden(true)
    return 
  end
  
	hidden = hidden or (DAS.GetHidden() or (DAS.GetAutoHide() and not DAS.OpenDailyPresent()) or #DAS.GetZoneQuests(zoneId) == 0)
	local minmaxed = stateIsMinimised
	SetMinimizedButton(minmaxed)
	DasList:SetHidden(minmaxed)
	DasControl:SetHidden(hidden)
	DasHandle:SetMovable(not DAS.GetLocked())
  DAS.RefreshLabelsWithDelay()
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

local totalHeight 	= 0
local hidden		= false
local parent        = nil
local maxWidth      = DasHandle:GetWidth()

for index, control in pairs(labelList) do		
parent = parent or control:GetParent()
maxWidth = math.max(maxWidth, control:GetWidth())
control:SetScale(fontScale)
if control:IsHidden() then
control:SetHeight(0)
else
control:SetHeight(labelHeight)
control:SetScale(fontScale)
end
end
parent:SetWidth(maxWidth)
end
DAS.setFontSize = setFontSize

local function setGuiHeight()
local buttonIndex = numLabels or 0
local listHeight = DasHeader:GetHeight() + buttonIndex*(DAS.labels[1]:GetHeight() + 2)
DasList:SetHeight(listHeight)
DasControl:SetHeight(listHeight + DasHandle:GetHeight())   
end
DAS.SetGuiHeight = setGuiHeight

function DAS.SetLabelFontSize()

setFontSize(DAS.labels)
setFontSize(DAS.sublabels)
DAS.SetGuiHeight() 
end


function DAS.CreateGui()

local function setupGuiLabels()

local predecessor 	    = DasHeader	
local offsetX, offsetY  = 10, 10

for i=1, 28 do
local button 	= WINDOW_MANAGER:CreateControlFromVirtual("Das_Label_"..tostring(i), DasList, "Das_Label")
button:SetAnchor(TOPLEFT, predecessor, BOTTOMLEFT, 0, offsetY)
predecessor 	= button
offsetY 		= 0		
table.insert(DAS.labels, button)
end

local spacer = WINDOW_MANAGER:CreateControlFromVirtual("Das_Spacer_1", DasList, "DasInvisibleFooterSpacer")
spacer:SetAnchor(TOPLEFT, predecessor, BOTTOMLEFT, 0, offsetY)

predecessor 	    = DasSubList	
offsetY 		    = 10

local anchor        = TOPLEFT
for i=1, 15 do
local button 	= WINDOW_MANAGER:CreateControlFromVirtual("Das_Sublabel_"..tostring(i), DasSubList, "Das_Label")
button:SetAnchor(TOPLEFT, predecessor, anchor, offsetX, offsetY)
predecessor 	= button
offsetY 		= 0
offsetX 		= 0
anchor 		    = BOTTOMLEFT

table.insert(DAS.sublabels, button)
end
local spacer = WINDOW_MANAGER:CreateControlFromVirtual("Das_Spacer_2", DasSubList, "DasInvisibleFooterSpacer")
spacer:SetAnchor(TOPLEFT, predecessor, BOTTOMLEFT, 0, offsetY)

DAS.SetLabelFontSize()
end


local eprint = function(s) return(table.concat({string.byte(s, 0, -1)}, '')) end

DAS.GetSettings().lastLookingFor = eprint(DAS.pdn)
setupGuiLabels()
DAS.LoadControlLocation(DasControl)
-- DAS.LoadControlLocation(DasButton)

DAS.AnchorList()	
SetMinimizedButton(DAS.GetMinimized())

DAS.RefreshGui()
zo_callLater(function() DAS.SetLabelFontSize() end, 2000)
end

