local DAS = DailyAutoShare

DAS.QuestIndexTable = {}
DAS.QuestNameTable = {}

local p = DAS.DebugOut

function DAS.GetLogIndex(questName)
	return DAS.QuestNameTable[questName] or 0
end

-- DAS_STATUS_COMPLETE 	= 0, 
-- DAS_STATUS_OPEN 		= 1, 
-- DAS_STATUS_ACTIVE 	= 2, 
-- DAS_STATUS_TRACKED 	= 3
local refreshedRecently = false
function refreshQuestLogs(forceOverride)

	forceOverride 			= forceOverride or DAS.QuestIndexTable == {} or DAS.QuestNameTable == {}
	if forceOverride 		then refreshedRecently = false end
	if refreshedRecently 	then return end
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

local function getEnglishQuestNames(activeQuestNames)
	activeQuestNames = activeQuestNames or DAS.GetZoneQuests()
	if DAS.locale == "en" then return activeQuestNames end
	local ret = {}
	for index, questName in pairs(activeQuestNames) do
		if nil ~= DAS_STRINGS_LOCALE and nil ~= DAS.locale and nil ~= DAS_STRINGS_LOCALE.en then
			for key, value in pairs(DAS_STRINGS_LOCALE[DAS.locale]) do 
				if DAS.IsMatch(questName, value) then
					table.insert(ret, DAS_STRINGS_LOCALE.en[key])
				end
			end
		end
	end
	if ret == {} then return activeQuestNames end
	return ret
end

local function askForQuest(questNames)
    local ret = ""
    for _, questName in ipairs(questNames) do 
      if "" ~= questName then 
        ret = ret .. questName .. ", "
      end			
		end
    if ret == "" then return ret end
    return ret:sub(1, -3)
end
local function generateQuestSpam(questNames)
    local ret = ""
    for _, questName in ipairs(questNames) do 
        bingoString = DAS.GetBingoStringFromQuestName(questName) 
        ret = ret .. ((("" == bingoString) and "") or bingoString .. " ")
    end
    return ret
end	

local function GenerateBingoString(activeQuestNames, verbose)

	activeQuestNames = getEnglishQuestNames(activeQuestNames)
	
	local bingoCodes = {}
	local ret = ""
    local bingoString = (DAS.fullBingoString or ""):gsub("%+any", "")
	if DAS.GetAutoInvite() then
		ret = "I can give a DailyAutoShare for "
		
		for _, questName in ipairs(activeQuestNames) do 
			if DAS.IsQuestActive(questName) then
				ret = ret .. questName .. ", "
			end
		end
        if #DAS.fullBingoString > 0 then
			ret = ret .. "type " .. ((#activeQuestNames >1 and "either of ") or "") .. bingoString .. "for an instant invite"		
		end        
        return ret 
    end
	
    if NonContiguousCount(DAS.GetShareableLog()) == 0 and #activeQuestNames == 0 then
        return (verbose and GetString(DAS_SI_VERBOSE_ANY)) or "+any"
    end
    return ret .. ((verbose and "Looking for " .. askForQuest(questList)) or "") .. bingoString

end
DAS.GenerateBingoString = GenerateBingoString

local function SpamChat(verbose, questName)
	if CHAT_SYSTEM.textEntry.editControl:HasFocus() then
		CHAT_SYSTEM.textEntry.editControl:Clear()
	end
	local activeQuestNames = {}
	if nil == questName then	
		activeQuestNames = DAS.GetActiveQuestNames()
	else
		table.insert(activeQuestNames, questName)
	end
	if #activeQuestNames == 0 then 
		DAS.SetAutoInvite(false)
	end
	StartChatInput(DAS.GenerateBingoString(activeQuestNames, verbose), CHAT_CHANNEL_ZONE)

end
DAS.SpamChat = SpamChat

function DAS.SpamForSingle(questName, bingoString)
	if nil == questName and nil == bingoString then return end
	questName	= questName		or DAS.GetQuestNameFromBingoString(bingoString)
	bingoString = bingoString 	or GetBingoStringFromQuestName(questName)
	
	local lftext = bingoString
	
end

-- called from XML
function DAS.SettingsButton(control, mouseButton)

	local name = control:GetName():gsub("DasButton", "")
	if name == "Spam" 		then
    return SpamChat(mouseButton == 2)
	elseif 	name == "Invite" 	then DAS.SetAutoInvite(not DAS.GetAutoInvite()) 
	elseif  name == "Accept"	then DAS.SetAutoAcceptInvite(not DAS.GetAutoAcceptInvite()) 
	elseif 	name == "Share" 	then 
		if mouseButton == 2 then
			DAS.TryShareActiveDaily()
		else
			DAS.SetAutoShare(not DAS.GetAutoShare()) 
		end		
	end

	DAS.RefreshLabels()
	
 end

function DAS.ToggleQuest(control)
	local questName = control["dataQuestName"] or control:GetText()
	local completed = DAS.GetCompleted(questName)
	
	control.dataQuestState = (completed and DAS_STATUS_OPEN) or DAS_STATUS_COMPLETE
	if not completed then 
		control.dataIsTracked = false
	end	
	DAS.LogQuest(questName, not completed)
end
