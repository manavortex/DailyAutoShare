local DAS = DailyAutoShare

local function GenerateTooltipText(control)
	
	local key = control:GetName()
	
	if 	    string.match(key, "Invite")	then return GetString((DAS.GetAutoInvite() and DAS_SI_INVITE_TRUE) or DAS_SI_INVITE_FALSE)
	elseif string.match(key, "Accept")	then return GetString((DAS.GetAutoAcceptShared() and DAS_SI_ACCEPT_TRUE) or DAS_SI_ACCEPT_FALSE)
	elseif string.match(key, "Share") 	then return GetString((DAS.GetAutoShare() and DAS_SI_SHARE_TRUE) or DAS_SI_SHARE_FALSE)	
	elseif string.match(key, "Spam") 	then return GetString(DAS_SI_SPAM)
	elseif string.match(key, "Donate") 	then return GetString(DAS_SI_DONATE) 	
	elseif string.match(key, "Refresh") then return GetString(DAS_SI_REFRESH)  
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
    [DAS_STATUS_ACTIVE]     = ZO_HIGHLIGHT_TEXT:UnpackRGBA(),
    [DAS_STATUS_OPEN]       = ZO_NORMAL_TEXT:UnpackRGBA(),
    [DAS_STATUS_COMPLETE]   = ZO_DISABLED_TEXT:UnpackRGBA(),
}

local dotDotDot = "%.%.%."

local questStates = {
    [DAS_STATUS_COMPLETE]   = " completed today",
    [DAS_STATUS_ACTIVE]     = " is acive",
    [DAS_STATUS_OPEN]       = " still open",
}

local prequestString    = GetString(DAS_SI_PREQUEST)
local completedString   = GetString(DAS_SI_COMPLETED)
local openString        = GetString(DAS_SI_OPEN)
local questCompleted    = DAS.questCompleted
    

local function getPrequestTooltipData(questName)
    local prequestData = DAS.prequests[questName]
    if not prequestData then return end
    local prequestStatus = (questCompleted(prequestData.prequestId) and completedString) or openString
    return zo_strformat(prequestString, prequestData.prequestName, prequestStatus)
end

local bingoCodeIs = GetString(DAS_BINGO_CODE_IS)
function DAS.CreateLabelTooltip(control)	
   
	setTooltipOffset(control)
	local tooltipText = ""
   
    local questName = control.dataTitle or control.dataQuestName
    
    if nil == questName then return end
    if nil ~= questName:find(dotDotDot) then 
        tooltipText = GetString(DAS_TOGGLE_SUBLIST)
    else
        local bingoString = control.dataBingoString or ""
        local questState = control.dataQuestState
        if questState == DAS_STATUS_COMPLETE then 
            tooltipText = bingoString .. questStates[questState]
        elseif DAS_STATUS_ACTIVE == questState or DAS_STATUS_OPEN == questState then
            tooltipText = (questName .. questStates[questState] .. bingoCodeIs .. bingoString)
        else
            DailyAutoShare_Tooltip:SetHidden(true)
            return
        end
    end
    
	DailyAutoShare_Tooltip:AddLine(tooltipText)
	DailyAutoShare_Tooltip:AddLine(getPrequestTooltipData(questName))
	DailyAutoShare_Tooltip:SetHidden(false)
	
 end
 
function DAS.HideTooltip(control)
	DailyAutoShare_Tooltip:ClearLines()
	 DailyAutoShare_Tooltip:SetHidden(true)
	 -- DAS.RefreshLabels()
end