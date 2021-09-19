local zoneId = 1207 -- The Reach, aye

DAS.subzones[1208] = zoneId -- Blackreach: Arkthzand Cavern, aye
DAS.subzones[1209] = zoneId -- Gloomreach, aye
DAS.subzones[1210] = zoneId -- Briar Rock Ruins, aye
DAS.subzones[1214] = zoneId -- Bthar-Zel, aye
-- DAS.subzones[1215] = zoneId -- Bthar-Zel Vaults, aye
DAS.subzones[1223] = zoneId -- Lost Valley Redoubt, aye
DAS.subzones[1224] = zoneId -- Nighthollow Keep, aye
DAS.subzones[1225] = zoneId -- Nchuand-Zel, aye

DAS.shareables[zoneId] = {
	-- World Boss dailies : NPC = Gwenyfe, aye
	GetString(DAS_PIKEYS_TREAS), -- 6585
	GetString(DAS_PIKEYS_GUIDE), -- 6584
	GetString(DAS_PIKEYS_NAMIR), -- 6556
	GetString(DAS_PIKEYS_NOTES), -- 6581
	GetString(DAS_PIKEYS_RUPTU), -- 6582
	GetString(DAS_PIKEYS_SCHOL), -- 6583
	-- Delve dailies : NPC = Bralthahawn, aye
	GetString(DAS_PIKEYS_MAGIC), -- 6571
	GetString(DAS_PIKEYS_CONTA), -- 6572
	GetString(DAS_PIKEYS_TAINT), -- 6567
	GetString(DAS_PIKEYS_MENAC), -- 6573
	GetString(DAS_PIKEYS_WITCH), -- 6569
	GetString(DAS_PIKEYS_TALIS), -- 6557
	-- Wayward Guardians dailies : NPC = Ardanir, aye
	GetString(DAS_PIKEYS_ALONE), -- 6603
	GetString(DAS_PIKEYS_DEFEN), -- 6604
	GetString(DAS_PIKEYS_NIGHT), -- 6605
	GetString(DAS_PIKEYS_LIGHT), -- 6602
	GetString(DAS_PIKEYS_SHRIN), -- 6606
	GetString(DAS_PIKEYS_REMNA), -- 6600
	GetString(DAS_PIKEYS_BURNA), -- 6601
	-- Harrowstorm dailies : NPC = Nelldena, aye
	GetString(DAS_PIKEYS_STORM), -- 6658 & 6559
}
DAS.makeBingoTable(zoneId, {
	-- World Boss dailies : NPC = Gwenyfe, aye
	"tre",
	"gui",
	"nam",
	"not",
	"rup",
	"req",
	-- Delve dailies : NPC = Bralthahawn, aye
	"shroom",
	"mold",
	"briar",
	"egg",
	"totem",
	"wild",
	-- Wayward Guardians dailies : NPC = Ardanir, aye
	"alone",
	"defend",
	"night",
	"light",
	"shrine",
	"deep",
	"evil",
	-- Harrowstorm dailies : NPC = Nelldena, aye
	{"hs", "harrow"},
})

DAS.questStarter[zoneId] = {
	[GetString(DAS_QUEST_MK_BOSS   )] = true,
	[GetString(DAS_QUEST_MK_DELVE  )] = true,
	[GetString(DAS_QUEST_MK_COURIER)] = true,
	[GetString(DAS_QUEST_MK_HRWSTMS)] = true,
}

DAS.questFinisher[zoneId] = DAS.questStarter[zoneId]

local questIds = {
	-- World Boss dailies : NPC = Gwenyfe, aye
	[6556] = true, -- Namira's Perversions
	[6581] = true, -- Notes of the Void
	[6582] = true, -- Ruptures in the Reach
	[6583] = true, -- The Scholar's Request
	[6584] = true, -- Guides to the Deep
	[6585] = true, -- Discarded Treasures
	-- Delve dailies : NPC = Bralthahawn, aye
	[6557] = true, -- Wild Talismans
	[6567] = true, -- The Tainted Briarheart
	[6569] = true, -- What's Hers is Ours
	[6571] = true, -- Magic Mycology
	[6572] = true, -- Strange Contamination
	[6573] = true, -- Unhatched Menace
	-- Wayward Guardians dailies : NPC = Ardanir, aye
	[6600] = true, -- Remnants of the Deep
	[6601] = true, -- To Burn Away Evil
	[6602] = true, -- The Light of Arkthzand
	[6603] = true, -- Alone in the Dark
	[6604] = true, -- Defenders of the Reach
	[6605] = true, -- The Language of the Night
	[6606] = true, -- The Lost Shrine
	-- Harrowstorm dailies : NPC = Nelldena, aye
	[6558] = true, -- Halt the Harrowstorms
	[6659] = true, -- Halt the Harrowstorms
}

DAS.questIds[zoneId] = questIds

for id, _ in pairs(questIds) do
	DAS_QUEST_IDS[id] = true
end

local prequestName, prequestId

-- Wayward Guardians dailies prerequisite, aye
prequestId = 6566
prequestName = GetQuestName(prequestId) -- A Feast of Souls
DAS.prequests[GetString(DAS_PIKEYS_REMNA)] = {
	prequestName = prequestName,
	prequestId   = prequestId,
}
DAS.prequests[GetString(DAS_PIKEYS_BURNA)] = {
	prequestName = prequestName,
	prequestId   = prequestId,
}
DAS.prequests[GetString(DAS_PIKEYS_LIGHT)] = {
	prequestName = prequestName,
	prequestId   = prequestId,
}
DAS.prequests[GetString(DAS_PIKEYS_ALONE)] = {
	prequestName = prequestName,
	prequestId   = prequestId,
}
DAS.prequests[GetString(DAS_PIKEYS_DEFEN)] = {
	prequestName = prequestName,
	prequestId   = prequestId,
}
DAS.prequests[GetString(DAS_PIKEYS_NIGHT)] = {
	prequestName = prequestName,
	prequestId   = prequestId,
}
DAS.prequests[GetString(DAS_PIKEYS_SHRIN)] = {
	prequestName = prequestName,
	prequestId   = prequestId,
}