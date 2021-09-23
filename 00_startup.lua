DailyAutoShare              = DailyAutoShare or {}
DAS                         = DailyAutoShare
DAS_QUEST_IDS               = {}
DAS.name                    = "DailyAutoShare"
DAS.version                 = "4.1.2"
DAS.author                  = "manavortex"
DAS.settings                = {}
DAS.globalSettings          = {}
DAS.shareables   	          = {}
DAS.bingo 			            = {}
DAS.bingoFallback           = {}
DAS.subzones 		            = {}
DAS.activeZoneQuests        = {}
DAS.questFinisher           = {}
DAS.questStarter            = {}
DAS.questIds                = {}
DAS.activeBingoIndices      = {}
DAS.prequests               = {}
DAS.subLists           = {}
DAS.trackedListZones		= {}
DAS.QuestLists              = {}
DAS.QuestListTitles         = {}
DAS.channelTypes 	          = {
  [CHAT_CHANNEL_PARTY]    = true,
  [CHAT_CHANNEL_SAY ]     = false,
  [CHAT_CHANNEL_YELL]     = false,
  [CHAT_CHANNEL_ZONE]     = false,
  [CHAT_CHANNEL_WHISPER]  = true,
}
DAS.locale 			            = GetCVar("language.2")
DAS.autoInviting            = false
DAS.guildInviteText         = nil
DAS_STATUS_COMPLETE 	      = 0
DAS_STATUS_OPEN 		        = 1
DAS_STATUS_ACTIVE		        = 2
DAS_STATUS_TRACKED	        = 3
local activeInCurrentZone   = false
DAS.fullBingoString         = ""
local fullBingoString       = DAS.fullBingoString
UNITTAG_PLAYER              = UNITTAG_PLAYER or "player"
local defaults = {
	debugging		   			= false,
	keepInviteUpOnDegroup 		= false,
	DasControl = {
		x = 0,
		y = 0,
  },
	DasButton = {
		x = 0,
		y = 0,
  },
	inactiveZones			= {
    hide				= true,
  },
  -- Morrowind
	[849] = {
		relic = {
			invisible = false,
			active = true,
    },
		hunt = {
      invisible = false,
			active = true,
    },
		delve = {
			invisible = false,
			active = true,
    },
		boss = {
			invisible = false,
			active = true,
    },
  },
  -- Clockwork
	[980] = {
		crow = {
			invisible = false,
			active = true,
    },
		craft = {
			invisible = false,
			active = true,
    },
		delve = {
			invisible = false,
			active = true,
    },
		boss = {
			invisible = false,
			active = true,
    },
  },
  -- Murkmire
  [726] = {
		root = {
			invisible = false,
			active = true,
    },
		delve = {
			invisible = false,
			active = true,
    },
		boss = {
			invisible = false,
			active = true,
    },
  },
	-- Guilds
	[57] = {
		fg = {
			invisible = false,
			active = true,
		},
		mg = {
			invisible = false,
			active = true,
		},
		ud = {
			invisible = false,
			active = true,
		},
	},
  questShareString            = "I can give a DailyAutoShare for <<1>>, type <<2>> for an instant invite",
  whisperString               = "whisper + for an instant invite",
	guildInviteText = nil,
	listenInGuilds = false,
  whisperOnly                 = false,
	autoAcceptInvite 			      = false,
	autoAcceptInviteInterval 	  = 5,
	autoAcceptQuest		          = true,
	autoAcceptShared 			      = true,
	autoDeclineShared 			    = false,
	autoHide 					          = false,
	autoMinimize 				        = false,
	minimised 					        = false,
	locked 						          = false,
	hidden 						          = false,
	autoShare 					        = true,
	autoInvite 					        = false,
	autoLeave 					        = false,
	useGlobalSettings 			    = true,
	fontScale					          = 0.8,
	tooltipRight 				        = false,
	upsideDown 					        = false,
  hideCompleted				        = false,
	startupMinimized			      = true,
	resetAutoShareOnNewGroup    = true,
	lastLookingFor 				      = "",
	guildInviteNumber 			    = 1,
	groupInviteDelay			      = 500,
	questShareDelay				      = 500,
  mapMarkersVisible           = true,
	tracked = {
		[1261] = true, -- Blackwood
		[980]  = true, -- Clockwork City
		[888]  = true, -- Craglorn
		[181]  = true, -- Cyrodiil
		[823]  = true, -- Gold Coast
		[816]  = true, -- Hew's Bane
		[726]  = true, -- Murkmire
		[1086] = true, -- Northern Elsweyr
		[1207] = true, -- The Reach
		[1133] = true, -- Southern Elsweyr
		[1011] = true, -- Summerset
		[849]  = true, -- Vvardenfell
		[684]  = true, -- Wrothgar
	},
  trackedLists = {
    newLife = false,
    guilds  = true,
    fg      = true,
    mg      = true,
    ud      = false,
  }
}
local function pointerUpSubzones()
	local settings = DAS.GetSettings()
	-- Capitals
	settings[19]          = settings[57]
	settings[383]         = settings[57]
	settings.tracked[19]  = settings.tracked[57]
	settings.tracked[383] = settings.tracked[57]
	-- Clockwork City
	settings[981]         = settings[980]
	settings[983]         = settings[980]
	settings.tracked[981] = settings.tracked[980]
	settings.tracked[983] = settings.tracked[980]
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
local groupSize = 0
local function HandleGroupResize()
	if not (DAS.GetAutoShare() and DAS.GetActiveIn()) then return end
	local newGroupSize = GetGroupSize()
	if newGroupSize > groupSize then
		p(zo_strformat("[DAS] Group size changed from <<1>> to <<2>>, sharing the dailies", groupSize, newGroupSize))
		DAS.TryShareActiveDaily()
	end
	groupSize = newGroupSize
end

---EVENT_GROUP_UPDATE
local function OnGroupUpdate()
	HandleGroupResize()
end

---EVENT_GROUP_MEMBER_LEFT
---@param _ any _eventCode_
---@param _ string _memberCharacterName_
---@param _ any _reason_
---@param isLocalPlayer boolean _isLocalPlayer_
---@param _ boolean _isLeader_
---@param _ string _memberDisplayName_
---@param _ boolean _actionRequiredVote_
local function OnGroupMemberLeft(_, _, _, isLocalPlayer)
	if isLocalPlayer then
		groupSize = 0
		if not DAS.GetAutoShare() and DAS.GetResetAutoShareOnNewGroup() then
			DAS.SetAutoShare(true)
		end
		if DAS.GetStopInviteOnDegroup() then DAS.SetAutoInvite(false) end
	end
end

local function forceRefreshControl() DAS.RefreshControl(true) end
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
local questSharePending = false
local questLoopInterval = 500
local function stopAcceptQuestLoop(eventCode, journalIndex)
  if not questSharePending then
    ShareQuest(journalIndex)
    return
  end
  questSharePending = nil ~= GetOfferedQuestShareIds()
  questLoopInterval = 500
end
local function acceptQuestLoop()
  if not questSharePending then return end
  for id, _ in pairs(GetOfferedQuestShareIds()) do
    AcceptSharedQuest(id)
  end
  questLoopInterval = questLoopInterval + questLoopInterval*0.5
  zo_callLater(acceptQuestLoop, questLoopInterval)
end
local function OnQuestShared(_, questId)
	if not (DAS.GetActiveIn()) and DAS.settings.autoAcceptShared  then return end
	local questName     =  GetOfferedQuestShareInfo(questId)
	p(zo_strformat("<<1>> \t <<2>>", questId, questName))
	local zoneQuestIds  = DAS.questIds[DAS.GetZoneId()] or {}
	local zoneQuests    = DAS.GetZoneQuests() or {}
	if not (zoneQuestIds[questId] or DAS_QUEST_IDS[questId] or ZO_IsElementInNumericallyIndexedTable(zoneQuests, questName)) then return end
	AcceptSharedQuest(questId)
	em:RegisterForEvent(DAS.name, EVENT_QUEST_ADDED, stopAcceptQuestLoop)
	zo_callLater(forceRefreshControl, 500)
end
local function OnChatMessage(...)
   DAS.OnChatMessage(...)
end
local function OnPlayerActivated()
	DAS.SetHidden(not DAS.GetActiveIn())
	DAS.SetAutoInvite(DAS.GetAutoInvite()) -- disables if we aren't group lead
	DAS.SetChatListenerStatus(DAS.autoInviting)
	DAS.SetListenInGuilds(DAS.GetSettings().listenInGuilds)
	local guildInviteNumber = DAS.GetSettings().guildInviteNumber
	if guildInviteNumber then
		DAS.SetGuildInviteNumber(guildInviteNumber)
	end
	DAS.guildInviteText = DAS.GetGuildInviteText()
	DAS.cacheChatterData()
	HandleGroupResize()
end
local function OnQuestToolUpdate()
  forceRefreshControl()
end
local function OnQuestRemoved(_, isCompleted, journalIndex, questName, zoneIndex, _, questId)
	local zoneId = GetZoneId(zoneIndex)
	local zoneIds = DAS.questIds[zoneId] or {}
	-- is it a daily quest, and are we logging?
	if not ((zoneIds[questId] or DAS_QUEST_IDS[questId]) and DAS.GetActiveIn(zoneId)) then return end
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
		DAS.questCacheNeedsRefresh = true
		forceRefreshControl()
	end, 5000)
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
	SecurePostHook(FOCUSED_QUEST_TRACKER, "ForceAssist", queueQuestRefresh)
	SecurePostHook(FOCUSED_QUEST_TRACKER, "AssistNext", queueQuestRefresh)
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
	em:RegisterForEvent(DAS.name, EVENT_GROUP_UPDATE,			OnGroupUpdate)
	em:RegisterForEvent(DAS.name, EVENT_GROUP_MEMBER_JOINED, 	OnGroupUpdate)
	em:RegisterForEvent(DAS.name, EVENT_GROUP_MEMBER_LEFT, 		OnGroupMemberLeft)
	em:RegisterForEvent(DAS.name, EVENT_CHAT_MESSAGE_CHANNEL,   OnChatMessage)
	-- DasControl:OnMoveStop
	-- DailyAutoShare.SaveControlLocation(self)
end
--==============================
--===== Rise, my minion!  ======
--==============================
function DailyAutoShare_Initialize(eventCode, addonName)
	if addonName ~= DAS.name then return end
	em:UnregisterForEvent("DailyAutoShare", EVENT_ADD_ON_LOADED)
	DAS.settings        = ZO_SavedVars:New(             "DAS_Settings", 2, "DAS_Settings", defaults)
	DAS.globalSettings  = ZO_SavedVars:NewAccountWide(  "DAS_Globals",  2, "DAS_Globals",  defaults)
	DAS.globalSettings.completionLog = DAS.globalSettings.completionLog or {}
	DAS.pdn = GetUnitDisplayName(UNITTAG_PLAYER)

	pointerUpSubzones()

	DAS.CacheTrackedQuestLists()

	RegisterEventHooks()

	DAS.CreateMenu(DAS.settings, defaults)
	DAS.SetMinimised(DAS.GetSettings().startupMinimized)
	DAS.CreateGui()

	DAS.handleLog()

	DAS.CreateMapMarkers()
end
ZO_CreateStringId("SI_BINDING_NAME_TOGGLE_DAS_GUI",  GetString(DAS_SI_TOGGLE))
ZO_CreateStringId("SI_BINDING_NAME_TOGGLE_DAS_LIST", GetString(DAS_SI_MINIMISE))
EVENT_MANAGER:RegisterForEvent("DailyAutoShare", EVENT_ADD_ON_LOADED, DailyAutoShare_Initialize)