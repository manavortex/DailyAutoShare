local DAS = DailyAutoShare
local p   = DAS.DebugOut
function DAS.GetZoneId()
	local ret = GetZoneId(GetUnitZoneIndex(UNITTAG_PLAYER))
	if not ret then return 0 end
	return DAS.subzones[ret] or ret
end
local typeTable   = "table"
local typeString  = "string"
local function evaluateNestedLists(tbl)
  
  if not tbl or {} == tbl then return tbl end
  
  local addToRet = {}
  for key, value in pairs(tbl) do
  -- unpack sublists with string keys, because those are festival lists or so
    if type(value) == typeTable and typeString == type(key) then
      if DAS.GetActiveIn(key) then
        for _, questName in pairs(value) do
          table.insert(addToRet, questName)
        end
      end
    else
       table.insert(addToRet, value)
    end
  end
  
  local ret = {}
  
  for _, questName in pairs(addToRet) do
    table.insert(ret, questName)    
  end
  return ret
end
function DAS.GetZoneQuests(zoneId)
  -- check if we have an ID
	zoneId = zoneId or DAS.GetZoneId()
  
  -- check if we're someone's subzone
  zoneId = DAS.subzones[zoneId] or zoneId
  return evaluateNestedLists(DAS.shareables[zoneId] or {})
  
end
function DAS.questCompleted(id) 
    local questText, questType = GetCompletedQuestInfo(id)
    return nil ~= questText and #questText > 0
end
function DAS.RefreshFullBingoString()
    local ret = ""
    for _, questName in ipairs(DAS.GetActiveQuestNamesFromGui()) do
        local bingoString = DAS.GetBingoStringFromQuestName(questName)
        ret = ret .. bingoString .. " "
    end
    if (#ret > 0) then
        ret = ret .. "+any"
    end
    DAS.fullBingoString = ret
end
function DAS.IsQuestActive(questName)

	local zoneId 	  = DAS.GetZoneId()
	local questList = DAS.QuestLists[zoneId] or {}
    
	for questListName, questListData in pairs(questList) do
		if questListData[questName] then
			return (DAS.GetQuestListItem(zoneId, questListName, "active"))	
		end
	end
	return true
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

---@param zoneId number
---@param subList string subList code
---@param questName string
---@param bingo string|nil _(optional)_ custom bingo code for this quest
function DAS.makeNestedZoneTable(zoneId, subList, questName, bingo)
	DAS.shareables[zoneId]          = DAS.shareables[zoneId]          or {}
	DAS.shareables[zoneId][subList] = DAS.shareables[zoneId][subList] or {}
	table.insert(DAS.shareables[zoneId][subList], questName)

	DAS.bingo[zoneId]            = DAS.bingo[zoneId] or {}
	DAS.bingo[zoneId][subList]   = bingo or subList
end

local zoneCloneDebug = "Couldn't copy zone <<1>> to zone <<2>>, one of the IDs was nil"
function DAS.zoneHasAdditionalId(zoneId2, zoneId) 
  
  if not zoneId and zoneId2 then
    d(zo_strformat(zoneCloneDebug, zoneId, zoneId2))
    return
  end
  DAS.questIds[zoneId2] = DAS.questIds[zoneId] 
  

  DAS.shareables[zoneId2] = DAS.shareables[zoneId]
  DAS.bingo[zoneId2] = DAS.bingo[zoneId]

  DAS.QuestLists[zoneId2] = DAS.QuestLists[zoneId]

  DAS.questStarter[zoneId2] = DAS.questStarter[zoneId]
  DAS.questFinisher[zoneId2] = DAS.questFinisher[zoneId]
  end
function DAS.GetQuestNameFromIndex(bingoIndex)
	return DAS.GetZoneQuests()[bingoIndex] 
end
function DAS.GetQuestNameFromBingoString(bingoString)
	local bingoIndex = DAS.GetBingoIndexFromMessage(bingoString)
	if nil == bingoIndex then return end
	return DAS.GetQuestNameFromIndex(bingoIndex)
end
function DAS.GetActiveQuestNamesFromGui()
  DAS.activeBingoIndices = {}
	local ret = {}
	local questLabel
	for i=1, #DAS.labels do
		questLabel = DAS.labels[i]
    if  questLabel.dataBingoIndex then 
      if not questLabel:IsHidden() and (questLabel.dataQuestState == DAS_STATUS_ACTIVE) or (questLabel.dataQuestState == DAS_STATUS_TRACKED) then
        table.insert(ret, questLabel.dataQuestName)
              DAS.activeBingoIndices[questLabel.dataBingoIndex] = true
      end
		end
	end
	return ret
end
function DAS.GetOpenQuestNamesFromGui()
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