local DAS = DailyAutoShare

function DAS.GetArrayEntry(array, key)
	if nil == array or nil == key then return end
	if nil ~= array[key] then return array[key] end
	for i=1, #array do
        if array[i] == key then return array[i] end
	end
end
function DAS.SetChatListenerStatus(status)
    DAS.channelTypes[CHAT_CHANNEL_SAY ]     = status
    DAS.channelTypes[CHAT_CHANNEL_YELL]     = status
    DAS.channelTypes[CHAT_CHANNEL_ZONE]     = status and not DAS.GetWhisperOnly()
end

-- DAS_STATUS_COMPLETE 	= 0, 
-- DAS_STATUS_OPEN 		= 1, 
-- DAS_STATUS_ACTIVE 	= 2, 
-- DAS_STATUS_TRACKED 	= 3
local refreshedRecently = false
function refreshQuestLogs(forceOverride)
    
	forceOverride 			= forceOverride or DAS.questCacheNeedsRefresh or DAS.QuestIndexTable == {} or DAS.QuestNameTable == {} 
	if forceOverride 		then refreshedRecently = false end
	if refreshedRecently 	then return end
    
    DAS.questCacheNeedsRefresh = false
    
	DAS.QuestIndexTable		= {}
	DAS.QuestNameTable		= {}
	for i=1, 25 do
		if IsValidQuestIndex(i) then
			journalQuestName, _, _, _, _, _, tracked = GetJournalQuestInfo(i)								
			journalQuestName = zo_strformat(journalQuestName)
			DAS.QuestIndexTable[i] = journalQuestName
			DAS.QuestNameTable[journalQuestName] = i
		end
	end
    DAS.RefreshFullBingoString()
	zo_callLater(function() refreshedRecently = false end, 5000)

end
DAS.RefreshQuestLogs = refreshQuestLogs

function DAS.TryDisableAutoShare(fromName, messageText)
	if type(messageText) ~= "string" then return false end
	if (DAS.IsMatch(messageText, GetUnitName(UNITTAG_PLAYER))
	or (DAS.IsMatch(messageText, DAS.GetBingoStringFromQuestName():gsub("+", ""))
	and DAS.IsMatch(messageText "sharing")))
	then
		DAS.SetAutoShare(false)
	end
end

local typeTable = "table"
local function hookupKeyValuePair(zoneId, key, value, best)
    if type(key) == typeTable then
        for _, actualKey in ipairs(key) do
            hookupKeyValuePair(zoneId, actualKey, value, best)
        end
    elseif type(value) == typeTable then
        local best = value[1]
        for _, actualValue in ipairs(value) do
            hookupKeyValuePair(zoneId, key, actualValue, best)
        end
    else
        DAS.bingo[zoneId][value] = key
        if not best then return end
        DAS.bingoFallback[zoneId][value] = best        
    end
end


function DAS.makeBingoTable(zoneId, tbl) 
	DAS.bingo[zoneId] = {}    
    DAS.bingoFallback[zoneId] = {}
	for key, value in pairs(tbl) do
        hookupKeyValuePair(zoneId, key, value)
	end
	return DAS.bingo[zoneId]
end

local alreadySharing = false
local questQueue = {}
local function shareQuestQueue()
    if #questQueue == 0 then 
        alreadySharing = false
        return 
    end
    alreadySharing = true
    local questIndex = table.remove(questQueue, 1)
    ShareQuest(questIndex)
    zo_callLater(shareQuestQueue, DAS.GetQuestShareDelay())
end

function DAS.TryShareActiveDaily()
    if not DAS.GetAutoShare() then return end
    for _, journalIndex in pairs(DAS.activeZoneQuests) do
        if not table.contains(questQueue, journalIndex) then
            table.insert(questQueue, journalIndex)
        end
    end
    if not alreadySharing then 
        shareQuestQueue()
    end
    -- local zoneQuests = DAS.GetZoneQuests(zoneId)
	-- local activeQuestIndices = {}
	-- local questLabel
	-- for i=1, #DAS.labels do
		-- questLabel = DAS.labels[i]
		-- if (questLabel.dataQuestState == DAS_STATUS_ACTIVE) then
			-- table.insert(activeQuestIndices, questLabel.dataJournalIndex)
		-- end
	-- end
    -- for _, questIndex in ipairs(activeQuestIndices) do
        -- if IsValidQuestIndex(questIndex) and not table.contains(questQueue, questIndex) then 
           -- table.insert(questQueue, questIndex)
        -- end
    -- end
    -- if not alreadySharing then 
        -- shareQuestQueue()
    -- end
 end
 

local function EscapeString(text)
	if nil == text then return "" end
	-- escape brackets
	text = text:gsub('%(', ''):gsub('%)', '')
	text = text:gsub('%[', ''):gsub('%]', '')
	-- escape dots
	text = text:gsub('%.', '%%.')
	-- escape %
	text = text:gsub("%%", "%%%%")
	-- escape dashes
	text = text:gsub("-", "")
	return text or ""
 end

function DAS.IsMatch(param1, param2)
	
	string1 = EscapeString(tostring(param1):lower())
	string2 = EscapeString(tostring(param2):lower())

	if #string1 == 0 or #string2 == 0 then return false end
	
	return string.match(string1, string2) or string.match(string2, string2) or string1 == string2
	
	
 end

function DAS.FindInList(array, item)
	if nil == item then return false end
	for _,v in pairs(array) do
		if v == item then return true end
		if tostring(v):match(tostring(item)) then return true end

    end
	return false
end

function DAS.TryTriggerAutoAcceptInvite()
	if DAS.GetAutoAcceptInviteInterval() > 0 then
		DAS.SetAutoAcceptInvite(true)
		zo_callLater(DAS.SetAutoAcceptInvite, DAS.GetAutoAcceptInviteInterval()*1000)
	end
end

function DAS.OpenDailyPresent()

	local numCompleted 	= NonContiguousCount(DAS.GetShareableLog())
	local numOpen 		= NonContiguousCount(DAS.GetZoneQuests())

	if  (numCompleted < numOpen) then return true end

	for entry, data in pairs(DAS.GetShareableLog()) do
		if not data["completed"] then return true end
	end

	return false
end

function DAS.HasActiveDaily()
	return #DAS.GetActiveQuestNames() > 0
end

