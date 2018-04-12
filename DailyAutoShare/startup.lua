DailyAutoShare              = DailyAutoShare or {}
DAS                         = DailyAutoShare
local DailyAutoShare        = DailyAutoShare

DAS.name                    = "Daily Autoshare"
DAS.version                 = "3.0.5a"
DAS.author                  = "manavortex"
DAS.settings                = {}
DAS.globalSettings          = {}

DAS.shareables   	        = {}
DAS.bingo 			        = {}
DAS.subzones 		        = {}

DAS.questFinisher      = {}
DAS.questStarter       = {}

DAS.channelTypes 	        = {
    [CHAT_CHANNEL_PARTY]    = true, 
    [CHAT_CHANNEL_SAY ]     = false, 
    [CHAT_CHANNEL_YELL]     = false, 
    [CHAT_CHANNEL_ZONE]     = false,
}

DAS.locale 			    = GetCVar("language.2")
DAS.autoInviting        = false
DAS.guildInviteText     = nil

DAS_STATUS_COMPLETE 	= 0
DAS_STATUS_OPEN 		= 1
DAS_STATUS_ACTIVE		= 2
DAS_STATUS_TRACKED	    = 3

local activeInCurrentZone   = false
DAS.fullBingoString         = ""
local fullBingoString       = DAS.fullBingoString

local defaults = {

	

	["singleDailies"]               = {},
	["shareableDailies"]            = {},
	["speakStupid"]                 = false,
	["debug"] 		                = false,
	["keepInviteUpOnDegroup"] 		= false,
	
	["DasControl"] = {
		["x"] = 0,
		["y"] = 0,
	},
	["DasButton"] = {
		["x"] = 0,
		["y"] = 0,
	},
	["inactiveZones"]			= {
		["hide"]				= true,
	},
	[849] = {
		["relic"] = {
			["invisible"] = false,
			["active"] = true,
		},
		["hunt"] = {
			["invisible"] = false,
			["active"] = true,
		},
		["delve"] = {
			["invisible"] = false,
			["active"] = true,
		},
		["boss"] = {
			["invisible"] = false,
			["active"] = true,
		},
	},
	[980] = {
		["crow"] = {
			["invisible"] = false,
			["active"] = true,
		},
		["craft"] = {
			["invisible"] = false,
			["active"] = true,
		},
		["delve"] = {
			["invisible"] = false,
			["active"] = true,
		},
		["boss"] = {
			["invisible"] = false,
			["active"] = true,
		},
	},
    questShareString            = "I can give a DailyAutoShare for <<1>>, type <<2>> for an instant invite",
	debugOutput		   			= false,
	currentlyWithQuest 			= false,
	currentQuestIndex 			= nil,
	currentQuestName 			= nil,
	autoTrack 					= false,
	autoAcceptInvite 			= false,
	autoAcceptInviteInterval 	= 5,
	autoAcceptQuest		        = true,
	autoAcceptShared 			= true,
	autoDeclineShared 			= false,
	autoAcceptAllDailies 		= false,
	autoInvite 					= false,
	autoLeave 					= true,
	useGlobalSettings 			= true,
	minimised 					= false,
	locked 						= false,
	hidden 						= false,
	fontScale					= 1,
	tooltipRight 				= false,
	upsideDown 					= false,
	autoHide 					= false,
	autoMinimize 				= false,
	autoShare 					= true,
	hideCompleted				= false,
	lastLookingFor 				= "",
	guildInviteNumber 			= 1,
	guildInviteText,
	listenInGuilds,
    ["tracked"] = {
		[684] = true,
		[823] = true,
		[849] = true,	-- Vvardenfell
		[181] = false,
	},
}

local function pointerUpSubzones()
    
    -- Gold Coast
    defaults[825]                       = defaults[823]
    
    -- Clockwork City
    defaults[981]                       = defaults[980]
    defaults[981]                       = defaults[980]
    defaults[982]                       = defaults[980]
    defaults.tracked[982]               = defaults.tracked[980]
    defaults.tracked[983]               = defaults.tracked[980]
    defaults.tracked[983]               = defaults.tracked[980]

    -- Morrowind
    defaults[921]                       = defaults[849]
    defaults[922]                       = defaults[849]
    defaults[923]                       = defaults[849]
    defaults[924]                       = defaults[849]
    defaults[925]                       = defaults[849]
    defaults[961]                       = defaults[849]
    defaults.tracked[921]               = defaults.tracked[849]
    defaults.tracked[922]               = defaults.tracked[849]
    defaults.tracked[923]               = defaults.tracked[849]
    defaults.tracked[924]               = defaults.tracked[849]
    defaults.tracked[925]               = defaults.tracked[849]
    defaults.tracked[961]               = defaults.tracked[849]

    -- Wrothgar
    defaults[689]                       = defaults[684]
    defaults[690]                       = defaults[684]
    defaults[691]                       = defaults[684]
    defaults[692]                       = defaults[684]
    defaults[693]                       = defaults[684]
    defaults[694]                       = defaults[684]
    defaults.tracked[689]               = defaults.tracked[684]
    defaults.tracked[690]               = defaults.tracked[684]
    defaults.tracked[691]               = defaults.tracked[684]
    defaults.tracked[692]               = defaults.tracked[684]
    defaults.tracked[693]               = defaults.tracked[684]
    defaults.tracked[694]               = defaults.tracked[684]
end
pointerUpSubzones()

local characterName     = zo_strformat(GetUnitName('player'))

local allDailyQuestIds = DAS_QUEST_IDS

local em = EVENT_MANAGER

local function debugOut(p1, p2, p3, p4, p5, p6, p7, p8)
    if (not p2) then 
        d(p1) 
        return
    end
    if p8 then
        d(zo_strformat("<<1>> <<2>> <<3>> <<4>> <<5>> <<6>> <<7>> <<8>>", p1, p2, p3, p4, p5, p6, p7, p8)) 
    elseif p7 then
        d(zo_strformat("<<1>> <<2>> <<3>> <<4>> <<5>> <<6>> <<7>>", p1, p2, p3, p4, p5, p6, p7)) 
    elseif p6 then 
        d(zo_strformat("<<1>> <<2>> <<3>> <<4>> <<5>> <<6>>", p1, p2, p3, p4, p5, p6)) 
    elseif p5 then
        d(zo_strformat("<<1>> <<2>> <<3>> <<4>> <<5>>", p1, p2, p3, p4, p5)) 
    elseif p4 then
        d(zo_strformat("<<1>> <<2>> <<3>> <<4>>", p1, p2, p3, p4))    
    elseif p3 then
        d(zo_strformat("<<1>> <<2>> <<3>>", p1, p2, p3))    
    else
        d(zo_strformat("<<1>> <<2>>", p1, p2))    
    end
end
DAS.DebugOut = debugOut
local p = debugOut

function DAS.Report(text)
	if not DAS.GetShutUp() then d(text) end	
end


--==============================
--======= Event hooks  =========
--==============================

local function OnGroupTypeChanged(eventCode, unitTag)
	if IsUnitGrouped("player") or not DAS.GetStopInviteOnDegroup() then return end
	DAS.SetAutoInvite(false)
end

local function OnQuestAdded(eventCode, journalIndex, questName, objectiveName)
	
	local zoneId = DAS.GetZoneId()
	if not DAS.GetActiveIn(zoneId) 			then return end
	if not GetIsQuestSharable(journalIndex) then return end	
	
	if nil ~= DAS.GetArrayEntry(DAS.shareables[zoneId], questName) then
		DAS.LogQuest(questName, false)
		zo_callLater(function() DAS.RefreshControl(true) end, 700)
	end		
end

local function OnQuestShared(eventCode, questId)
	if not allDailyQuestIds[questId] then return end
	local questName, _, _, displayName = GetOfferedQuestShareInfo(questId)
	local zoneId = DAS.GetZoneId()
	if nil ~= DAS.GetArrayEntry(DAS.shareables[zoneId], questName) then
        if DAS.GetAutoDeclineShared() then 
            DAS.Report("DailyAutoShare declined a quest for you. Type /DailyAutoShare disabledecline to stop it from doing so.")
            DeclineSharedQuest(questId)
        else
            AcceptSharedQuest(questId)
            zo_callLater(function() DAS.RefreshControl(true) end, 500)
        end
    end
end

local function OnChatMessage(eventCode, channelType, fromName, messageText, _, fromDisplayName)
    return DAS.OnChatMessage(eventCode, channelType, fromName, messageText, _, fromDisplayName)
end

DAS.bingoFallback = {}
function DAS.makeBingoTable(zoneId, tbl) 
	DAS.bingo[zoneId] = {}    
    DAS.bingoFallback[zoneId] = {}
	for key, value in pairs(tbl) do
        if type(value) == "table" then 
            local best = value[1]
            for _, actualValue in ipairs(value) do
                DAS.bingo[zoneId][actualValue] = key
                DAS.bingoFallback[zoneId][actualValue] = best
            end
        else
            DAS.bingo[zoneId][value] = key
        end
	end
	return DAS.bingo[zoneId]
end

function DAS.getBingoTable(zoneId)
    zoneId = zoneId or DAS.GetZoneId()
    return DAS.bingo[zoneId] or {} 
end


function DAS.SetChatListenerStatus(status)

    DAS.channelTypes[CHAT_CHANNEL_SAY ]     = status
    DAS.channelTypes[CHAT_CHANNEL_YELL]     = status
    DAS.channelTypes[CHAT_CHANNEL_ZONE]     = status
	if status then
		em:RegisterForEvent("DailyAutoShare", EVENT_CHAT_MESSAGE_CHANNEL, OnChatMessage)
	else
		em:UnregisterForEvent("DailyAutoShare", EVENT_CHAT_MESSAGE_CHANNEL, OnChatMessage)
	end	
end


local function OnPlayerActivated(eventCode)
	local active 		= DAS.GetActiveIn()	
	DAS.SetHidden(not active)
    DAS.SetAutoInvite(DAS.GetAutoInvite()) -- disables if we aren't group lead
    DAS.SetChatListenerStatus(DAS.autoInviting)
	DAS.RefreshControl(true)
    DAS.guildInviteText = DAS.GetGuildInviteText()
    DAS.cacheChatterData()
end

-- local function OnGroupMemberAdded(eventCode, memberName)
	-- DAS.TryShareActiveDaily()
-- end

local function OnUnitCreated(eventCode, unitTag)
    local unitZone = GetZoneId(GetUnitZoneIndex(unitTag))
    if not DAS.GetActiveIn(unitZone) then return end
    if GetUnitDisplayName(unitTag) == cachedDisplayName then return end
    DAS.TryShareActiveDaily(unitZone)
end

local function OnQuestToolUpdate()
	DAS.RefreshControl(true)
end

local function resetQuests()
    DAS.handleLog(true)
end

local function OnQuestRemoved(eventCode, isCompleted, journalIndex, questName, zoneIndex, poiIndex, questId)	
	
    -- is it a daily quest, and are we logging?
    if not (allDailyQuestIds[questId] and DAS.GetActiveIn()) then return end	
    
	DAS.LogQuest(questName, isCompleted)
    
    -- set auto invite off until the questlog has refreshed
	local autoInvite = DAS.GetAutoInvite()
    DAS.SetAutoInvite(false)
    
    local timetoreset = (GetTimeStamp() - 1523512800)%86400
    zo_callLater(resetQuests, timetoreset)
    
    zo_callLater(function()
        DAS.SetAutoInvite(autoInvite)	
        DAS.RefreshControl(true)
    end, 1000)
end

local function deleteYesterdaysLog()
	-- kill yesterday's log, we don't need it	
	local currentDate = tonumber(GetDate())
	if (nil ~= DAS.globalSettings and nil ~= DAS.globalSettings.lastLogDate) and (DAS.globalSettings.lastLogDate < currentDate) then 
	if nil == DAS.Log then DAS.Log = {} end
		DAS.Log[DAS.globalSettings.lastLogDate] = nil
		DAS.globalSettings.lastLogDate = currentDate
	end
end

local function hookQuestTracker()
	local function refreshLabels()
		DAS.RefreshLabels(false, true)
	end
	-- SetMapToQuestZone
	ZO_PreHook(QUEST_TRACKER, "ForceAssist", refreshLabels)
end

--==============================
--= DailyAutoShare_Initialize ==
--==============================

local function RegisterEventHooks()

	DailyAutoShare.Fragment 	= ZO_HUDFadeSceneFragment:New(DasControl) 
	
	SCENE_MANAGER:GetScene("hud"  ):AddFragment(DailyAutoShare.Fragment)
	SCENE_MANAGER:GetScene("hudui"):AddFragment(DailyAutoShare.Fragment)
	hookQuestTracker()
	
	em:RegisterForEvent("DailyAutoshare", EVENT_PLAYER_ACTIVATED, 		OnPlayerActivated)
	
	em:RegisterForEvent("DailyAutoshare", EVENT_QUEST_ADDED, 			OnQuestToolUpdate)
	em:RegisterForEvent("DailyAutoshare", EVENT_QUEST_REMOVED, 			OnQuestRemoved)
	em:RegisterForEvent("DailyAutoshare", EVENT_TRACKING_UPDATE, 		OnQuestToolUpdate)	
	
	em:RegisterForEvent("DailyAutoshare", EVENT_QUEST_ADDED, 			OnQuestAdded)
	em:RegisterForEvent("DailyAutoshare", EVENT_QUEST_REMOVED, 			OnQuestRemoved)
	em:RegisterForEvent("DailyAutoshare", EVENT_QUEST_SHARED, 			OnQuestShared)
	
	
	em:RegisterForEvent("DailyAutoshare", EVENT_UNIT_CREATED,	 		OnUnitCreated)
	em:RegisterForEvent("DailyAutoshare", EVENT_UNIT_DESTROYED, 			OnGroupTypeChanged)

	-- DasControl:OnMoveStop
	-- DailyAutoShare.SaveControlLocation(self)
end

local function handleLog(forceReset)

    local currentDate = tonumber(GetDate())
    if forceReset then 
        DAS.globalSettings.completionLog[currentDate] = {}
        DAS.RefreshControl(true)
        return
    end
    
    local afterEight = tonumber(GetTimeString():sub(0, 2)) >= 08
    local lastDate
    local completionLog = DAS.globalSettings.completionLog or {}
    local logSize = NonContiguousCount(completionLog)
    local counter = 0
    for dateString, dateLog in pairs(completionLog) do
        counter = counter +1
        if counter < logSize -2 and dateString < currentDate then 
            DAS.globalSettings.completionLog[dateString] = nil 
        else
            lastDate = dateString
        end
    end
    if not afterEight then 
        DAS.globalSettings.completionLog[currentDate] = DAS.globalSettings.completionLog[dateString]
    end
    DAS.globalSettings.completionLog = completionLog
end
DAS.handleLog = handleLog
--==============================
--===== Rise, my minion!  ======
--==============================

function DailyAutoShare_Initialize(eventCode, addonName)

	if addonName ~="DailyAutoShare" then return end
    
	DailyAutoShare.settings = ZO_SavedVars:New("DAS_Settings", 0.2, nil, defaults)
	DailyAutoShare.globalSettings = ZO_SavedVars:NewAccountWide("DAS_Globals", 0.2, "DAS_Global", defaults)
    DAS.pdn = GetUnitDisplayName('player')

	RegisterEventHooks()
	
	DailyAutoShare.CreateMenu(DailyAutoShare.settings, defaults)
	DAS.CreateGui()
    
    
    zo_callLater(OnPlayerActivated, 5000)
    -- handleLog()
	EVENT_MANAGER:UnregisterForEvent("DailyAutoShare", EVENT_ADD_ON_LOADED)

end


ZO_CreateStringId("SI_BINDING_NAME_TOGGLE_DAS_GUI",  GetString(DAS_SI_TOGGLE))
ZO_CreateStringId("SI_BINDING_NAME_TOGGLE_DAS_LIST", GetString(DAS_SI_MINIMISE))
EVENT_MANAGER:RegisterForEvent("DailyAutoShare", EVENT_ADD_ON_LOADED, DailyAutoShare_Initialize)
