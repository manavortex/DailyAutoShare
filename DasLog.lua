local currentDate = tonumber(GetDate())
local characterName = DAS.pdn or GetUnitName(UNITTAG_PLAYER)
local function getSettingsArray()
  currentDate   = currentDate or tonumber(GetDate())
  characterName = characterName or GetUnitName(UNITTAG_PLAYER)
 local settings = DAS.globalSettings.completionLog[currentDate] or {}
  -- initialize if empty
  settings                   = DAS.globalSettings.completionLog[currentDate] or {}
  settings[characterName]    = settings[characterName] or {}
  -- make sure it's set
  DAS.globalSettings.completionLog[currentDate] = settings
  DAS.todaysLog                             = DAS.globalSettings.completionLog[currentDate]
  DAS.todaysCharacterLog                    = DAS.globalSettings.completionLog[currentDate][characterName]
	return DAS.globalSettings.completionLog[currentDate][characterName]
end
DAS.GetShareableLog =  getSettingsArray
local typeString = "string"
function DAS.GetCompleted(questName)
	if nil == questName or "" == questName or typeString ~= type(questName) then return false end
  local settings 	 =  getSettingsArray()
  local logEntry   =  settings[zo_strformat(questName)] or {}
  return logEntry.completed
end
function DAS.LogQuest(questName, completed)
  if not questName then return end
  local timeStringNumber  = tonumber(GetTimeString():sub(1,2))
  local settings 	        = getSettingsArray()
  local afterEight 	= (timeStringNumber >= 8) -- 08:17:02 - reset is at 8
  local afterEightHasChanged = false
  for questId, questData in pairs(settings) do
    afterEightHasChanged =  afterEightHasChanged or questData.afterEight ~= afterEight
  end
  if afterEightHasChanged then
    for questId, questData in pairs(settings) do
      if questData.afterEight ~= afterEight  then
        settings[questId] = nil
      end
    end
  end
  settings[questName] = {}
  settings[questName].completed  = completed
  settings[questName].afterEight = afterEight
	-- DAS.globalSettings.completionLog[currentDate][characterName][questName] = settings[questName]
end
local function deleteYesterdaysLog()
	-- kill yesterday's log, we don't need it
	if (nil ~= DAS.globalSettings and nil ~= DAS.globalSettings.lastLogDate) and (DAS.globalSettings.lastLogDate < currentDate) then
    if nil == DAS.Log then DAS.Log = {} end
    DAS.Log[DAS.globalSettings.lastLogDate] = nil
    DAS.globalSettings.lastLogDate = currentDate
  end
end
DAS.deleteYesterdaysLog = deleteYesterdaysLog
function DAS.GetQuestStatus(questName)
  if nil == questName then return end
  if nil ~= DAS.QuestNameTable[questName] then return DAS_STATUS_ACTIVE end
  if DAS.GetCompleted(questName) then
    return DAS_STATUS_COMPLETE
  end
  return DAS_STATUS_OPEN
end
local typeTable = "table"
local function isEmpty(tbl)
  if not tbl then return true end
  local ret = true
  for key, value in pairs(tbl) do
    if type(value) == typeTable then
      ret = ret and ({} == value or isEmpty(value))
      else
      ret = false
    end
  end
  return ret
end
function DAS.GetLogIndex(questName)
	return DAS.QuestNameTable[questName] or 0
end
local function handleLog(forceNoAfterEight)
  local todaysLog = DAS.GetShareableLog()
  if todaysLog and {} ~= todaysLog then
    todaysLog = ZO_DeepTableCopy(todaysLog, {})
  end
  local allLogs = DAS.globalSettings.completionLog
  allLogs[currentDate] = allLogs[currentDate] or {}
  local logSize, lastDate = NonContiguousCount(DAS.globalSettings.completionLog)
  local counter = 0
  for currentDate, dateLog in pairs(DAS.globalSettings.completionLog) do
    counter = counter + 1
    if nil ~= currentDate and currentDate < currentDate then
      lastDate = currentDate
    end
    if counter < logSize-2 then
      DAS.globalSettings.completionLog[currentDate] = nil
    end
  end
  local afterEight = not forceNoAfterEight and tonumber(GetTimeString():sub(0, 2)) >= 08 -- has to be a local var, lua error if not
  if (not afterEight) and isEmpty(DAS.todaysLog) and lastDate ~= currentDate then
    local lastLog = DAS.globalSettings.completionLog[lastDate]
    if not lastLog then return end
    DAS.globalSettings.completionLog[currentDate] = ZO_DeepTableCopy(lastLog, {})
    -- d(DAS.globalSettings.completionLog[currentDate])
    for charName, charLog in pairs(DAS.globalSettings.completionLog[currentDate]) do
      for questName, questData in pairs(charLog) do
        questData.afterEight = false
      end
    end
  end
end
DAS.handleLog = handleLog   -- expose this for debugging purpose