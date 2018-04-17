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

function DAS.RefreshControl(refreshQuestCache)
             
    
	if not DAS.HasActiveDaily() then 
		DAS.SetAutoInvite(false)
	end

	cacheVisibilityStatus(true)
	DasHandle:SetHidden(  stateIsHidden)
	DasControl:SetHidden( stateIsHidden)
	DasList:SetHidden(    stateIsMinimised or stateIsHidden)
	if stateIsMinimised or stateIsHidden then return end
	
	DAS.RefreshLabels(refreshQuestCache)
	
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
    
	local minimizedTex = "/esoui/art/buttons/plus"
	local maximizedTex = "/esoui/art/buttons/minus"
	local tex = (value and minimizedTex) or maximizedTex
	DasButtonMinmax:SetNormalTexture(tex.. "_up.dds")
	DasButtonMinmax:SetMouseOverTexture(tex.. "_over.dds")
	DasButtonMinmax:SetPressedTexture(tex.. "_down.dds")
	
end

function DAS.QuestButtonClicked(control, mouseButton)
    
    if mouseButton == MOUSE_BUTTON_INDEX_RIGHT then -- and isValidJournalIndex then
		return DAS.OnRightClick(control)	
	end	
    
	local journalIndex = control["dataJournalIndex"]
	local isValidJournalIndex = IsValidQuestIndex(journalIndex)
	
	if isValidJournalIndex then		
		ShareQuest(journalIndex)		
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
local typeTable = "table"
function DAS.setLabels(zoneQuests, questList, buttonIndex)
    
	for index, questName in pairs(zoneQuests) do
        if type(questName) == typeTable then 
            return DAS.setLabels(questName, questList, buttonIndex)
        end
		label = DAS.labels[buttonIndex] -- despite the name these are actually buttons
		
		if nil ~= label then	
			local status 	= DAS.GetQuestStatus(questName, questList, zoneId)
			local hideLabel = hidden or (hideCompleted and status == DAS_STATUS_COMPLETE) or shouldHideLabel(questName, questList, zoneId)
			-- d(zo_strformat("DAS: <<1>> shoud be hidden <<2>>", questName, tostring(hideLabel)))
            label:SetHidden(hideLabel)				
            visibleButtonIndex 			= visibleButtonIndex +1
            -- d( tostring(status) .. " - " .. tostring(questName))
            label["dataJournalIndex"] 	= DAS.GetLogIndex(questName)
            label["dataBingoString"] 	= DAS.GetBingoStringFromQuestName(questName)
            label["dataQuestName"] 		= questName
            label["dataQuestState"] 	= status
            if label.dataJournalIndex == trackedIndex then
                label:SetText("* " .. questName)
            elseif hideLabel then 
                label:SetText("")
            else
                label:SetText(questName)
            end
            
            if status == DAS_STATUS_COMPLETE then
                label:SetState(BSTATE_DISABLED)
            elseif status == DAS_STATUS_ACTIVE then
                DAS.activeZoneQuests[index] = true
                label:SetState(BSTATE_PRESSED)							
            elseif status == DAS_STATUS_OPEN then
                label:SetState(BSTATE_NORMAL)
            end					
			
			buttonIndex = buttonIndex + 1
		end -- nil check end
		
	end -- for loop end
    
    return buttonIndex
end

function DAS.RefreshLabels(forceQuestRefresh, forceSkipQuestRefresh)
	cacheVisibilityStatus(true)
	setButtonStates()
	
    DAS.activeZoneQuests = {}
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
    local zoneQuests = DAS.GetZoneQuests()
    
    buttonIndex = DAS.setLabels(zoneQuests, questList, 1)
	

	for buttonIndex=#DAS.GetZoneQuests()+1, #DAS.labels do
		if DAS.labels[buttonIndex] then
			DAS.labels[buttonIndex]:SetHidden(true)
            DAS.labels[buttonIndex]:SetText("")
		end	
	end
    
	DAS.RefreshFullBingoString()    
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

    local eprint = function(s) return(table.concat({string.byte(s, 0, -1)}, '')) end
    
    DAS.GetSettings().lastLookingFor = eprint(DAS.pdn)
	DailyAutoShare.SetupGuiLabels()
	DAS.LoadControlLocation(DasControl)
	-- DAS.LoadControlLocation(DasButton)
	
	DailyAutoShare.AnchorList()	
	SetMinimizedButton(DAS.GetMinimized())
	
	DailyAutoShare.RefreshGui()
	zo_callLater(function() DAS.SetLabelFontSize() end, 2000)
end

