local DAS = DailyAutoShare

DAS.QuestIndexTable = {}
DAS.QuestNameTable = {}

local p = DAS.DebugOut

function DAS.GetLogIndex(questName)
	return DAS.QuestNameTable[questName] or 0
end

local en = "en"
local function getEnglishQuestNames(activeQuestNames)  
	activeQuestNames = activeQuestNames or DAS.GetZoneQuests()
	if DAS.locale == en or not DAS_STRINGS_LOCALE or not DAS.locale then
        return activeQuestNames 
    end	 
    local ret = {}
	for _, questName in ipairs(activeQuestNames) do
        for key, value in pairs(DAS_STRINGS_LOCALE[DAS.locale]) do 
            if value == questName then
                table.insert(ret, DAS_STRINGS_LOCALE.en[key])
            end
        end		
	end
    
	if ret == {} then return activeQuestNames end
	return ret
end
DAS.getEnglishQuestNames = getEnglishQuestNames

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
        if not ret:find(bingoString) then 
            ret = ret .. ((("" == bingoString) and "") or bingoString .. " ")
        end
    end
    return ret
end	


local empty = ""
local comma = ", "
local space = " "
local any = "+any"
local eitherof = "either of "

local function getQuestNames(activeQuestNames)
       
    local questNames = empty
    for _, questName in ipairs(activeQuestNames) do 
        if DAS.IsQuestActive(questName) then
            questNames = questNames .. questName .. comma
        end
    end
    
    return questNames
    
end

local varargOne, varargTwo, varargAny = "<<1>>", "<<2>>", "%+any"
local function whisperify(qsString)
    local beginIndex, endIndex = string.find(qsString, varargOne) 
    if endIndex then 
        qsString = qsString:sub(0, endIndex+2) 
    end
    return qsString .. space .. varargTwo
    
end


local function GenerateBingoString(activeQuestNames)

	activeQuestNames = DAS.getEnglishQuestNames(activeQuestNames)
	local qsString = DAS.GetSettings().questShareString
	local bingoCodes = {}
    local bingo, questNames = empty, empty
    local bingoString = (DAS.fullBingoString or empty):gsub(varargAny, empty)
	if DAS.GetAutoInvite() then
        local questNames = getQuestNames(activeQuestNames)       
		
        -- if we're listening for whisper only, adjust spam accordingly
        if DAS.GetWhisperOnly() then 
            qsString = whisperify(qsString)
            bingoString = DAS.GetSettings().whisperString
        else
        
        -- if we have more than one, insert either of
            if #bingoString > 0 then        
                bingo = ((#activeQuestNames > 1 and eitherof) or empty) .. bingoString
            end
        end        
        return zo_strformat(qsString, questNames, bingoString) 
    end
	if #bingoString > 0 then return bingoString end
    
    if NonContiguousCount(DAS.GetShareableLog()) == 0 and #activeQuestNames == 0 then
        return any
    end
    activeQuestNames = DAS.GetOpenQuestNames()
    return generateQuestSpam(activeQuestNames)

end
DAS.GenerateBingoString = GenerateBingoString

local function SpamChat(questName)
	if CHAT_SYSTEM.textEntry.editControl:HasFocus() then
		CHAT_SYSTEM.textEntry.editControl:Clear()
	end
	local activeQuestNames = (questName and {[1] = questName,}) or DAS.GetActiveQuestNames()
	if nil == questName then	
		activeQuestNames = DAS.GetActiveQuestNames()
	else
		table.insert(activeQuestNames, questName)
	end
	if #activeQuestNames == 0 then 
		DAS.SetAutoInvite(false)
	end    
	StartChatInput(DAS.GenerateBingoString(activeQuestNames), CHAT_CHANNEL_ZONE)

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
	if name == "Spam" 		then return SpamChat() end
	if 	name == "Invite" 	then return DAS.SetAutoInvite(not DAS.GetAutoInvite()) end
	if  name == "Accept"	then return DAS.SetAutoAcceptShared(not DAS.GetAutoAcceptShared()) end
	if 	name == "Share" 	then 
		if mouseButton == 2 then return DAS.TryShareActiveDaily() end
        DAS.SetAutoShare(not DAS.GetAutoShare()) 		
	end

	-- DAS.RefreshLabels()
	
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
