local DAS = DailyAutoShare
local p = DAS.debug

DAS.festivals = {
	[19 ] = "newLife",
	[41 ] = "newLife",
	[117] = "newLife",
	[104] = "newLife",
	[383] = "newLife",
	[382] = "newLife",
	[535] = "newLife",
	[381] = "newLife",
}


function DAS.GetZoneId() return GetZoneId(GetUnitZoneIndex(UNITTAG_PLAYER)) or 0 end
function PrintZoneId() d(GetZoneId(GetUnitZoneIndex(UNITTAG_PLAYER))) end

function DAS.GetZoneQuests(zoneId)
	zoneId = zoneId or DAS.GetZoneId()
    zoneId = DAS.subzones[zoneId] or zoneId
	return DAS.shareables[zoneId] or {}	
end

function DAS.questCompleted(id) 
    local questText, questType = GetCompletedQuestInfo(id)
    return nil ~= questText and #questText > 0
end

function DAS.RefreshFullBingoString()
    local ret = ""
    for _, questName in ipairs(DAS.GetActiveQuestNames()) do
        local bingoString = DAS.GetBingoStringFromQuestName(questName)
        ret = ret .. bingoString .. " "
    end
    if (#ret > 0) then 
        ret = ret .. "+any"
    end
    DAS.fullBingoString = ret
end

function DAS.IsQuestActive(questName)

	local zoneId 	= DAS.GetZoneId()
	local questList = DAS.QuestLists[zoneId] or {}
    
	for questListName, questListData in pairs(questList) do 
		if questListData[questName] then 			
			return (DAS.GetQuestListItem(zoneId, questListName, "active"))	
		end
	end
	return true

end

function DAS.GetBingoIndexFromQuestName(questName)
	for questIndex, checkQuestName in pairs(DAS.GetZoneQuests()) do
		if questName == checkQuestName then
			return questIndex  
		end
	end	
	return 99
end

function DAS.GetBingoStringFromQuestName(questName)

    local index = DAS.GetBingoIndexFromQuestName(questName)
    local ret = ""
	local zoneId = DAS.GetZoneId()
	if index == 99 then return ret end
	
	local bingoArray = DAS.bingo[zoneId] or {}
    for bingoString, bingoIndex in pairs(bingoArray) do
        if bingoIndex == index then ret = bingoString end
    end
    local bingoFallback = DAS.bingoFallback[zoneId] or {}
    ret = bingoFallback[ret] or ret
   
	if ret ~= "" then 
		if not(string.find(ret, "%+")) then ret = "+" .. ret end
		if (string.find(ret, "%+%+"))  then ret.gsub("%+%+", "%+") end
	end
	
	return ret, index
	
end

function DAS.GetQuestNameFromIndex(bingoIndex)
	return DAS.GetZoneQuests()[bingoIndex] 
end

function DAS.GetQuestNameFromBingoString(bingoString)
	local bingoIndex = GetBingoIndexFromMessage(bingoString)
	if nil == bingoIndex then return end
	return DAS.GetQuestNameFromIndex(bingoIndex)
end

function DAS.GetActiveQuestNames()
    DAS.activeBingoIndices = {}
	local ret = {}
	local questLabel
	for i=1, #DAS.labels do
		questLabel = DAS.labels[i]
		if not questLabel:IsHidden() and (questLabel.dataQuestState == DAS_STATUS_ACTIVE) or (questLabel.dataQuestState == DAS_STATUS_TRACKED) then
			table.insert(ret, questLabel.dataQuestName)
            DAS.activeBingoIndices[questLabel.dataBingoIndex] = true
		end
	end
	return ret
end

function DAS.GetOpenQuestNames()
	local ret = {}
	local questLabel
	for i=1, #DAS.labels do
		questLabel = DAS.labels[i]
		if (questLabel.dataQuestState == DAS_STATUS_OPEN) then
			table.insert(ret, questLabel.dataQuestName)
		end
	end
	return ret
end

