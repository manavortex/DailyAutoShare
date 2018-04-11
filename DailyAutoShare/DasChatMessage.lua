
local task 						= LibStub("LibAsync"):Create("DailyAutoshare")
local task2 					= LibStub("LibAsync"):Create("DailyAutoshare_OnGroupMessage")
local messageQueue              = {}
local partyQueue                = {}
DAS.messageQueue                = messageQueue
local unittagplayer             = 'player'
local cachedDisplayName         = GetUnitDisplayName(unittagplayer)
local share                     = "share"
local stopsharing               = "stop sharing"

local groupDelay                = 100
local zoneDelay                 = 100

local function HandleGroupMessage()
    
    if #partyQueue == 0 then
        groupDelay = 100
        return 
    end
    groupDelay = groupDelay * 1.5
    
    local _, messageText = pcall(table.remove, partyQueue, #partyQueue)
    if not messageText then return end
    local _, found 
    _, found = pcall(string.find, messageText, share)
    if 	found then return DAS.TryShareActiveDaily() end
     _, found = pcall(string.find, messageText, stopsharing)
    if found then return DAS.SetAutoShare(false) end
    
    zo_callLater(HandleGroupMessage, groupDelay)
end

local channelTypes = DAS.channelTypes
local function HandleChatMessage()
    
    if not DAS.autoInviting then return end
    
    if #messageQueue == 0 then 
        zoneDelay = 100
        return
    end
    
    zoneDelay = zoneDelay * 1.5
    
    local _, tbl = pcall(table.remove, messageQueue, #messageQueue)
    if not tbl then     
        zo_callLater(HandleChatMessage, zoneDelay)
        return 
    end
    local messageText, fromDisplayName = tbl[1], tbl[2]
    
    local _, bingoCode = pcall(string.match, messageText, "%+%s?(%S+)")
    if not DAS.fullBingoString or not bingoCode then 
        zo_callLater(HandleChatMessage, zoneDelay)
        return 
    end
    
    -- d(zo_strformat("[HandleChatMessage] <<1>>: <<2>>", fromDisplayName, bingoCode))   
   
    local _, found = pcall(string.find, DAS.fullBingoString, bingoCode)
    if found then 
        GroupInviteByName(fromDisplayName)    
    end 
    
    
end

function DAS.OnChatMessage(eventCode, channelType, fromName, messageText, _, fromDisplayName)
    local isPlayerName
    
    -- react to the group asking for shares
    if (channelType == CHAT_CHANNEL_PARTY) then
        table.insert(partyQueue, messageText)
        return zo_callLater(HandleGroupMessage, groupDelay)
    elseif channelType == CHAT_CHANNEL_ZONE then
        local isPlayerName = fromDisplayName:find(cachedDisplayName)
        if isPlayerName and channelTypes[channelType] then return end
    end
    
    if not (isPlayerName or channelTypes[channelType]) then return end 
    
    -- d(zo_strformat("[OnChatMessage] <<1>>: <<2>>", fromDisplayName, messageText))
    local status, result = pcall(string.find, messageText, "%+")
    if not result then return end
    
    if isPlayerName then
        if IsUnitGrouped('player') then
            if DAS.GetGroupLeaveOnNewSearch() then GroupLeave() end
        else
            DAS.TryTriggerAutoAcceptInvite()
        end
        return
    end
    
    -- we don't have quests to share
    if not DAS.autoInviting or #DAS.fullBingoString == 0 then return end 
    
    table.insert(messageQueue, {[1] = zo_strformat(messageText), [2] = fromDisplayName})
    
    zo_callLater(HandleChatMessage, zoneDelay)
end