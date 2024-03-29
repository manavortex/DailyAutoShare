local DAS = DailyAutoShare
local function GenerateTooltipText(control)
	local key = control:GetName()
	if     string.match(key, "Invite")	then return GetString((DAS.GetAutoInvite() and DAS_GUI_INVITE_TRUE) or DAS_GUI_INVITE_FALSE)
	elseif string.match(key, "Accept")	then return GetString((DAS.GetAutoAcceptShared() and DAS_GUI_ACCEPT_TRUE) or DAS_GUI_ACCEPT_FALSE)
	elseif string.match(key, "Share")	then return GetString((DAS.GetAutoShare() and DAS_GUI_SHARE_TRUE) or DAS_GUI_SHARE_FALSE)
	elseif string.match(key, "Spam")	then return GetString((DAS.GetAutoInvite() and DAS_GUI_BTN_SPAM) or DAS_GUI_BTN_SPAM_ASK)
	elseif string.match(key, "Donate")	then return GetString(DAS_GUI_BTN_DONATE)
	elseif string.match(key, "Refresh")	then return GetString(DAS_GUI_BTN_REFRESH)
	elseif string.match(key, "Lock")	then return GetString((DAS.GetLocked() and DAS_GUI_BTN_UNLOCK) or DAS_GUI_BTN_LOCK)
	elseif string.match(key, "Hide")	then return GetString(DAS_GUI_BTN_HIDE)
	elseif string.match(key, "Minmax")	then return GetString((DasControl.stateIsMinimised and DAS_GUI_BTN_MAXIMISE) or DAS_GUI_BTN_MINIMISE)
	end
end
local function SetTooltipText(control)
	DailyAutoShare_Tooltip:ClearLines()
	local tooltipText = GenerateTooltipText(control)
    if not tooltipText then return end
	DailyAutoShare_Tooltip:AddLine(tooltipText)
	DailyAutoShare_Tooltip:SetHidden(false)
	return tooltipText
end
function DAS.SetTooltipText(control)
	SetTooltipText(control)
end
local function setTooltipOffset(control)
	local offsetY = control:GetTop() - control:GetParent():GetTop()
	local isTooltipRight = DAS.GetSettings().tooltipRight
	local myAnchorPos 		= (isTooltipRight and TOPLEFT) or TOPRIGHT
	local parentAnchorPos 	= (isTooltipRight and TOPRIGHT) or TOPLEFT
	DailyAutoShare_Tooltip:ClearAnchors()
	DailyAutoShare_Tooltip:SetAnchor(myAnchorPos, control:GetParent(), parentAnchorPos, 0, offsetY)
end
function DAS.CreateControlTooltip(control)
	SetTooltipText(control)
    setTooltipOffset(DasHeader)
end
function DAS.CreateTooltip(control)
	setTooltipOffset(control)
	SetTooltipText(control, isButton)
end
local questStateColors = {
	[DAS_STATUS_COMPLETE] = "89FFE3",
	[DAS_STATUS_OPEN]     = "FFFFFF",
	[DAS_STATUS_ACTIVE]   = "FFFFFF",
}
local dotDotDot = "%.%.%."
local questStates = {
	[DAS_STATUS_COMPLETE] = GetString(DAS_GUI_Q_IS_DONE),
	[DAS_STATUS_OPEN]     = GetString(DAS_GUI_Q_IS_OPEN),
	[DAS_STATUS_ACTIVE]   = GetString(DAS_GUI_Q_IS_ACTIVE),
}
local prequestTipTemplate = GetString(DAS_GUI_Q_PREREQ)
local function getPrequestTooltipData(questName)
    local prequestData = DAS.prequests[questName]
    if not prequestData or DAS.questCompleted(prequestData.prequestId) then return end
    return zo_strformat(prequestTipTemplate, prequestData.prequestName, "DF6C00")
end
local bingoTipTemplate = GetString(DAS_GUI_Q_BINGO)
local questTipTemplate = GetString(DAS_GUI_Q_TIP)
local rightclickTip = "|c9E948B" .. GetString(DAS_GUI_Q_RMB_TIP) .. "|r"
function DAS.CreateLabelTooltip(control)
	setTooltipOffset(control)
	local questName = control.dataTitle or control.dataQuestName
	if nil == questName then return end
	local tooltipText = ""
	if control.dataIsSubList then
		tooltipText = GetString(DAS_GUI_SUBLIST_OPEN)
	else
		local bingoString = control.dataBingoString or ""
		if "" ~= bingoString then
			bingoString = zo_strformat(bingoTipTemplate, bingoString)
		end

		local questState = control.dataQuestState
		if questStates[questState] then
			tooltipText = zo_strformat(questTipTemplate, questName, questStateColors[questState] or "FFFFFF", questStates[questState], bingoString)
		else
			DailyAutoShare_Tooltip:SetHidden(true)
			return
		end
	end
	DailyAutoShare_Tooltip:AddLine(tooltipText)
	if not control.dataIsSubList then
		local prequestText = getPrequestTooltipData(questName)
		if prequestText then
			DailyAutoShare_Tooltip:AddLine(prequestText)
		end
		DailyAutoShare_Tooltip:AddLine(rightclickTip)
	end
	DailyAutoShare_Tooltip:SetHidden(false)
 end
function DAS.HideTooltip(control)
	DailyAutoShare_Tooltip:ClearLines()
	 DailyAutoShare_Tooltip:SetHidden(true)
end