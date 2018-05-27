DailyAutoShare              = DailyAutoShare or {}
DAS                         = DailyAutoShare
local DailyAutoShare        = DailyAutoShare

DAS.name                    = "DailyAutoshare"
DAS.version                 = "3.3.0"
DAS.author                  = "manavortex"
DAS.settings                = {}
DAS.globalSettings          = {}

DAS.shareables   	        = {}
DAS.bingo 			        = {}
DAS.bingoFallback           = {}
DAS.subzones 		        = {}
DAS.activeZoneQuests        = {}

DAS.questFinisher           = {}
DAS.questStarter            = {}
DAS.questIds                = {}
DAS.channelTypes 	        = {
    [CHAT_CHANNEL_PARTY]    = true, 
    [CHAT_CHANNEL_SAY ]     = false, 
    [CHAT_CHANNEL_YELL]     = false, 
    [CHAT_CHANNEL_ZONE]     = false,
    [CHAT_CHANNEL_WHISPER]  = false,
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
	autoHide 					= false,
	autoMinimize 				= false,
	autoShare 					= true,
	autoAcceptAllDailies 		= false,
	autoInvite 					= false,
	autoLeave 					= false,
	useGlobalSettings 			= true,
	minimised 					= false,
	locked 						= false,
	hidden 						= false,
	fontScale					= 1,
	tooltipRight 				= false,
	upsideDown 					= false,
    hideCompleted				= false,
	startupMinimized			= true,
	resetAutoShareOnNewGroup    = true,
	lastLookingFor 				= "",
	guildInviteNumber 			= 1,
	groupInviteDelay			= 500,
	questShareDelay				= 500,
	guildInviteText,
    questShareString            = "I can give a DailyAutoShare for <<1>>, type <<2>> for an instant invite",
	listenInGuilds,
    whisperOnly                 = false,
    whisperString               = "whisper + for an instant invite", 
    ["tracked"] = {
		[684] = true,
		[823] = true,
		[849] = true,	    -- Vvardenfell
		[181] = false,
		[1011] = false,     -- Summerset
	},
}

local function pointerUpSubzones()
    
      -- Summerset
    defaults[1012]                      = defaults[1011]
    defaults[1013]                      = defaults[1011]
    defaults[1014]                      = defaults[1011]
    defaults[1015]                      = defaults[1011]
    defaults[1016]                      = defaults[1011]
    defaults[1017]                      = defaults[1011]
    defaults[1018]                      = defaults[1011]
    defaults[1019]                      = defaults[1011]
    defaults.tracked[1012]              = defaults.tracked[1011]
    defaults.tracked[1013]              = defaults.tracked[1011]
    defaults.tracked[1014]              = defaults.tracked[1011]
    defaults.tracked[1015]              = defaults.tracked[1011]
    defaults.tracked[1016]              = defaults.tracked[1011]
    defaults.tracked[1017]              = defaults.tracked[1011]
    defaults.tracked[1018]              = defaults.tracked[1011]
    defaults.tracked[1019]              = defaults.tracked[1011]
    
    -- Gold Coast
    defaults[825]                       = defaults[823]
    defaults[826]                       = defaults[823]
    defaults.tracked[825]               = defaults.tracked[823]
    defaults.tracked[826]               = defaults.tracked[823]
    
    -- Capitals
    defaults[19]                       = defaults[57]
    defaults[383]                      = defaults[57]
    defaults.tracked[19]               = defaults.tracked[57]
    defaults.tracked[383]              = defaults.tracked[57]
    
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
    if not DAS.GetDebugMode() then return end
    if (not p2) then d(p1); return; end
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
	if IsUnitGrouped("player") then
        if not DAS.GetAutoShare() and DAS.GetResetAutoShareOnNewGroup() then 
            DAS.SetAutoShare(true)
        end
        return
    end
    
    if DAS.GetStopInviteOnDegroup() then DAS.SetAutoInvite(false) end
    
end

local function forceRefreshControl()
    DAS.RefreshControl(true)
end

local function OnQuestAdded(eventCode, journalIndex, questName, objectiveName)
	
	local zoneId = DAS.GetZoneId()
	if not DAS.GetActiveIn(zoneId) 			then return end
	if not GetIsQuestSharable(journalIndex) then return end	
	local shareables = DAS.shareables[zoneId] or {}
    
	if nil ~= shareables[questName] then
		DAS.LogQuest(questName, false)
		zo_callLater(forceRefreshControl, 700)
	end		
end

local function OnQuestShared(eventCode, questId)
    p(zo_strformat("<<1>> \t <<2>>", questId, questName))
	if not allDailyQuestIds[questId] then return end
	local zoneQuests = DAS.questIds[DAS.GetZoneId()] or {}
    
	if zoneQuests[questId] then
        if DAS.GetAutoDeclineShared() then 
            DAS.Report("DailyAutoShare declined a quest for you. Type /DailyAutoShare disabledecline to stop it from doing so.")
            DeclineSharedQuest(questId)
        else
            AcceptSharedQuest(questId)
            zo_callLater(forceRefreshControl, 500)
        end
    end
end

local function OnChatMessage(eventCode, channelType, fromName, messageText, _, fromDisplayName)
    return DAS.OnChatMessage(eventCode, channelType, fromName, messageText, _, fromDisplayName)
end

local function OnPlayerActivated(eventCode)
	local active 		= DAS.GetActiveIn()	
	DAS.SetHidden(not active)
    DAS.SetAutoInvite(DAS.GetAutoInvite()) -- disables if we aren't group lead
    DAS.SetChatListenerStatus(DAS.autoInviting)
    DAS.guildInviteText = DAS.GetGuildInviteText()
    DAS.cacheChatterData()
end

local function OnUnitCreated(eventCode, unitTag)
    local unitZone = GetZoneId(GetUnitZoneIndex(unitTag))
    if not DAS.GetActiveIn(unitZone) then return end
    if GetUnitDisplayName(unitTag) == cachedDisplayName then return end
    DAS.TryShareActiveDaily(unitZone)
end

local function OnQuestToolUpdate()
	forceRefreshControl()
end

local function OnQuestRemoved(eventCode, isCompleted, journalIndex, questName, zoneIndex, poiIndex, questId)	
	
    local zoneId = DAS.GetZoneId()
    local zoneIds = DAS.questIds[zoneId] or {}
    -- is it a daily quest, and are we logging?
    if not (zoneIds[questId] and DAS.GetActiveIn(zoneId)) then return end	
    
	DAS.LogQuest(questName, isCompleted)
    
    -- set auto invite off until the questlog has refreshed
	local autoInvite = DAS.GetAutoInvite()
    DAS.SetAutoInvite(false)
    
    zo_callLater(function()
        DAS.SetAutoInvite(autoInvite)	
        forceRefreshControl()
    end, 5000)
end

local function deleteYesterdaysLog()
	-- kill yesterday's log, we don't need it
	local currentDate = tonumber(GetDate())
	if (nil ~= DAS.globalSettings and nil ~= DAS.globalSettings.lastLogDate) and (DAS.globalSettings.lastLogDate < currentDate) then 
	if nil == DAS.Log then DAS.Log = {} end
		DAS.Log[DAS.globalSettings.lastLogDate] = nil
		DAS.globalSettings.lastLogDate = currentDate
	end
end

local alreadyRefreshing = false
local function questRefresh()
    alreadyRefreshing = false
    DAS.RefreshControl(true)
end
local function queueQuestRefresh()
    if alreadyRefreshing then return end
    alreadyRefreshing = true
    zo_callLater(questRefresh, 600)
end

local function hookQuestTracker()   
    ZO_PreHook(FOCUSED_QUEST_TRACKER, "ForceAssist", DAS.questTrackerUpdate)  

end

--==============================
--= DailyAutoShare_Initialize ==
--==============================

local function RegisterEventHooks()

	DailyAutoShare.Fragment 	= ZO_HUDFadeSceneFragment:New(DasControl) 
	
	SCENE_MANAGER:GetScene("hud"  ):AddFragment(DailyAutoShare.Fragment)
	SCENE_MANAGER:GetScene("hudui"):AddFragment(DailyAutoShare.Fragment)
	hookQuestTracker()
	
	em:RegisterForEvent(DAS.name, EVENT_PLAYER_ACTIVATED, 		OnPlayerActivated)
	
	em:RegisterForEvent(DAS.name, EVENT_QUEST_ADDED, 			OnQuestToolUpdate)
	em:RegisterForEvent(DAS.name, EVENT_QUEST_REMOVED, 			OnQuestRemoved)
	em:RegisterForEvent(DAS.name, EVENT_TRACKING_UPDATE, 		OnQuestToolUpdate)	
	
	em:RegisterForEvent(DAS.name, EVENT_QUEST_ADDED, 			OnQuestAdded)
	em:RegisterForEvent(DAS.name, EVENT_QUEST_REMOVED, 			OnQuestRemoved)
	em:RegisterForEvent(DAS.name, EVENT_QUEST_SHARED, 			OnQuestShared)
	
	em:RegisterForEvent(DAS.name, EVENT_GROUP_TYPE_CHANGED,     OnGroupTypeChanged)
	em:RegisterForEvent(DAS.name, EVENT_UNIT_CREATED,	 		OnUnitCreated)
	em:RegisterForEvent(DAS.name, EVENT_UNIT_DESTROYED, 		OnGroupTypeChanged)

	em:RegisterForEvent(DAS.name, EVENT_CHAT_MESSAGE_CHANNEL,   OnChatMessage)
	-- DasControl:OnMoveStop
	-- DailyAutoShare.SaveControlLocation(self)
end


local function resetQuests()
    local currentDate = tonumber(GetDate())
    DAS.todaysLog = {}
    DAS.globalSettings.completionLog[currentDate] = DAS.todaysLog
    forceRefreshControl()
end
local typeTable = "table"
local function isEmpty(tbl)
    if not tbl then return true end
    local ret = true
    for key, value in pairs(tbl) do
        if type(value) == typeTable then 
            ret = ret and isEmpty(value) 
        else
            ret = false
        end
    end
    return ret
end
-- has to be a local var, lua error if not
-- Keep outside of function namespace so we can overwrite it for debugging
local afterEight = tonumber(GetTimeString():sub(0, 2)) >= 08 
local function handleLog(forceReset)
    local allLogs = DAS.globalSettings.completionLog
    local currentDate = tonumber(GetDate())
    DAS.globalSettings.completionLog[currentDate] = DAS.globalSettings.completionLog[currentDate] or {}

    local logSize, lastDate = NonContiguousCount(DAS.globalSettings.completionLog)

    if forceReset then         
        return resetQuests()
    end
    local counter = 0 
    for dateNumber, dateLog in pairs(DAS.globalSettings.completionLog) do
        counter = counter + 1
        if dateNumber < currentDate then 
            lastDate = dateNumber
        end
        if counter < logSize-2 then 
            DAS.globalSettings.completionLog[dateNumber] = nil            
        end
    end
    
    local afterEight = tonumber(GetTimeString():sub(0, 2)) >= 08 -- has to be a local var, lua error if not
    if (not afterEight) and isEmpty(DAS.todaysLog) and lastDate ~= currentDate then 
        DAS.globalSettings.completionLog[currentDate] = ZO_DeepTableCopy(DAS.globalSettings.completionLog[lastDate], {})
        for charName, charLog in pairs(DAS.globalSettings.completionLog[currentDate]) do
            for questName, questData in pairs(charLog) do
                questData.afterEight = false
            end
        end
    end
    
    DAS.todaysLog = DAS.globalSettings.completionLog[currentDate]
end
DAS.handleLog = handleLog

local function minimiseOnStartup()    
	DAS.SetMinimized(DAS.GetSettings().startupMinimized)    
end
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
        
    -- local timetoreset = (GetTimeStamp() - 60*60*7)%86400
    -- zo_callLater(resetQuests, timetoreset)
    
    
    handleLog()
    zo_callLater(OnPlayerActivated, 5000)
    zo_callLater(minimiseOnStartup, 5500)
	EVENT_MANAGER:UnregisterForEvent("DailyAutoShare", EVENT_ADD_ON_LOADED)

end


ZO_CreateStringId("SI_BINDING_NAME_TOGGLE_DAS_GUI",  GetString(DAS_SI_TOGGLE))
ZO_CreateStringId("SI_BINDING_NAME_TOGGLE_DAS_LIST", GetString(DAS_SI_MINIMISE))
EVENT_MANAGER:RegisterForEvent("DailyAutoShare", EVENT_ADD_ON_LOADED, DailyAutoShare_Initialize)
