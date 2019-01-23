local messageQueue              = {}
local unittagplayer             = UNITTAG_PLAYER
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
local function hasBingoQuestActive(bingoIndex)
    if not bingoIndex then return end
    local activeQuests = DAS.activeZoneQuests or {}
    for _, value in pairs(activeQuests) do
        if value == bingoIndex then return true end
    end
    return false
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
    local bingoIndex = DAS.bingo[DAS.GetZoneId()][bingoCode]
    found = found or DAS.activeBingoIndices[bingoIndex]
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
local stringPlusRegex = "%+"
function DAS.OnChatMessage(eventCode, channelType, fromName, messageText, _, fromDisplayName)
    -- ignore all chat channels that aren't set
    if nil == channelTypes[channelType] then return end
    local isPlayerName = fromDisplayName:find(DAS.pdn)
    -- if we aren't listening, or if we are listening and the message's from us, ignore it
    if not (channelTypes[channelType] or isPlayerName) then return end
    -- if it's a group message, react to the group message
    if (channelType == CHAT_CHANNEL_PARTY) and (messageText:find(stringShare) or messageText:find(stringQuest)) then
       return DAS.TryShareActiveDaily()
    elseif channelType == CHAT_CHANNEL_WHISPER and messageText:find(stringPlusRegex) then
        return HandleChatMessage("+any", fromDisplayName, false)
    end
    --  d(zo_strformat("[OnChatMessage] <<1>>: <<2>>, isPlayerName: <<3>>", fromDisplayName, messageText, tostring(isPlayerName)))
    local _, result = pcall(string.find, messageText, stringPlusRegex)
    if not (result or #messageText <= 3) then return end
    if result and isPlayerName then
        local groupStatus = IsUnitGrouped(unittagplayer)
        -- needs to be == false, ignore channels that aren't on the list
        if groupStatus and (channelTypes[channelType] == false) then -- NO DON'T REFACTOR MANA
            if not DAS.GetAutoLeave() then return end
            GroupLeave()
            zo_callLater(DAS.TryTriggerAutoAcceptInvite, 5000)
        elseif not groupStatus then
            DAS.TryTriggerAutoAcceptInvite()
        end
        return
    end
    -- we're not auto inviting, nothing to do
    if not DAS.autoInviting then return end
    if #messageText == 1 and messageText == stringPlus then
        table.insert(inviteQueue, fromDisplayName)
        if not alreadyInviting then popInviteQueue() end
        return
    end
    HandleChatMessage(messageText:lower(), fromDisplayName)
end