local guiHeight = GuiRoot:GetHeight()
local guiWidth = GuiRoot:GetWidth()

local function getAnchorPos(control)
	local menuWidth 	= ZO_Menu:GetWidth()
	local menuHeight 	= ZO_Menu:GetWidth()
	
	local controlRight 	= control:GetRight()
	local controlLeft 	= control:GetLeft()
	local controlTop 	= control:GetTop()
	
	local isTooHigh = (controlTop + menuHeight) >= guiHeight	
	
	if DAS.GetTooltipRight() then 
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

function DAS.OnRightClick(control, verbose)
	
	if nil == control then return end
	local questName 	= control.dataQuestName
	local journalIndex 	= control.dataJournalIndex
	local bingoString 	= control.dataBingoString
	
	
    local menuShowing = IsMenuVisisble() and GetMenuOwner() == control
    ClearMenu()

    if not menuShowing then
        SetMenuSpacing(3)
        SetMenuPad(10)
        SetMenuMinimumWidth(185)
		if control.dataQuestState ~= DAS_STATUS_COMPLETE then
			AddCustomMenuItem(GetString(DAS_SI_SPAM_SINGLE), 
				function() 
					DAS.SpamChat(nil, questName)
				end, 
				MENU_ADD_OPTION_LABEL
			)
		end	
		AddCustomMenuItem(GetString(DAS_SI_SPAM_VERBOSE), 
			function() 
					DAS.SpamChat(true, questName)
				end, 
				MENU_ADD_OPTION_LABEL
		)
		if IsValidQuestIndex(control.dataJournalIndex) then
			AddCustomMenuItem(GetString(DAS_SI_SHARE), 
				function() ShareQuest(journalIndex) end, 
				MENU_ADD_OPTION_LABEL
			)
			AddCustomMenuItem("* Focus", 
				function() 
					QUEST_TRACKER:ForceAssist(journalIndex) 
					DAS.RefreshLabels(false, true)
				end, 
				MENU_ADD_OPTION_LABEL
			)			
			AddCustomMenuItem(GetString(DAS_SI_ABANDON), 
				function() 
					AbandonQuest(journalIndex)
					DAS.LogQuest(questName, false)
					DAS.RefreshLabels(true)
				end, 
				MENU_ADD_OPTION_LABEL
			)	
		else
			local key = (control.dataQuestState == DAS_STATUS_OPEN and DAS_SI_SETOPEN_TRUE) or DAS_SI_SETOPEN_FALSE
			AddCustomMenuItem(GetString(key), 
				function() DAS.ToggleQuest(control) end, 
				MENU_ADD_OPTION_LABEL
			)
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