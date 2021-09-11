local day
local characterName = DAS.pdn or GetUnitName(UNITTAG_PLAYER)
local typeString = "string"

---Returns days since 2020-01-01 06:00 UTC rounded down to the nearest whole number
---@return number
local function getToday()
	return math.floor(GetDiffBetweenTimeStamps(GetTimeStamp(), 1577858400) / 86400)
end

---Returns today's quest log for the current player character
---@return table
function DAS.GetShareableLog()
	day = getToday()
	local settings = DAS.globalSettings.completionLog or {}
	-- initialize if empty
	settings[characterName] = settings[characterName] or {}
	-- purge the old entries
	if settings._day ~= day then
		settings = {}
		settings._day = day
	end
	-- make sure it's set
	DAS.globalSettings.completionLog = settings
	DAS.todaysLog          = DAS.globalSettings.completionLog
	DAS.todaysCharacterLog = DAS.globalSettings.completionLog[characterName]
	return DAS.globalSettings.completionLog[characterName]
end

---Get completion status (true or false) for the given quest
---@param questName any
---@return boolean
function DAS.IsQuestDone(questName)
	if nil == questName or "" == questName or typeString ~= type(questName) then return false end
	return DAS.GetShareableLog()[zo_strformat(questName)] or false
end

---Set completion status (true or false) for the given quest
---@param questName string
---@param isDone boolean
function DAS.LogQuest(questName, isDone)
	if nil == questName or "" == questName or typeString ~= type(questName) then return end
	DAS.GetShareableLog()[questName] = isDone
end

---Get DAS status ID for the given quest
---@param questName string
---@return number
function DAS.GetQuestStatus(questName)
	if nil == questName then return end
	if nil ~= DAS.QuestNameTable[questName] then return DAS_STATUS_ACTIVE end
	if DAS.IsQuestDone(questName) then
		return DAS_STATUS_COMPLETE
	end
	return DAS_STATUS_OPEN
end

---Get log index for the given quest
---@param questName string
---@return number
function DAS.GetLogIndex(questName)
	return DAS.QuestNameTable[questName] or 0
end

function DAS.handleLog()
	return DAS.GetShareableLog()
end