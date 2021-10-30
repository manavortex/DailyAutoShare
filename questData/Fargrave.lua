local zoneId = 1282 -- Fargrave

DAS.subzones[1283] = zoneId -- The Shambles
DAS.subzones[1286] = zoneId -- The Deadlands
DAS.subzones[1293] = zoneId -- Fargrave Outlaws Refuge / added due to it being a pathway btwn Fargrave & Shambles
DAS.subzones[1297] = zoneId -- Brandfire Reformatory
DAS.subzones[1298] = zoneId -- False Martyrs' Folly

DAS.shareables[zoneId] = {
	-- World Boss dailies, NPC = Vaveli Indavel
	GetString(DAS_MDAG_DANGE), -- Dangerous Business, Den of the Unmaker
	GetString(DAS_MDAG_MINDS), -- The Mind's Eye, Den of the Unmaker
	GetString(DAS_MDAG_UNMAK), -- Unmaker's Hoard, Den of the Unmaker
	GetString(DAS_MDAG_CAREL), -- Careless Contamination, The Abomination Cradle
	GetString(DAS_MDAG_RETRI), -- Retrieval Gone Awry, The Abomination Cradle
	GetString(DAS_MDAG_PARAL), -- A Paralyzing Lesson, The Abomination Cradle
	-- Exploration dailies, NPC = Luna Beriel
	GetString(DAS_MDAG_PROPA), -- Propaganda Suppressed, Brandfire Reformatory delve
	GetString(DAS_MDAG_BRAND), -- Brandfire Reformatory Relics, Brandfire Reformatory delve
	GetString(DAS_MDAG_FORGO), -- Forgotten Grave Goods, False Martyrs' Folly delve
	GetString(DAS_MDAG_FLOWE), -- Flowers in the Folly, False Martyrs' Folly delve
	GetString(DAS_MDAG_CLAND), -- Clandestine Communications, The Blood Pit locality
	GetString(DAS_MDAG_DISCR), -- A Discreet Pickup, The Shambles subzone
}
DAS.makeBingoTable(zoneId, {
	-- World Boss dailies, NPC = Vaveli Indavel
	"ud",
	"um",
	"uu",
	"ac",
	"ar",
	"ap",
	-- Exploration dailies, NPC = Luna Beriel
	"brps",
	"brbr",
	"fmgg",
	"fmff",
	"bpcc",
	"shdp",
})

DAS.questStarter[zoneId] = {
	[GetString(DAS_QUEST_DL_BOSS)] = true, -- Vaveli Indavel
	[GetString(DAS_QUEST_DL_EXPL)] = true, -- Luna Beriel
}

DAS.questFinisher[zoneId] = DAS.questStarter[zoneId]

local questIds = {
	-- World Boss dailies, NPC = Vaveli Indavel
	[6716] = true, -- Dangerous Business
	[6717] = true, -- The Mind's Eye
	[6718] = true, -- Unmaker's Hoard
	[6719] = true, -- Careless Contamination
	[6720] = true, -- Retrieval Gone Awry
	[6721] = true, -- A Paralyzing Lesson
	-- Exploration dailies, NPC = Luna Beriel
	[6710] = true, -- Propaganda Suppressed
	[6711] = true, -- Brandfire Reformatory Relics
	[6712] = true, -- Forgotten Grave Goods
	[6713] = true, -- Flowers in the Folly
	[6714] = true, -- Clandestine Communications
	[6715] = true, -- A Discreet Pickup
}

DAS.questIds[zoneId] = questIds

for id, _ in pairs(questIds) do
	DAS_QUEST_IDS[id] = true
end