local DAS = DailyAutoShare
local visibilityStateCached = false
local stateIsHidden 		= false
local stateIsMinimised 		= false
local visibleButtonIndex	= 0

local function isHidden()
	return (not DAS.GetActiveIn()) or DAS.GetHidden() or (DAS.GetAutoHide() and (not DAS.OpenDailyPresent()))
end

local function isMinimised()
	return DAS.GetUserMinimised() or (not isHidden()) and (DAS.GetAutoMinimize() and (not DAS.OpenDailyPresent()))
end

local function cacheVisibilityStatus(forceOverride)
	if forceOverride 			then visibilityStateCached = false end
	if visibilityStateCached 	then return end

	stateIsHidden				= isHidden()
	stateIsMinimised			= isMinimised()
	visibilityStateCached 		= true
end
DAS.cacheVisibilityStatus = cacheVisibilityStatus

function DAS.RefreshControl()
	if not DAS.HasActiveDaily() then 
		DAS.SetAutoInvite(false)
	end

	cacheVisibilityStatus(true)
	DasHandle:SetHidden(  stateIsHidden)
	DasControl:SetHidden( stateIsHidden)
	DasList:SetHidden(    stateIsMinimised or stateIsHidden)
	if stateIsMinimised or stateIsHidden then return end
	
	DAS.RefreshLabels(true)
	
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
		DasList_Backdrop:SetEdgeColor(ZO_SELECTED_TEXT:UnpackRGBA())
	else
		DasButtonInvite:SetAlpha(0.5)
		DasButtonInvite:SetNormalTexture("/DailyAutoShare/textures/invite_up.dds")
		DasList_Backdrop:SetEdgeColor(ZO_DEFAULT_TEXT:UnpackRGBA())
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
	local upsideDown = DAS.GetUpsideDown()
	local minimizedTex = "DailyAutoShare/textures/" .. tostring((upsideDown and "up") or "down")
	local maximizedTex = "DailyAutoShare/textures/"  .. tostring((upsideDown and "down") or "up")
	local tex = (value and minimizedTex) or maximizedTex
	DasButtonMinmax:SetNormalTexture(tex.. "_up.dds")
	DasButtonMinmax:SetMouseOverTexture(tex.. "_over.dds")
	DasButtonMinmax:SetPressedTexture(tex.. "_down.dds")
	
end

function DAS.QuestButtonClicked(control, mouseButton)
	local journalIndex = control["dataJournalIndex"]
	local isValidJournalIndex = IsValidQuestIndex(journalIndex)
	
	if mouseButton == MOUSE_BUTTON_INDEX_LEFT and isValidJournalIndex then
		
		ShareQuest(journalIndex)
		
	elseif mouseButton == MOUSE_BUTTON_INDEX_RIGHT then -- and isValidJournalIndex then
		DAS.OnRightClick(control)	
	end	
end

local function setButtonStates()
	SetAutoInviteButton(DAS.GetAutoInvite())
	SetLockedButton(DAS.GetLocked())

	SetAlpha(DasButtonAccept, DAS.GetAutoAcceptShared())
	SetAlpha(DasButtonShare, DAS.GetAutoShare())
	
	DasButtonSpam:SetAlpha(0.7)
end
function DAS.SetButtonStates()
	return setButtonStates()
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

local function shouldHideLabel(questName, questList, zoneId)
	if (nil == questList) then return false end
	zoneId = zoneId or DAS.GetZoneId()
	
	for questListName, questListData in pairs(questList) do 
		if questListData[questName] then 			
			return  ( 
				(not DAS.GetQuestListItem(zoneId, questListName, "active")) or
				DAS.GetQuestListItem(zoneId, questListName, "invisible"))	
		end
	end
	return false
end

function DAS.RefreshLabels(forceQuestRefresh, forceSkipQuestRefresh)
	cacheVisibilityStatus(true)
	setButtonStates()
	
	local trackedIndex = 0
	if QUEST_TRACKER and QUEST_TRACKER.assistedData then
		trackedIndex = QUEST_TRACKER.assistedData.arg1
	end
	
	local buttonIndex = 1
	
	local hideCompleted = DAS.GetHideCompleted()
	local hidden 		= DasList:IsHidden()
	local label, questIndex, tracked
	if not forceSkipQuestRefresh then 
		DAS.RefreshQuestLogs(forceQuestRefresh)
	end
	local zoneId = DAS.GetZoneId()
	local questList = DAS.QuestLists[zoneId]
	for index, questName in pairs(DAS.GetZoneQuests()) do
		label = DAS.labels[buttonIndex] -- despite the name these are actually buttons
		
		if nil ~= label then	
			local status 	= DAS.GetQuestStatus(questName, questList, zoneId)
			local hideLabel = hidden or (hideCompleted and status == DAS_STATUS_COMPLETE) or shouldHideLabel(questName, questList, zoneId)
			-- d(zo_strformat("DAS: <<1>> shoud be hidden <<2>>", questName, tostring(hideLabel)))
			if hideLabel then
				label:SetHidden(true)
				label:SetText("")
			else
				label:SetHidden(false)				
				visibleButtonIndex 			= visibleButtonIndex +1
				-- d( tostring(status) .. " - " .. tostring(questName))
				label["dataJournalIndex"] 	= DAS.GetLogIndex(questName)
				label["dataBingoString"] 	= DAS.GetBingoStringFromQuestName(questName)
				label["dataQuestName"] 		= questName
				label["dataQuestState"] 	= status
				if label.dataJournalIndex == trackedIndex then
					label:SetText("* " .. questName)
				else
					label:SetText(questName)
				end				
				if status == DAS_STATUS_COMPLETE then
					label:SetState(BSTATE_DISABLED)
				elseif status == DAS_STATUS_ACTIVE then 
					label:SetState(BSTATE_PRESSED)							
				elseif status == DAS_STATUS_OPEN then
					label:SetState(BSTATE_NORMAL)
				end					
			end
			buttonIndex = buttonIndex+1
		end -- nil check end
		
	end -- for loop end
	

	for buttonIndex=#DAS.GetZoneQuests()+1, #DAS.labels do
		if DAS.labels[buttonIndex] then
			DAS.labels[buttonIndex]:SetHidden(true)
            DAS.labels[buttonIndex]:SetText("")
		end	
	end
	
	DAS.SetLabelFontSize()
end

function DAS.RefreshGui(hidden)
	hidden = hidden or (not DAS.GetActiveIn()) or DAS.GetHidden() or (DAS.GetAutoHide() and not DAS.OpenDailyPresent())
	local minmaxed = stateIsMinimised
	SetMinimizedButton(minmaxed)
	DasList:SetHidden(minmaxed)
	DasControl:SetHidden(hidden)	
	DasHandle:SetMovable(not DAS.GetLocked())
	DAS.RefreshLabels()
end

function DAS.AnchorList()
	DasList:ClearAnchors()
	if DAS.GetUpsideDown() then
		DasList:SetAnchor(BOTTOM, DasHandle, TOP)
	else
		DasList:SetAnchor(TOP, DasHandle, BOTTOM)
	end
end

function DAS.SetupGuiLabels()
	
	local predecessor 	= DasHeader	
	local offsetY 		= 10
	
	DAS.labels = {}
	for i=1, 28 do
		local button 	= WINDOW_MANAGER:CreateControlFromVirtual("Das_Label_"..tostring(i), DasList, "Das_Label")
		button:SetAnchor(TOPLEFT, predecessor, BOTTOMLEFT, 0, offsetY)
		predecessor 	= button
		offsetY 		= 0
		
		table.insert(DAS.labels, button)
	end
	
end
function DAS.SetLabelFontSize()

	local numLabels 	= 0
	local labelHeight 	= nil
	local fontScale 	= DAS.GetFontSize()
	
	local totalHeight 	= 0
	local hidden		= false
	
	for index, control in pairs(DAS.labels) do		
		control:SetScale(fontScale)
		if control:IsHidden() then
			control:SetHeight(0)
		else
			control:SetHeight(30)
			numLabels = numLabels + 1
			labelHeight = labelHeight or control:GetHeight()
			totalHeight = totalHeight + labelHeight
		end

	end	
	
	totalHeight = totalHeight + DasHeader:GetHeight() + (labelHeight or 1)*1.5
	DasList:SetHeight(totalHeight)
	
	DasControl:SetHeight(DasList:GetHeight() + DasHandle:GetHeight())
	
end


function DAS.CreateGui()

	DailyAutoShare.SetupGuiLabels()
	DAS.LoadControlLocation(DasControl)
	-- DAS.LoadControlLocation(DasButton)
	
	DailyAutoShare.AnchorList()	
	SetMinimizedButton(DAS.GetMinimized())
	
	DailyAutoShare.RefreshGui()
	zo_callLater(function() DAS.SetLabelFontSize() end, 2000)
end

