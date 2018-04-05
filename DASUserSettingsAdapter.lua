local DAS = DailyAutoShare


-- called from settings
function DAS.GetUseGlobalSettings()
	return DAS.settings.useGlobalSettings
end
function DAS.SetUseGlobalSettings(value)
	DAS.settings.useGlobalSettings = value
end



-- called internally a lot
local function GetSettings()
	if DAS.GetUseGlobalSettings() then
		return DAS.globalSettings
	else
		return DAS.settings
	end
end

local function CanInvite(unitTag, unitName)
	if (nil == unitTag) and (nil == unitName) then
        return ((not IsUnitGrouped("player") or (IsUnitGroupLeader("player") and GetGroupSize() < GROUP_SIZE_MAX)))
    elseif(unitTag and (not IsUnitPlayer(unitTag) or IsUnitGrouped(unitTag))) then
        return false
    elseif(unitName and IsPlayerInGroup(unitName)) then
        return false
    end
    return true
end


function DAS.GetSpeakStupid()
	return GetSettings().speakStupid
end
function DAS.SetSpeakStupid(value)
	GetSettings().speakStupid = value
end

function DAS.GetDebugMode()
	return GetSettings().debugging
end
function DAS.SetDebugMode(value)
	GetSettings().debugging = value
end

-- called from settings: GUI
function DAS.GetShutUp()
	return GetSettings().shutUp
end
function DAS.SetShutUp(value)
	GetSettings().shutUp = value
end

function DAS.GetLocked()
	return GetSettings().locked
end
function DAS.SetLocked(value)
	GetSettings().locked = value
	DAS.RefreshGui()
end

function DAS.GetHidden()
	return GetSettings().hidden
end
function DAS.SetHidden(hidden)
	GetSettings().hidden = hidden
	DasControl:SetHidden(hidden)
	if hidden then
		SCENE_MANAGER:GetScene("hud"  ):RemoveFragment(DAS.Fragment)
		SCENE_MANAGER:GetScene("hudui"):RemoveFragment(DAS.Fragment)
		
	else
		SCENE_MANAGER:GetScene("hud"  ):AddFragment(DAS.Fragment)
		SCENE_MANAGER:GetScene("hudui"):AddFragment(DAS.Fragment)
		DAS.RefreshControl()
	end
	
	if not hidden then DAS.RefreshControl() end
end

function DAS.GetTooltipRight()
	return GetSettings().tooltipRight
end
function DAS.SetTooltipRight(value)
	GetSettings().tooltipRight = value
end



-- called from settings
function DAS.GetAutoTrack()
	return GetSettings().autoTrack
end
function DAS.SetAutoTrack(value)
	GetSettings().autoTrack = value
end

function DAS.GetAutoAcceptInvite()
	return DAS.settings.autoAcceptInvite
end
function DAS.SetAutoAcceptInvite(value)
	DAS.settings.autoAcceptInvite = value
end

function DAS.GetMinimized()
	return DAS.settings.minimised
end
function DAS.SetMinimized(value)
	DAS.settings.minimised = value
end

function DAS.GetAutoDeclineShared()
	return GetSettings().autoDeclineShared
end
function DAS.SetAutoDeclineShared(value)
	GetSettings().autoDeclineShared = value
end

function DAS.GetAutoAcceptShared()
	return GetSettings().autoAcceptShared
end
function DAS.SetAutoAcceptShared(value)
	GetSettings().autoAcceptShared = value
	DAS.SetButtonStates()
end

function DAS.GetStopInviteOnDegroup()
	return GetSettings().keepInviteUpOnDegroup
end
function DAS.SetStopInviteOnDegroup(value)
	GetSettings().keepInviteUpOnDegroup = value
end
function DAS.GetAutoAcceptInviteInterval()
	return GetSettings().autoAcceptInviteInterval or 0
end
function DAS.SetAutoAcceptInviteInterval(value)
	GetSettings().autoAcceptInviteInterval = value
end

function DAS.GetAutoInvite()
	return (GetSettings().autoInvite and CanInvite(nil, nil))
end
function DAS.SetAutoInvite(value)
	GetSettings().autoInvite = value
    DAS.autoInviting = value
    DailyAutoShare.channelTypes[CHAT_CHANNEL_SAY ]     = value
    DailyAutoShare.channelTypes[CHAT_CHANNEL_YELL]     = value
    DailyAutoShare.channelTypes[CHAT_CHANNEL_ZONE]     = value
	DAS.SetButtonStates()
	DAS.SetChatListenerStatus(value)
end

-- called from settings and from internal helper
function DAS.GetActiveIn(zoneIndex)
	if (nil == zoneIndex) then zoneIndex = DAS.GetZoneId() end
	zoneIndex = DAS.subzones[zoneIndex] or zoneIndex
	return GetSettings()["tracked"][zoneIndex]
end
function DAS.SetActiveIn(zoneIndex, value)
	if (nil == zoneIndex) then zoneIndex = DAS.GetZoneId() end
	GetSettings()["tracked"][zoneIndex] = value
	zo_callLater(function() DailyAutoShare.RefreshGui() end, 500)
end

local nestedLists = {
	["newLife"] = {
		19 ,
		41 ,
		117,
		104,
		383,
		382,
		535,
		381,
		381,		
	}
}
function DAS.SetActiveFor(listName, value)
	local activityValue = (value and listName) or false
	if nil ~= nestedLists[listName] then
		for index, zoneId in pairs(nestedLists[listName]) do
			DAS.SetActiveIn(zoneId, activityValue)
		end	
	end
	
end

function DAS.GetAutoShare()
	return DAS.settings.autoShare
end
function DAS.SetAutoShare(value)
	DAS.settings.autoShare = value
end

function DAS.GetAutoLeave()
	return GetSettings().autoLeave
end
function DAS.SetAutoLeave(value)
	GetSettings().autoLeave = value
end

function DAS.GetUpsideDown()
	return GetSettings().upsideDown
end
function DAS.SetUpsideDown(value)
	GetSettings().upsideDown = value
	DAS.AnchorList()
end

function DAS.GetAutoHide()
	return GetSettings().autoHide
end
function DAS.SetAutoHide(value)
	GetSettings().autoHide = value
	DAS.RefreshGui()
end

function DAS.GetAutoMinimize()
	return GetSettings().autoMinimize
end
function DAS.SetAutoMinimize(value)
	GetSettings().autoMinimize = value
	DAS.RefreshGui()
end

function DAS.GetHiddenInInactiveZones()
	return GetSettings().inactiveZones.hide
end

function DAS.SetHiddenInInactiveZones(value)
	GetSettings().inactiveZones.hide = value
	DasControl:SetHidden(value and DAS.GetActiveIn())	
end


function DAS.GetFontSize()
	return GetSettings().fontScale or 1.0
end

function DAS.SetFontSize(value)
	GetSettings().fontScale = value
	DAS.RefreshControl()
end
-- called from gui
function DAS.GetX(controlname)
	controlname = controlname or "DasControl"
	return GetSettings()[controlname].x
end
function DAS.SetX(controlname, value)
	controlname = controlname or "DasControl"
	GetSettings()[controlname]["x"] = value
end
function DAS.GetY(controlname)
	controlname = controlname or "DasControl"
	return GetSettings()[controlname]["y"]
end
function DAS.SetY(controlname, value)
	controlname = controlname or "DasControl"
	GetSettings()[controlname]["y"] = value
end

function DAS.GetGuildInviteNumber()
	return (tonumber(GetSettings().guildInviteNumber) or 0)
end
function DAS.SetGuildInviteNumber(value)
	GetSettings().guildInviteNumber = value
    DAS.channelTypes[value+11]      = true
end

function DAS.GetListenInGuilds()
	return GetSettings().listenInGuilds
end
function DAS.SetListenInGuilds(value)
	GetSettings().listenInGuilds = value
    DAS.channelTypes[CHAT_CHANNEL_GUILD_1]     = value
    DAS.channelTypes[CHAT_CHANNEL_GUILD_2]     = value
    DAS.channelTypes[CHAT_CHANNEL_GUILD_3]     = value
    DAS.channelTypes[CHAT_CHANNEL_GUILD_4]     = value
    DAS.channelTypes[CHAT_CHANNEL_GUILD_5]     = value
end

function DAS.GetGuildInviteText()
	return GetSettings().guildInviteText
end
function DAS.SetGuildInviteText(value)
	GetSettings().guildInviteText = value
    DAS.guildInviteText = value
end

function DAS.SaveControlLocation(control)
	local controlName = control:GetName()
	DAS.SetX(controlName, control:GetLeft())
	DAS.SetY(controlName, control:GetTop())
end
function DAS.LoadControlLocation(control)
	local controlName = control:GetName()
	local x = DAS.GetX(controlName) or 0
	local y = DAS.GetY(controlName) or 0

	control:ClearAnchors()
	control:SetAnchor(TOPLEFT, GuiRoot, TOPLEFT, x, y)
	
end

function DAS.GetHideCompleted()
	return GetSettings().hideCompleted
end
function DAS.SetHideCompleted(value)
	GetSettings().hideCompleted = value
end

function DAS.GetUserMinimised()
	return GetSettings().userMinimised
end
function DAS.SetUserMinimised(value)
	GetSettings().userMinimised = value
end


local function assertSettingArray(settings, dateNumber, characterName)

	local dateNumber = tonumber(GetDate()) -- 20160411
	local afterEight = (tonumber(GetTimeString():sub(0, 2)) > 08) --08:17:02
	local characterName = GetUnitName('player')
	if nil == settings[dateNumber] then settings[dateNumber] = {} end
	if nil == settings[dateNumber][characterName] then settings[dateNumber][characterName] = {} end

	return  settings[dateNumber][characterName]

end

function DAS.GetSetting(settingsArray, arrayKey)
	if not GetSettings()[settingsArray] then return false end
	return GetSettings()[settingsArray][arrayKey]
end
function DAS.SetSetting(settingsArray, arrayKey, arrayValue)
	GetSettings()[settingsArray] = DAS.settings[settingsArray] or {}
	GetSettings()[settingsArray][arrayKey] = arrayValue
end


local characterName
local dateNumber
local timeStringNumber
local settings 
local function getSettingsArray()
	dateNumber		 = dateNumber 		or tonumber(GetDate())
	characterName 	 = characterName 	or GetUnitName('player')
	timeStringNumber = timeStringNumber or tonumber(GetTimeString():sub(1,2))
	if nil == settings then
		DAS.globalSettings.completionLog = DAS.globalSettings.completionLog or {}
		DAS.globalSettings.completionLog[dateNumber] = DAS.globalSettings.completionLog[dateNumber] or {}
		DAS.globalSettings.completionLog[dateNumber][characterName] = DAS.globalSettings.completionLog[dateNumber][characterName] or {}
		settings = DAS.globalSettings.completionLog[dateNumber][characterName]
	end 
	return settings	
end

function DAS.GetCompleted(questName)

	if nil == questName or "" == questName or "string" ~= type(questName) then return false end
	questName = zo_strformat(questName)

	local settings 	 =  getSettingsArray()
	local logEntry   =  settings[questName]
	return nil ~= logEntry and logEntry.completed
	
 end
function DAS.LogQuest(questName, completed)
	if nil == questName then return end
	local settings 	 	=  getSettingsArray()
	local afterEight 	= (timeStringNumber > 08)   --08:17:02
	settings[questName] = {}
	settings[questName].completed	= completed
	settings[questName].afterEight = afterEight	
	
	DAS.RefreshQuestLogs(true)
	zo_callLater(function() DAS.RefreshGui() end, 500)
end
function DAS.GetQuestStatus(questName, questList, zoneId)
	if nil == questName or "string" ~= type(questName) then return end
	
	if nil ~= DAS.QuestNameTable[questName] then return DAS_STATUS_ACTIVE end
	if DAS.GetCompleted(questName) then 
		return DAS_STATUS_COMPLETE 
	end	
	if nil == questList then return DAS_STATUS_OPEN end
	zoneId = zoneId or DAS.GetZoneId()
	for questListName, questListData in pairs(questList) do 
		if questListData[questName] then 
			return (DAS.GetQuestListItem(zoneId, questListName, "active") and DAS_STATUS_OPEN) or DAS_STATUS_COMPLETE
		end
	end
end

function DAS.GetQuestListItem(zoneId, listName, listKey)
	if nil == zoneId or nil == listName or nil == listKey then return end
	if nil == DAS.settings[zoneId] or nil == DAS.settings[zoneId][listName] then return end
	return DAS.settings[zoneId][listName][listKey]
end

function DAS.SetQuestListItem(zoneId, listName, listKey, value)
	if nil == zoneId or nil == listName or nil == listKey then return end
	if nil == DAS.settings[zoneId] or nil == DAS.settings[zoneId][listName] then return end
	DAS.settings[zoneId][listName][listKey] = value
	zo_callLater(function() DAS.RefreshControl() end, 500)
end

function DAS.GetShareableLog()
	return getSettingsArray()
end