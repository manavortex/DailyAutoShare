local DAS = DailyAutoShare

local p = DAS.debug

DAS.subzones = { 
	-- Morrowind
	[922]			= 849,		-- Zainsipilu
	[923]			= 849,		-- Zainsipilu
	[924]			= 849,		-- Zainsipilu	
	
	[985]			= 980,		-- Halls of Regulation
	[986]			= 980,		-- Shadow Cleft
	[993]			= 980,		-- Planisphere
    
	[689]			= 684,		-- Nikolovara's Kennel
	[690]			= 684,		-- 
	[691]			= 684,		-- 
	[692]			= 684,		-- 
	[693]			= 684,		-- Argent Mine
	[694]			= 684,		-- Argent Mine
}

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

function DAS.GetZoneId() return GetZoneId(GetUnitZoneIndex('player')) or 0 end
function PrintZoneId() d(GetZoneId(GetUnitZoneIndex('player'))) end

function DAS.GetZoneQuests(zoneId)
	zoneId = zoneId or DAS.GetZoneId()
    zoneId = DAS.subzones[zoneId] or DAS.festivals[zoneId] or zoneId
	return DAS.shareables[zoneId] or {}	
end

function DAS.RefreshFullBingoString()
    local ret = ""
    for _, questName in ipairs(DAS.GetActiveQuestNames()) do
        ret = ret .. DAS.GetBingoStringFromQuestName(questName) .. " "
    end
    ret = ret .. "+any"
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
	
	return ret
	
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
	local ret = {}
	local questLabel
	for i=1, #DAS.labels do
		questLabel = DAS.labels[i]
		if (questLabel.dataQuestState == DAS_STATUS_ACTIVE) or (questLabel.dataQuestState == DAS_STATUS_TRACKED) then
			table.insert(ret, questLabel.dataQuestName)
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

function DAS.GetActiveQuestIndices(zoneId)
    local zoneQuests = DAS.GetZoneQuests(zoneId)
	local ret = {}
	local questLabel
	for i=1, #DAS.labels do
		questLabel = DAS.labels[i]
		if (questLabel.dataQuestState == DAS_STATUS_ACTIVE) then
			table.insert(ret, questLabel.dataJournalIndex)
		end
	end
	return ret
end
