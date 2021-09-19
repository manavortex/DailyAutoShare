local zoneId = 101 -- Eastmarch
local NL     = "newLife"

DAS.subLists[NL] = {
	[19 ] = true, -- Stormhaven
	[41 ] = true, -- Stonefalls
	[101] = true, -- Eastmarch
	[104] = true, -- Alik'r
	[117] = true, -- Shadowfen
	[381] = true, -- Auridon
	[382] = true, -- Reaper's March
	[383] = true, -- Grahtwood
	[535] = true, -- Betnikh
}

DAS.shareables[zoneId]     = DAS.shareables[zoneId] or {}
DAS.shareables[zoneId][NL] = {
	GetString(DAS_NL_STORMHAVEN),
	GetString(DAS_NL_STONEFALLS),
	GetString(DAS_NL_ALIKR),
	GetString(DAS_NL_SHADOWFEN),
	GetString(DAS_NL_GRAHTWOOD),
	GetString(DAS_NL_REAPERSMARCH),
	GetString(DAS_NL_BETNIKH),
	GetString(DAS_NL_AURIDON),
	GetString(DAS_NL_EASTMARCH)
}
--[[
DAS.QuestLists[zoneId] = DAS.QuestLists[zoneId] or {}
DAS.QuestLists[zoneId][NL] = {
	[GetString(DAS_NL_STORMHAVEN)]    = true,
	[GetString(DAS_NL_STONEFALLS)]    = true,
	[GetString(DAS_NL_ALIKR)]         = true,
	[GetString(DAS_NL_SHADOWFEN)]     = true,
	[GetString(DAS_NL_GRAHTWOOD)]     = true,
	[GetString(DAS_NL_REAPERSMARCH)]  = true,
	[GetString(DAS_NL_BETNIKH)]       = true,
	[GetString(DAS_NL_AURIDON)]       = true,
	[GetString(DAS_NL_EASTMARCH)]     = true,
}
]]--
DAS.makeNestedZoneTable(19 , NL, GetString(DAS_NL_STORMHAVEN))   -- Stormhaven
DAS.makeNestedZoneTable(41 , NL, GetString(DAS_NL_STONEFALLS))   -- Stonefalls
DAS.makeNestedZoneTable(117, NL, GetString(DAS_NL_SHADOWFEN))    -- Shadowfen
DAS.makeNestedZoneTable(104, NL, GetString(DAS_NL_ALIKR))        -- Alik'r
DAS.makeNestedZoneTable(383, NL, GetString(DAS_NL_GRAHTWOOD))    -- Grahtwood
DAS.makeNestedZoneTable(382, NL, GetString(DAS_NL_REAPERSMARCH)) -- Reaper's March
DAS.makeNestedZoneTable(535, NL, GetString(DAS_NL_BETNIKH))      -- Betnikh
DAS.makeNestedZoneTable(381, NL, GetString(DAS_NL_AURIDON))      -- Auridon

DAS.questStarter[zoneId] = {
	[GetString(DAS_QUEST_NL_BREDA)]  = true,
	[GetString(DAS_QUEST_NL_LIZARD)] = true,
	[GetString(DAS_QUEST_NL_ORC)]    = true,
	[GetString(DAS_QUEST_NL_CAT)]    = true,
}

DAS.questFinisher[zoneId] = {
	[GetString(DAS_QUEST_NL_BREDA)]  = true,
	[GetString(DAS_QUEST_NL_LIZARD)] = true,
	[GetString(DAS_QUEST_NL_ORC)]    = true,
	[GetString(DAS_QUEST_NL_CAT)]    = true,
}

local questIds = {
	[5811] = true, -- "Snow Bear Plunge",
	[5834] = true, -- "The Trial of Five-Clawed Guile",
	[5837] = true, -- "Lava Foot Stomp",
	[5838] = true, -- "Mud Ball Merriment",
	[5839] = true, -- "Signal Fire Sprint",
	[5845] = true, -- "Castle Charm Challenge",
	[5852] = true, -- "War Orphan's Sojourn",
	[5855] = true, -- "Fish Boon Feast",
	[5856] = true, -- "Stonetooth Bash",
}

for id, _ in pairs(questIds) do
	DAS_QUEST_IDS[id] = true
end