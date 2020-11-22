local guiHeight = GuiRoot:GetHeight()
local guiWidth = GuiRoot:GetWidth()
local questName, journalIndex, bingoString, currentControl
local function getAnchorPos(control)
	local menuWidth 	= ZO_Menu:GetWidth()
	local menuHeight 	= ZO_Menu:GetWidth()
	local controlRight 	= control:GetRight()
	local controlLeft 	= control:GetLeft()
	local controlTop 	= control:GetTop()
	local isTooHigh = (controlTop + menuHeight) >= guiHeight
	if DAS.GetSettings().tooltipRight then
		if (controlRight + menuWidth) >= guiWidth then
			if isTooHigh then return BOTTOMRIGHT, TOPLEFT end
			return TOPRIGHT, TOPLEFT
		end
	else
		if (controlLeft - menuHeight) <= 0 then
			if isTooHigh then return  TOPLEFT, TOPRIGHT end
			return	TOPRIGHT, TOPLEFT
		end
	end
	return	TOPLEFT, TOPRIGHT
end
local function spamChat(questNameParam, bingoStringParam)
    if CHAT_SYSTEM.textEntry.editControl:HasFocus() then
		CHAT_SYSTEM.textEntry.editControl:Clear()
	end
    local chatInputString = bingoStringParam or bingoString
    if DAS.GetAutoInvite() then
        chatInputString = zo_strformat(DAS.GetSettings().questShareString, questNames, bingoString)
    end
    StartChatInput(chatInputString, CHAT_CHANNEL_ZONE)
end
local function forceAssist()
    if nil == FOCUSED_QUEST_TRACKER then return end
    FOCUSED_QUEST_TRACKER:ForceAssist(journalIndex)
end
local function shareQuest()
    ShareQuest(journalIndex)
end
local function abandonQuest()
    AbandonQuest(journalIndex)
    DAS.LogQuest(questName, false)
    DAS.questCacheNeedsRefresh = true
    DAS.RefreshLabelsWithDelay()
end
local function toggleQuest()
    DAS.ToggleQuest(currentControl)
    DAS.RefreshLabelsWithDelay()
end
local function toggleSubList()
    DasSubList:SetHidden(not DasSubList:IsHidden())
end
function DAS.OnRightClick(control, verbose)
	if nil == control then return end
	questName     = control.dataQuestName
	journalIndex 	= control.dataJournalIndex
	bingoString 	= control.dataBingoString
	currentControl  = control
    local menuShowing = IsMenuVisible() and GetMenuOwner() == control
    ClearMenu()
    if not menuShowing then
        SetMenuSpacing(3)
        SetMenuPad(10)
        SetMenuMinimumWidth(185)
        if nil ~= control.dataQuestList then
            AddCustomMenuItem(GetString(DAS_TOGGLE_SUBLIST),
				toggleSubList,
				MENU_ADD_OPTION_LABEL
			)
        else
            if control.dataQuestState ~= DAS_STATUS_COMPLETE then
                AddCustomMenuItem(GetString(DAS_SI_SPAM_SINGLE),
                    spamChat,
                    MENU_ADD_OPTION_LABEL
                )
            end
            if IsValidQuestIndex(control.dataJournalIndex) then
                AddCustomMenuItem(GetString(DAS_SI_SHARE),
                    shareQuest,
                    MENU_ADD_OPTION_LABEL
                )
                AddCustomMenuItem("* Focus",
                    forceAssist,
                    MENU_ADD_OPTION_LABEL
                )
                AddCustomMenuItem(GetString(DAS_SI_ABANDON),
                    abandonQuest,
                    MENU_ADD_OPTION_LABEL
                )
            else
                local key = (control.dataQuestState == DAS_STATUS_OPEN and DAS_SI_SETOPEN_TRUE) or DAS_SI_SETOPEN_FALSE
                AddCustomMenuItem(GetString(key),
                    toggleQuest,
                    MENU_ADD_OPTION_LABEL
                )
            end
        end
		local myAnchor, parentAnchor = getAnchorPos(control)
        ZO_Menu:ClearAnchors()
        ZO_Menu:SetAnchor(myAnchor, control, parentAnchor, 0, 3)
		ShowMenu(control)
	end
end
function DAS.InitRightclickMenu()
	DAS_LinkHandlerBackup_OnLinkMouseUp = ZO_LinkHandler_OnLinkMouseUp
	ZO_LinkHandler_OnLinkMouseUp = function(itemLink, button, control) DAS_HandleClickEvent(itemLink, button, control) end
	ZO_PreHook('ZO_InventorySlot_OnMouseEnter', DAS_HandleMouseEnter)
	ZO_PreHook('ZO_InventorySlot_ShowContextMenu', function(rowControl) DAS_HandleInventoryContextMenu(rowControl) end)
end