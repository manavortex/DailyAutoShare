local guiHeight = GuiRoot:GetHeight()
local guiWidth = GuiRoot:GetWidth()
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
    if DAS.GetAutoInvite() then
        return DAS.SpamChat(questNameParam, bingoStringParam)
    end
    if CHAT_SYSTEM.textEntry.editControl:HasFocus() then
		CHAT_SYSTEM.textEntry.editControl:Clear()
	end
    StartChatInput(bingoStringParam, CHAT_CHANNEL_ZONE)
end
local function forceAssist(journalIndex)
    if nil == FOCUSED_QUEST_TRACKER then return end
    FOCUSED_QUEST_TRACKER:ForceAssist(journalIndex)
end
local function shareQuest(journalIndex)
    ShareQuest(journalIndex)
end
local function abandonQuest(journalIndex, questName)
    AbandonQuest(journalIndex)
    DAS.LogQuest(questName, false)
    DAS.questCacheNeedsRefresh = true
    DAS.RefreshLabelsWithDelay()
end
local function toggleQuest(control)
    DAS.ToggleQuest(control)
    DAS.RefreshLabelsWithDelay()
    if control:IsChildOf(DasSubList) and DasSubList.dataCurrentList then
        DAS.RefreshSubLabels(DasSubList.dataCurrentList)
    end
end
local function toggleSubList(control)
	local isHidden = DasSubList:IsHidden()
	if (isHidden) then
		DasSubList.dataCurrentList = control
		DAS.SetSubLabels(control.dataQuestList)
	end
	DasSubList:SetHidden(not isHidden)
	if (isHidden) then
		DAS.setFontSize(DAS.sublabels)
	end
end
function DAS.OnRightClick(control, verbose)
	if nil == control then return end
    local menuShowing = IsMenuVisible() and GetMenuOwner() == control
    ClearMenu()
    if not menuShowing then
        SetMenuSpacing(3)
        SetMenuPad(10)
        SetMenuMinimumWidth(185)
        if nil ~= control.dataQuestList and {} ~= control.dataQuestList then
            AddCustomMenuItem(GetString(DAS_TOGGLE_SUBLIST),
				function() toggleSubList(control) end,
				MENU_ADD_OPTION_LABEL
			)
        else
            if control.dataQuestState ~= DAS_STATUS_COMPLETE then
                AddCustomMenuItem(GetString(DAS_SI_SPAM_SINGLE),
                    function() spamChat(control.dataQuestName, control.dataBingoString) end,
                    MENU_ADD_OPTION_LABEL
                )
            end
            if IsValidQuestIndex(control.dataJournalIndex) then
                AddCustomMenuItem(GetString(DAS_SI_SHARE),
                    function() shareQuest(control.dataJournalIndex) end,
                    MENU_ADD_OPTION_LABEL
                )
                AddCustomMenuItem("* Focus",
                    function() forceAssist(control.dataJournalIndex) end,
                    MENU_ADD_OPTION_LABEL
                )
                AddCustomMenuItem(GetString(DAS_SI_ABANDON),
                    function() abandonQuest(control.dataJournalIndex, control.dataQuestName) end,
                    MENU_ADD_OPTION_LABEL
                )
            else
                local key = (control.dataQuestState == DAS_STATUS_OPEN and DAS_SI_SETOPEN_TRUE) or DAS_SI_SETOPEN_FALSE
                AddCustomMenuItem(GetString(key),
                    function() toggleQuest(control) end,
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