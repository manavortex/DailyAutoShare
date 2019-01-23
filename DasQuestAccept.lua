local chattering, wasQuestAccepted = false, false
local optionString, optionCount, wasQuestAccepted
local questStarter, questFinisher
local unitInteract = "interact"
function DAS.cacheChatterData()
    local zoneId = DAS.GetZoneId()
    questStarter = DAS.questStarter[zoneId] or {}
    questFinisher = DAS.questFinisher[zoneId] or {}
end
local function HandleQuestAccepted()
    -- Accept the quest
    wasQuestAccepted = true
    EVENT_MANAGER:UnregisterForEvent("DAS_Chatter", EVENT_QUEST_OFFERED)
    EVENT_MANAGER:UnregisterForEvent("DAS_Chatter", EVENT_QUEST_ACCEPTED)
    EndInteraction(INTERACTION_CONVERSATION)
    wasQuestAccepted = nil
end
-- Handles the dialogue where we actually accept the quest
local function HandleEventQuestOffered(eventCode)
    -- Stop listening for quest offering
    EVENT_MANAGER:RegisterForEvent("DAS_Chatter", EVENT_QUEST_ADDED, HandleQuestAccepted)
    AcceptOfferedQuest()
end
-- Handles the dialogue where we actually complete the quest
local function HandleQuestCompleteDialog(eventCode, journalIndex)
	if not GetJournalQuestIsComplete(journalIndex) then return end
	CompleteQuest()
    EVENT_MANAGER:UnregisterForEvent("DAS_Chatter", EVENT_QUEST_COMPLETE_DIALOG)
	CompleteQuest()
end
local function HandleChatterBegin(eventCode, optionCount)
    wasQuestAccepted = nil
	if not DAS.GetSettings().autoAcceptQuest or not DAS.GetActiveIn() then return end
    -- Ignore interactions with no options
    if not optionCount then
        _, optionCount = GetChatterData()
    end
    if optionCount == 0 then return end
    local npcName = GetUnitName(unitInteract)
    if not questStarter[npcName] and not questFinisher[npcName] then return end
    for i = 1, optionCount do
        -- Get details of option
	    optionString, optionType = GetChatterOption(i)
        -- If it is a daily quest option...
	    if optionType == CHATTER_START_NEW_QUEST_BESTOWAL and questStarter[npcName] then
			EVENT_MANAGER:RegisterForEvent("DAS_Chatter", EVENT_QUEST_OFFERED, HandleEventQuestOffered)
           if not wasQuestAccepted then
				-- Listen for the quest offering - Select the first option
				SelectChatterOption(i)
				return
			else
				if i == optionCount and wasQuestAccepted then
					EndInteraction(INTERACTION_CONVERSATION)
					wasQuestAccepted = nil
				end
			end
	    -- If it is a writ quest completion option
	    elseif optionType == CHATTER_START_ADVANCE_COMPLETABLE_QUEST_CONDITIONS and questFinisher[npcName] then
	        -- Listen for the quest complete dialog
	        EVENT_MANAGER:RegisterForEvent("DAS_Chatter", EVENT_QUEST_COMPLETE_DIALOG, HandleQuestCompleteDialog)
	        -- Select the first option to complete the quest
	        SelectChatterOption(1)
	    -- If the goods were already placed, then complete the quest
	    elseif optionType == CHATTER_START_COMPLETE_QUEST and questFinisher[npcName] then
	        -- Listen for the quest complete dialog
	        EVENT_MANAGER:RegisterForEvent("DAS_Chatter", EVENT_QUEST_COMPLETE_DIALOG, HandleQuestCompleteDialog)
	        -- Select the first option to place goods and/or sign the manifest
	        SelectChatterOption(1)
	        -- Select the first option to complete the quest
	        SelectChatterOption(1)
        end
    end
    chattering = false
end
local function HandleChatterEnd()
     chattering = false
end
EVENT_MANAGER:RegisterForEvent("DAS", EVENT_CHATTER_BEGIN, HandleChatterBegin)
EVENT_MANAGER:RegisterForEvent("DAS", EVENT_CHATTER_END, HandleChatterEnd)