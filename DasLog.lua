local dayCached
local characterId = GetCurrentCharacterId()
local typeString = "string"
local clockBase = 1577858400
local clockWasAdjusted = false


---Returns days since 2020-01-01 06:00 UTC rounded down to the nearest whole number
---@return number
local function getToday()
	-- Shift starting time to the current daily reset
	if not clockWasAdjusted then
		local clockOffset = GetDiffBetweenTimeStamps(GetTimeStamp() + GetTimeUntilNextDailyLoginRewardClaimS(), clockBase) % 86400
		if clockOffset >= 43200 then clockOffset = clockOffset - 86400 end -- normalize to make EU clock the same day as NA
		clockBase = clockBase + clockOffset -- should add -10800 on EU server, +14400 on NA/PTS [as of 2023]
		clockWasAdjusted = true
	end

	return math.floor(GetDiffBetweenTimeStamps(GetTimeStamp(), clockBase) / 86400)
end

---Returns today's quest log for the current player character
---@return table
function DAS.GetShareableLog()
	local day = getToday()
	if nil == dayCached or dayCached ~= day then
		local settings = DAS.globalSettings.completionLog or {}
		-- initialize if empty
		settings[characterId] = settings[characterId] or {}
		-- pre4.5.0 compatibility, remove this in 4.5.1+
		settings[characterId]._day = settings[characterId]._day or settings._day
		-- purge the old entries
		if settings[characterId]._day ~= day then
			settings[characterId] = {}
			-- store the day number per character
			settings[characterId]._day = day
		end
		-- make sure it's set
		DAS.globalSettings.completionLog = settings
		dayCached = day
	end
	return DAS.globalSettings.completionLog[characterId]
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
---@return number|nil
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