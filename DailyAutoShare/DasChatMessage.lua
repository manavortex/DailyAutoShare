local messageQueue              = {}
local unittagplayer             = 'player'
local share                     = "share"
local stopsharing               = "stop sharing"

local inviteQueue               = {}
local alreadyInviting           = false
local function popInviteQueue()
    -- d("popInviteQueue called with " .. tostring(#inviteQueue) .. " entries")
    if #inviteQueue == 0 then
        alreadyInviting = false
        return 
    end
    local playerName = table.remove(inviteQueue, 1)
    -- d("inviting " .. playerName)
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
local stringPlus = "+"
local stringAny = "+any"
local function HandleChatMessage(messageText, fromDisplayName, calledRecursively)
    
    if not DAS.autoInviting then return end

    local found = stringAny == messageText -- it's +any
    
    -- lower case regex
    local _, bingoCode = pcall(string.match, messageText, "[%+/]+%s*(%w+)%s?[%+/]?")
    if not found and not bingoCode then return end
    local bingoIndex = DAS.getBingoTable()[bingoCode]
    found = found or (nil ~= bingoIndex and DAS.activeZoneQuests[bingoIndex])
    
    if not found then return HandleChatMessage(messageText:gsub(bingoCode, ""), fromDisplayName, true) end
    if found and not table.contains(inviteQueue, fromDisplayName) then
        -- d("found bingo " .. tostring(bingoCode) .. " (" .. tostring(bingoIndex) .. "), inviting " .. tostring(fromDisplayName))
        table.insert(inviteQueue, fromDisplayName)
        if not alreadyInviting then 
            popInviteQueue()
        end
    end
end

local stringShare = "share"
local stringQuest = "quest"
function DAS.OnChatMessage(eventCode, channelType, fromName, messageText, _, fromDisplayName)
    
    -- ignore all chat channels that aren't set
    if nil == channelTypes[channelType] then return end
    
    local isPlayerName = fromDisplayName:find(DAS.pdn)
    
    -- if we aren't listening, or if we are listening and the message's from us, ignore it
    if not channelTypes[channelType] or (channelTypes[channelType] and isPlayerName) then return end
    
    -- if it's a group message, react to the group message
    if (channelType == CHAT_CHANNEL_PARTY) and (messageText:find(stringShare) or messageText:find(stringQuest)) then
       DAS.TryShareActiveDaily()
       return
    end
    
    --  d(zo_strformat("[OnChatMessage] <<1>>: <<2>>, isPlayerName: <<3>>", fromDisplayName, messageText, tostring(isPlayerName)))
    
    local _, result = pcall(string.find, messageText, "%+")
    if not (result or #messageText <= 3) then return end
    
    if isPlayerName then 
        local groupStatus = IsUnitGrouped(unittagplayer) 
        if groupStatus and DAS.GetGroupLeaveOnNewSearch() then 
            GroupLeave() 
        elseif groupStatus then 
            DAS.TryTriggerAutoAcceptInvite()        
        end    
        return
    end
          
    
    -- we're not auto inviting, nothing to do 
    if not DAS.autoInviting then return end
    
    
    if #messageText == 1 and messageText == stringPlus then 
        table.insert(inviteQueue, fromDisplayName)
        if not alreadyInviting then 
            popInviteQueue()
        end
        return
    end
    
    HandleChatMessage(messageText:lower(), fromDisplayName)
end