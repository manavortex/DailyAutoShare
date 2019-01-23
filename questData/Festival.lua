local zoneId	= 101
local tbl = {}
local NL = "newLife"

DAS.subLists[NL] = {
  19 ,
  41 ,
  101,
  104,
  117,
  383,
  382,
  535,  -- Bethnik
  381,
}

for _, zoneId in pairs(DAS.subLists[NL]) do
  DAS.festivals[zoneId] = NL
end

table.insert(tbl, GetString(DAS_NL_STORMHAVEN))
table.insert(tbl, GetString(DAS_NL_STONEFALLS))
table.insert(tbl, GetString(DAS_NL_ALIKR))
table.insert(tbl, GetString(DAS_NL_SHADOWFEN))
table.insert(tbl, GetString(DAS_NL_GRAHTWOOD))
table.insert(tbl, GetString(DAS_NL_REAPERSMARCH))
table.insert(tbl, GetString(DAS_NL_BETNIKH))
table.insert(tbl, GetString(DAS_NL_AURIDON))
table.insert(tbl, GetString(DAS_NL_EASTMARCH))

local function makeNestedZoneTable(tmpZoneId, quest)
	DAS.shareables[tmpZoneId] 				  = DAS.shareables[tmpZoneId] or {}
	DAS.bingo[tmpZoneId]			 		      = DAS.bingo[tmpZoneId] 		  or {}
	DAS.shareables[tmpZoneId][NL] 	    = {}
	table.insert(DAS.shareables[tmpZoneId][NL], quest)
  DAS.bingo[tmpZoneId][quest] =  NL
end

DAS.shareables[zoneId]      = DAS.shareables[zoneId] or {}
DAS.shareables[zoneId][NL]  = tbl
DAS.QuestLists[zoneId] = {
	[NL] = {
		[GetString(DAS_NL_STORMHAVEN)]    = true,
		[GetString(DAS_NL_STONEFALLS)]    = true,
		[GetString(DAS_NL_ALIKR)]         = true,
		[GetString(DAS_NL_SHADOWFEN)]     = true,
		[GetString(DAS_NL_GRAHTWOOD)]     = true,
		[GetString(DAS_NL_REAPERSMARCH)]  = true,
		[GetString(DAS_NL_BETNIKH)]       = true,
		[GetString(DAS_NL_AURIDON)]       = true,
		[GetString(DAS_NL_EASTMARCH)]     = true,
	},
}
makeNestedZoneTable(19 ,	GetString(DAS_NL_STORMHAVEN))   -- Stormhaven
makeNestedZoneTable(41 ,	GetString(DAS_NL_STONEFALLS))   -- Stonefalls
makeNestedZoneTable(117,	GetString(DAS_NL_SHADOWFEN))    -- Shadowfen
makeNestedZoneTable(104,	GetString(DAS_NL_ALIKR))        -- Alik'r
makeNestedZoneTable(383,	GetString(DAS_NL_GRAHTWOOD))    -- Grahtwood
makeNestedZoneTable(382,	GetString(DAS_NL_REAPERSMARCH)) -- Reaper's March
makeNestedZoneTable(535,	GetString(DAS_NL_BETNIKH))      -- Betnikh
makeNestedZoneTable(381,	GetString(DAS_NL_AURIDON))      -- Auridon

DAS.questStarter[zoneId] = {
  [GetString(DAS_QUEST_NL_BREDA)]   = true,
  [GetString(DAS_QUEST_NL_LIZARD)]  = true,
  [GetString(DAS_QUEST_NL_ORC)]     = true,
  [GetString(DAS_QUEST_NL_CAT)]     = true,
}

DAS.questFinisher[zoneId] = {
  [GetString(DAS_QUEST_NL_BREDA)]   = true,
  [GetString(DAS_QUEST_NL_LIZARD)]  = true,
  [GetString(DAS_QUEST_NL_ORC)]     = true,
  [GetString(DAS_QUEST_NL_CAT)]     = true,
}