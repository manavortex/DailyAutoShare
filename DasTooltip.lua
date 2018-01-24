local DAS = DailyAutoShare

local function GenerateTooltipText(control)
	
	local key = control:GetName()
	
	if 	DAS.IsMatch(key, "Invite")		then return GetString((DAS.GetAutoInvite() and DAS_SI_INVITE_TRUE) or DAS_SI_INVITE_FALSE)
	elseif DAS.IsMatch(key, "Accept")	then return GetString((DAS.GetAutoAcceptShared() and DAS_SI_ACCEPT_TRUE) or DAS_SI_ACCEPT_FALSE)
	elseif DAS.IsMatch(key, "Share") 	then return GetString((DAS.GetAutoShare() and DAS_SI_SHARE_TRUE) or DAS_SI_SHARE_FALSE)	
	elseif DAS.IsMatch(key, "Spam") 	then return GetString(DAS_SI_SPAM)
	elseif DAS.IsMatch(key, "Donate") 	then return GetString(DAS_SI_DONATE) 	
	elseif DAS.IsMatch(key, "Refresh") 	then return GetString(DAS_SI_REFRESH)  
	end	
	
end 


local function SetTooltipText(control)
	
	DailyAutoShare_Tooltip:ClearLines() 
	local tooltipText = GenerateTooltipText(control)	
	DailyAutoShare_Tooltip:AddLine(tooltipText)
	DailyAutoShare_Tooltip:SetHidden(false)
	
	return tooltipText
end
function DAS.SetTooltipText(control)
	SetTooltipText(control)
end

function DAS.CreateControlTooltip(control)
	
	DailyAutoShare_Tooltip:ClearAnchors()
	DailyAutoShare_Tooltip:SetAnchor(BOTTOM, DasList, TOP)
	
	SetTooltipText(control)
	
end

local function setTooltipOffset(control)
	local offsetY = control:GetTop() - DasList:GetTop()
	local isTooltipRight = DAS.GetTooltipRight()
	-- d(tostring(control:GetTop()) .. " / " .. tostring(DasList:GetTop()))
	local myAnchorPos 		= (isTooltipRight and TOPLEFT) or TOPRIGHT
	local parentAnchorPos 	= (isTooltipRight and TOPRIGHT) or TOPLEFT 
	
	DailyAutoShare_Tooltip:ClearAnchors()	
	DailyAutoShare_Tooltip:SetAnchor(myAnchorPos, DasList, parentAnchorPos, 0, offsetY)
end

function DAS.CreateTooltip(control)
	
	setTooltipOffset(control)
	
	SetTooltipText(control, isButton)
	
 end
 
function DAS.CreateLabelTooltip(control)
	
	setTooltipOffset(control)
	local tooltipText = ""
	local questName = control["dataQuestName"]
	local state = DAS.GetCompleted(questName)		
	if control["dataQuestState"] == DAS_STATUS_COMPLETE then 
		tooltipText = (questName .. " completed today with " .. GetUnitName('player'))
	else
		local bingoString = control["dataBingoString"] or ""
		local bingoTooltip = (bingoString ~= "" and "\n The bingo code is " .. bingoString) or ""
		local status = (( control["dataQuestState"] == DAS_STATUS_ACTIVE and " is acive") or " still open")
		tooltipText = (questName .. status .. bingoTooltip)
	end
	DailyAutoShare_Tooltip:AddLine(tooltipText)
	DailyAutoShare_Tooltip:SetHidden(false)
	
 end
 
function DAS.HideTooltip(control)
	DailyAutoShare_Tooltip:ClearLines()
	 DailyAutoShare_Tooltip:SetHidden(true)
	 -- DAS.RefreshLabels()
end