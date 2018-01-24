local DAS = DailyAutoShare

function DAS.GetArrayEntry(array, key)
	if nil == array or nil == key then return end
	if nil ~= array[key] then return array[key] end
	for i=1, #array do
		if DAS.IsMatch(array[i], key) then return true end
	end
end

function DAS.FindQuestOnTrackList(questName, dataList)

	dataList = dataList or DAS.GetZoneQuests()

	if nil == questName or questName == "" then return false end
	questName = string.gsub(questName, "-", "")
	
	for k, dataQuestName in pairs(dataList) do
		dataQuestName = string.gsub(dataQuestName, "-", "")
		if nil ~= string.match(string.lower(questName), string.lower(dataQuestName)) then
			return true
		end
	end

	return false
end

local function isPlayerName(otherName)
	return ((GetUnitName('player') == otherName) or (GetDisplayName() == otherName))
end
function DAS.IsPlayerName(otherName)
	return isPlayerName(otherName)
end

function DAS.CheckGroupStatus(isPlayerMessage)
	if not isPlayerMessage 					then return 				end
	if not IsUnitGrouped('player')  		then return 				end
	if not DAS.GetAutoLeave()				then return 				end
	if DAS.GetAutoInvite() 					then return 				end

	GroupLeave()
end

function DAS.TryInvite(fromDisplayName, fromName)

	if not (DAS.GetAutoInvite()) 			then return end -- do not try to invite if we shouldn't
	if isPlayerName(fromDisplayName)		then return end	-- do not try to invite ourselves
	if nil == fromDisplayName and nil == fromName then return end
	
	GroupInviteByName(fromDisplayName)
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
function DAS.TryShareActiveDaily(unitTag)

	if not DAS.GetAutoShare() then return end
	if not DAS.GetActiveIn() then return end
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
	return text
 end

function DAS.IsMatch(param1, param2)

	local ret = false
	string1 = EscapeString(tostring(param1):lower())
	string2 = EscapeString(tostring(param2):lower())

	if	((string1 ~= "") and (string2 ~= "")) then

		if string.match(string1, string2) then
			ret =  ret or true
			if ret then return ret end
		end
		if string.match(string2, string1) then
			ret =  ret or true
			if ret then return ret end
		end

	end
	return  ret or (string1 == string2)

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

	local numCompleted = NonContiguousCount(DAS.GetShareableLog())
	local numOpen = NonContiguousCount(DAS.GetZoneQuests())

	if  (numCompleted < numOpen) then return true end

	for entry, data in pairs(DAS.GetShareableLog()) do
		if not data["completed"] then return true end
	end

	return false
end

