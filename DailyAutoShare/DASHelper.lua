local DAS = DailyAutoShare

function DAS.GetArrayEntry(array, key)
	if nil == array or nil == key then return end
	if nil ~= array[key] then return array[key] end
	for i=1, #array do
		if DAS.IsMatch(array[i], key) then return true end
	end
end

function DAS.TryDisableAutoShare(fromName, messageText)
	if type(messageText) ~= "string" then return false end
	if (DAS.IsMatch(messageText, GetUnitName('player'))
	or (DAS.IsMatch(messageText, DAS.GetBingoStringFromQuestName():gsub("+", ""))
	and DAS.IsMatch(messageText "sharing")))
	then
		DAS.SetAutoShare(false)
	end
end

local sharingCooldown = false
function DAS.TryShareActiveDaily()
	if not DAS.GetAutoShare() then return end
	for _, questIndex in ipairs(DAS.GetActiveQuestIndices()) do
		if IsValidQuestIndex(questIndex) then ShareQuest(questIndex) end
	end
 end

local function EscapeString(text)
	if nil == text then return "" end
	-- escape brackets
	text = text:gsub('%(', ''):gsub('%)', '')
	text = text:gsub('%[', ''):gsub('%]', '')
	-- escape dots
	text = text:gsub('%.', '%%.')
	-- escape %
	text = text:gsub("%%", "%%%%")
	-- escape dashes
	text = text:gsub("-", "")
	return text or ""
 end

function DAS.IsMatch(param1, param2)
	
	string1 = EscapeString(tostring(param1):lower())
	string2 = EscapeString(tostring(param2):lower())

	if #string1 == 0 or #string2 == 0 then return false end
	
	return string.match(string1, string2) or string.match(string2, string2) or string1 == string2
	
	
 end

function DAS.FindInList(array, item)
	if nil == item then return false end
	for _,v in pairs(array) do
		if v == item then return true end
		if tostring(v):match(tostring(item)) then return true end

    end
	return false
end

function DAS.TryTriggerAutoAcceptInvite()
	if tonumber(DAS.GetAutoAcceptInviteInterval()) > 0 then
		DAS.SetAutoAcceptInvite(true)
		zo_callLater(function() DAS.SetAutoAcceptInvite(false) end, (tonumber(DAS.GetAutoAcceptInviteInterval())*1000))
	end
end

function DAS.HandleGroupMessage(fromDisplayName, messageText)	
	if DAS.IsMatch(messageText, "stop") then
		DAS.TryDisableAutoShare(fromDisplayName, messageText)
	end
end

function DAS.IsListeningInGuildChannel(guildNumber)
	return ((guildNumber == DAS.GetGuildInviteNumber()) or DAS.GetListenInGuilds())
end

function DAS.CheckIfGroupMessage(channelType)
	return DAS.FindInList({2, 3}, tonumber(channelType))
end

function DAS.CheckIfPublicMessage(channelType)
	return nil ~= channelType and DAS.FindInList({CHAT_CHANNEL_SAY, CHAT_CHANNEL_ZONE, CHAT_CHANNEL_YELL}, tonumber(channelType))
end

function DAS.CheckIfGuildMessage(channelType)

	if nil == channelType then return false end
	local guildNumber = tonumber(channelType)- 11

	if (guildNumber > 0 and guildNumber < 6) then
		return ((guildNumber == DAS.GetGuildInviteNumber()) or DAS.GetListenInGuilds())
	end
	return false
end

function DAS.OpenDailyPresent()

	local numCompleted 	= NonContiguousCount(DAS.GetShareableLog())
	local numOpen 		= NonContiguousCount(DAS.GetZoneQuests())

	if  (numCompleted < numOpen) then return true end

	for entry, data in pairs(DAS.GetShareableLog()) do
		if not data["completed"] then return true end
	end

	return false
end

function DAS.HasActiveDaily()
	return #DAS.GetActiveQuestNames() > 0
end

