DailyAutoShare              = DailyAutoShare or {}
DAS                         = DailyAutoShare

DAS.name                    = "DailyAutoShare"
DAS.version                 = "3.4.0"
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
DAS.activeBingoIndices      = {}
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

UNITTAG_PLAYER              = UNITTAG_PLAYER or "player"

local defaults = {
	
	debugging		   			= false,
	keepInviteUpOnDegroup 		= false,
	
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
	autoAcceptInvite 			= false,
	autoAcceptInviteInterval 	= 5,
    
	autoAcceptQuest		        = true,
	autoAcceptShared 			= true,
    
	autoDeclineShared 			= false,
    
	autoHide 					= false,
	autoMinimize 				= false,
    
	minimised 					= false,
	locked 						= false,
	hidden 						= false,
    
	autoShare 					= true,
	autoInvite 					= false,
	autoLeave 					= false,
    
	useGlobalSettings 			= true,
    
	fontScale					= 0.8,
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
    tracked = {
		[684]  = true,
		[823]  = true,
		[849]  = true,	    -- Vvardenfell
		[181]  = false,
		[1011] = true,     -- Summerset
	},
}

local function pointerUpSubzones()
    
    local settings = DAS.GetSettings()
      -- Summerset
    settings[1012]                      = settings[1011]
    settings[1013]                      = settings[1011]
    settings[1014]                      = settings[1011]
    settings[1015]                      = settings[1011]
    settings[1016]                      = settings[1011]
    settings[1017]                      = settings[1011]
    settings[1018]                      = settings[1011]
    settings[1019]                      = settings[1011]
    settings.tracked[1012]              = settings.tracked[1011]
    settings.tracked[1013]              = settings.tracked[1011]
    settings.tracked[1014]              = settings.tracked[1011]
    settings.tracked[1015]              = settings.tracked[1011]
    settings.tracked[1016]              = settings.tracked[1011]
    settings.tracked[1017]              = settings.tracked[1011]
    settings.tracked[1018]              = settings.tracked[1011]
    settings.tracked[1019]              = settings.tracked[1011]
    
    -- Gold Coast
    settings[825]                       = settings[823]
    settings[826]                       = settings[823]
    settings.tracked[825]               = settings.tracked[823]
    settings.tracked[826]               = settings.tracked[823]
    
    -- Capitals
    settings[19]                       = settings[57]
    settings[383]                      = settings[57]
    settings.tracked[19]               = settings.tracked[57]
    settings.tracked[383]              = settings.tracked[57]
    
    -- Clockwork City
    settings[981]                       = settings[980]
    settings[981]                       = settings[980]
    settings[982]                       = settings[980]
    settings.tracked[982]               = settings.tracked[980]
    settings.tracked[983]               = settings.tracked[980]
    settings.tracked[983]               = settings.tracked[980]

    -- Morrowind
    settings[921]                       = settings[849]
    settings[922]                       = settings[849]
    settings[923]                       = settings[849]
    settings[924]                       = settings[849]
    settings[925]                       = settings[849]
    settings[961]                       = settings[849]
    settings.tracked[921]               = settings.tracked[849]
    settings.tracked[922]               = settings.tracked[849]
    settings.tracked[923]               = settings.tracked[849]
    settings.tracked[924]               = settings.tracked[849]
    settings.tracked[925]               = settings.tracked[849]
    settings.tracked[961]               = settings.tracked[849]

    -- Wrothgar
    settings[689]                       = settings[684]
    settings[690]                       = settings[684]
    settings[691]                       = settings[684]
    settings[692]                       = settings[684]
    settings[693]                       = settings[684]
    settings[694]                       = settings[684]
    settings.tracked[689]               = settings.tracked[684]
    settings.tracked[690]               = settings.tracked[684]
    settings.tracked[691]               = settings.tracked[684]
    settings.tracked[692]               = settings.tracked[684]
    settings.tracked[693]               = settings.tracked[684]
    settings.tracked[694]               = settings.tracked[684]
end

local characterName     = zo_strformat(GetUnitName(UNITTAG_PLAYER))

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
	if IsUnitGrouped(UNITTAG_PLAYER) then
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
    local bingoIndex = DAS.GetBingoIndexFromQuestName(questName) or 0
    DAS.activeBingoIndices[bingoIndex] = true
	if nil ~= shareables[questName] then
		DAS.LogQuest(questName, false)
		zo_callLater(forceRefreshControl, 700)
	end		
end

local function OnQuestShared(eventCode, questId)
    local questName =  GetOfferedQuestShareInfo(questId)
    p(zo_strformat("<<1>> \t <<2>>", questId, questName))
	local zoneQuestIds = DAS.questIds[DAS.GetZoneId()] or {}
	if not (zoneQuestIds[questName] or DAS_QUEST_IDS[questId]) and DAS.GetActiveIn(zoneId) then return end	
    
	if zoneQuestIds[questId] then        
            AcceptSharedQuest(questId)
            zo_callLater(forceRefreshControl, 500)
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
    if not ((zoneIds[questName] or DAS_QUEST_IDS[questId]) and DAS.GetActiveIn(zoneId)) then return end	
    
	DAS.LogQuest(questName, isCompleted)
    
    -- set auto invite off until the questlog has refreshed
	local autoInvite = DAS.GetAutoInvite()
    DAS.SetAutoInvite(false)
    
    local bingoIndex = DAS.GetBingoIndexFromQuestName(questName) or 0
    DAS.activeBingoIndices[bingoIndex] = false
    if DAS.trackedIndex == journalIndex then 
        DAS.trackedIndex = 99
    end
    
    zo_callLater(function()
        DAS.SetAutoInvite(autoInvite)
        forceRefreshControl()
        DAS.RefreshLabelsWithDelay()
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
    if FOCUSED_QUEST_TRACKER and FOCUSED_QUEST_TRACKER.ForceAssist then
        ZO_PreHook(FOCUSED_QUEST_TRACKER, "ForceAssist", queueQuestRefresh)  
    end

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
            ret = ret and ({} == value or isEmpty(value))
        else
            ret = false
        end       
    end
    return ret
end


-- has to be a local var, lua error if not
-- Keep outside of function namespace so we can overwrite it for debugging
local afterEight = tonumber(GetTimeString():sub(0, 2)) >= 08 

local function handleLog(forceNoAfterEight)

    local todaysLog = DAS.GetSettingsArray()
    if {} ~= todaysLog then 
        todaysLog = ZO_DeepTableCopy(todaysLog, {}) 
    end
    
    local allLogs = DAS.globalSettings.completionLog
    local currentDate = tonumber(GetDate())
    allLogs[currentDate] = allLogs[currentDate] or {}

    local logSize, lastDate = NonContiguousCount(DAS.globalSettings.completionLog)

    local counter = 0 
    for dateNumber, dateLog in pairs(DAS.globalSettings.completionLog) do
        counter = counter + 1
        if nil ~= dateNumber and dateNumber < currentDate then 
            lastDate = dateNumber
        end
        if counter < logSize-2 then 
            DAS.globalSettings.completionLog[dateNumber] = nil            
        end
    end
    
    local afterEight = not forceNoAfterEight and tonumber(GetTimeString():sub(0, 2)) >= 08 -- has to be a local var, lua error if not
    
    if (not afterEight) and isEmpty(DAS.todaysLog) and lastDate ~= currentDate then
        local lastLog = DAS.globalSettings.completionLog[lastDate]
        DAS.globalSettings.completionLog[currentDate] = ZO_DeepTableCopy(lastLog, {})
        d(DAS.globalSettings.completionLog[currentDate])
        for charName, charLog in pairs(DAS.globalSettings.completionLog[currentDate]) do
            for questName, questData in pairs(charLog) do
                questData.afterEight = false
            end
        end
        characterName                   = characterName or GetUnitName(UNITTAG_PLAYER)
        DAS.todaysLog                   = DAS.globalSettings.completionLog[currentDate]
	DAS.todaysCharacterLog              = DAS.todaysLog[characterName]
    end
end
DAS.handleLog = handleLog   -- expose this for debugging purpose

local function minimiseOnStartup()    
	DAS.SetMinimized(DAS.GetSettings().startupMinimized)    
end
--==============================
--===== Rise, my minion!  ======
--==============================

function DailyAutoShare_Initialize(eventCode, addonName)

	if addonName ~= DAS.name then return end
    
	DAS.settings        = ZO_SavedVars:New(             "DAS_Settings", 2, "DAS_Settings", defaults)
	DAS.globalSettings  = ZO_SavedVars:NewAccountWide(  "DAS_Globals",  2, "DAS_Globals",  defaults)
    DAS.pdn = GetUnitDisplayName(UNITTAG_PLAYER)

    pointerUpSubzones()
	RegisterEventHooks()
	
	DAS.CreateMenu(DAS.settings, defaults)
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
