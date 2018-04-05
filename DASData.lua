local DAS = DailyAutoShare
local locale

local p = DAS.debug

DAS.subzones = { 
	-- Morrowind
	[922]			= 849,		-- Zainsipilu
	[923]			= 849,		-- Zainsipilu
	[924]			= 849,		-- Zainsipilu	
	
	[985]			= 980,		-- Halls of Regulation
	[986]			= 980,		-- Shadow Cleft
	[993]			= 980,		-- Planisphere
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

function DAS.IsSubZone(zoneId)
	zoneId = zoneId or DAS.GetZoneId()
	return (not DAS.subzones[zoneId] == nil)
end
function DAS.IsFestivalZone()
	zoneId = zoneId or DAS.GetZoneId()
end

function DAS.GetZoneId()
	return GetZoneId(GetUnitZoneIndex('player'))	
end
function PrintZoneId()
	d(GetZoneId(GetUnitZoneIndex('player')))		
end

-- used in DasTooltip
function DAS.GetTranslationString(key, bool)
	if nil~=bool then key = key .. "_" .. tostring(bool) end
	return DAS_STRINGS[key]	
end

function DAS.GetZoneQuests(zoneId)
	zoneId = zoneId or DAS.GetZoneId()
	if nil ~= DAS.subzones[zoneId] then zoneId = DAS.subzones[zoneId] end
	if nil ~= DAS.festivals[zoneId] then zoneId = DAS.festivals[zoneId] end
	return DAS.shareables[zoneId] or {}	
end
 
function DAS.GetBingoIndexFromMessage(messageText)	
	local bingoArray = DAS.bingo[DAS.GetZoneId()]
	if nil == bingoArray then return end 
        
	for bingo, questindex in pairs(bingoArray) do
		if messageText:match(bingo) then 
			return questindex 
		end
	end
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
    
    ret = DAS.bingoFallback[zoneId][ret] or ret
   
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

function DAS.GetActiveZoneQuestNames()

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
    zoneId = zoneId or DAS.GetZoneId()
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
