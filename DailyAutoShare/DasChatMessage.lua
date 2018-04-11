local messageQueue              = {}
local unittagplayer             = 'player'
local cachedDisplayName         = DAS.pdn or GetUnitDisplayName('player')
local share                     = "share"
local stopsharing               = "stop sharing"

local groupDelay                = 150
local zoneDelay                 = 150

local inviteQueue               = {}

local function popInviteQueue()
    if #inviteQueue == 0 then return end
    local playerName = table.remove(inviteQueue, 1)
    GroupInviteByName(playerName)
    zo_callLater(popInviteQueue, 500)
end

function table.contains(tbl, element)
  for _, value in pairs(tbl) do
    if value == element then
      return true
    end
  end
  return false
end

local function HandleGroupMessage(messageText, fromDisplayName)
        
    local _, found 
    _, found = pcall(string.find, messageText, share)
    if 	found then return DAS.TryShareActiveDaily() end
     _, found = pcall(string.find, messageText, stopsharing)
    if found then return DAS.SetAutoShare(false) end
    
    zo_callLater(HandleGroupMessage, groupDelay)
end

local channelTypes = DAS.channelTypes
local function HandleChatMessage(messageText, fromDisplayName)
    
    if not DAS.autoInviting then return end

    local _, bingoCode = pcall(string.match, messageText, "[%+/]+%s?(%S%S%S+)%s?[%+/]?")
    if not DAS.fullBingoString or not bingoCode then return end
       
    local _, found = pcall(string.find, DAS.fullBingoString, bingoCode)
    if found and not table.contains(inviteQueue, fromDisplayName) then 
        table.insert(inviteQueue, fromDisplayName)
    elseif not found then 
        return HandleChatMessage(messageText:gsub(bingoCode, ""), fromDisplayName)
    end
    zo_callLater(popInviteQueue,500)
end

function DAS.OnChatMessage(eventCode, channelType, fromName, messageText, _, fromDisplayName)
    local isPlayerName
    
    -- react to the group asking for shares
    if (channelType == CHAT_CHANNEL_PARTY) and (messageText:find("share") or messageText:find("quest")) then
       DAS.TryShareActiveDaily()
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
    
    HandleChatMessage(messageText:lower(), fromDisplayName)
    zo_callLater(popInviteQueue,500)
end