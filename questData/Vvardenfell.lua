local zoneId = 849 -- Vvardenfell

DAS.subzones[921] = zoneId -- Khartag Point
DAS.subzones[922] = zoneId -- Zainsipilu
DAS.subzones[923] = zoneId -- Matus-Akin Egg Mine
DAS.subzones[924] = zoneId -- Pulk
DAS.subzones[925] = zoneId -- Nchuleft
DAS.subzones[961] = zoneId -- Ashalmawia

DAS.QuestListTitles[zoneId] = {
	[1] = GetString(DAS_LIST_M_RELIC),
}
DAS.QuestListTitles[921] = DAS.QuestListTitles[zoneId]
DAS.QuestListTitles[922] = DAS.QuestListTitles[zoneId]
DAS.QuestListTitles[923] = DAS.QuestListTitles[zoneId]
DAS.QuestListTitles[924] = DAS.QuestListTitles[zoneId]
DAS.QuestListTitles[925] = DAS.QuestListTitles[zoneId]
DAS.QuestListTitles[961] = DAS.QuestListTitles[zoneId]
DAS.shareables[zoneId] = {
	-- Relic dailies (Ald'ruhn) sub-list
	{
		GetString(DAS_M_REL_ASHAL),
		GetString(DAS_M_REL_ASSAR),
		GetString(DAS_M_REL_ASHUR),
		GetString(DAS_M_REL_DUSHA),
		GetString(DAS_M_REL_EBERN),
		GetString(DAS_M_REL_MAELK),
		GetString(DAS_M_REL_YASAM),
	},
	-- Hunt dailies (Ald'ruhn)
	GetString(DAS_M_HUNT_EATER),
	GetString(DAS_M_HUNT_ZEXXI),
	GetString(DAS_M_HUNT_RAZOR),
	GetString(DAS_M_HUNT_JAGGE),
	GetString(DAS_M_HUNT_STOMP),
	GetString(DAS_M_HUNT_TARRA),
	GetString(DAS_M_HUNT_SVEET),
	-- Delve dailies (Hall of Justice)
	GetString(DAS_M_DELVE_DAEDR),
	GetString(DAS_M_DELVE_KWAMA),
	GetString(DAS_M_DELVE_MISIN),
	GetString(DAS_M_DELVE_TAXES),
	GetString(DAS_M_DELVE_TRIBA),
	GetString(DAS_M_DELVE_SYNDI),
	-- World Boss dailies (Hall of Justice)
	GetString(DAS_M_BOSS_WUYWU),
	GetString(DAS_M_BOSS_SWARM),
	GetString(DAS_M_BOSS_NILTH),
	GetString(DAS_M_BOSS_SALOT),
	GetString(DAS_M_BOSS_SIREN),
	GetString(DAS_M_BOSS_APPRE),
	-- Relic dailies (Ald'ruhn)
	GetString(DAS_M_REL_ASHAL),
	GetString(DAS_M_REL_ASSAR),
	GetString(DAS_M_REL_ASHUR),
	GetString(DAS_M_REL_DUSHA),
	GetString(DAS_M_REL_EBERN),
	GetString(DAS_M_REL_MAELK),
	GetString(DAS_M_REL_YASAM)
}
DAS.makeBingoTable(zoneId, {
	-- Relic dailies (Ald'ruhn) sub-list
	"relic",
	-- Hunt dailies (Ald'ruhn)
	"ash",
	"zexxin",
	"razor",
	"claw",
	"stomper",
	"tarra",
	"sveeth",
	-- Delve dailies (Hall of Justice)
	"daedra",
	"kwama",
	"counterspy",
	"taxes",
	"tribe",
	"syndicate",
	-- World Boss dailies (Hall of Justice)
	{"wuyu", "wyu", "wuyuvus", "wuju", "sul", "sulipund"},
	{"queen", "swarm", "consort", "qc"},
	{"nil", "nilthog", "oxen"},
	{"salo", "salothan", "sal"},
	{"siren", "song", "songbird", "ss", "sirene"},
	{"dub", "dubdil" },
	-- Relic dailies (Ald'ruhn)
	"ashal",
	"assar",
	"ashur",
	"dushar",
	"eber",
	"maelk",
	"yasam",
})

DAS.questStarter[zoneId] = {
	[GetString(DAS_QUEST_M_BELERU   )] = true, -- Hall of Justice
	[GetString(DAS_QUEST_M_TRAYLAN  )] = true, -- Hall of Justice
	[GetString(DAS_QUEST_M_ASHLANDER)] = true, -- Ashlander Hunt
	[GetString(DAS_QUEST_M_NUMANI   )] = true, -- Ashlander Relics
	[GetString(DAS_QUEST_M_RIVYN    )] = true, -- Battlegrounds
}
DAS.questFinisher[zoneId] = {
	[GetString(DAS_QUEST_M_ASHLANDER)] = true,
	[GetString(DAS_QUEST_M_NUMANI   )] = true,
	[GetString(DAS_QUEST_M_NARA     )] = true,
	[GetString(DAS_QUEST_M_TRAYLAN  )] = true,
	[GetString(DAS_QUEST_M_BELERU   )] = true,
	[GetString(DAS_QUEST_M_NUMANI   )] = true,
	[GetString(DAS_QUEST_M_NARA     )] = true,
	[GetString(DAS_QUEST_M_TIRVINA  )] = true,
	[GetString(DAS_QUEST_M_DINOR    )] = true,
	[GetString(DAS_QUEST_M_BRAVOSI  )] = true,
	[GetString(DAS_QUEST_M_IVULEN   )] = true,
	[GetString(DAS_QUEST_M_SAVILE   )] = true,
	[GetString(DAS_QUEST_M_KYLIA    )] = true,
	[GetString(DAS_QUEST_M_EVOS     )] = true,
	[GetString(DAS_QUEST_M_ALVES    )] = true,
	[GetString(DAS_QUEST_M_DREDASE  )] = true,
	[GetString(DAS_QUEST_M_VORAR    )] = true,
	[GetString(DAS_QUEST_M_VALGA    )] = true,
	[GetString(DAS_QUEST_M_RIVYN    )] = true, -- Battlegrounds
}

DAS.QuestLists[zoneId] = {
	["relic"] = {
		[GetString(DAS_M_REL_ASHAL)] = true,
		[GetString(DAS_M_REL_ASSAR)] = true,
		[GetString(DAS_M_REL_ASHUR)] = true,
		[GetString(DAS_M_REL_DUSHA)] = true,
		[GetString(DAS_M_REL_EBERN)] = true,
		[GetString(DAS_M_REL_MAELK)] = true,
		[GetString(DAS_M_REL_YASAM)] = true,
	},
	["hunt"] = {
		[GetString(DAS_M_HUNT_EATER)] = true,
		[GetString(DAS_M_HUNT_ZEXXI)] = true,
		[GetString(DAS_M_HUNT_RAZOR)] = true,
		[GetString(DAS_M_HUNT_JAGGE)] = true,
		[GetString(DAS_M_HUNT_STOMP)] = true,
		[GetString(DAS_M_HUNT_TARRA)] = true,
		[GetString(DAS_M_HUNT_SVEET)] = true,
	},
	["delve"] = {
		[GetString(DAS_M_DELVE_DAEDR)] = true,
		[GetString(DAS_M_DELVE_KWAMA)] = true,
		[GetString(DAS_M_DELVE_MISIN)] = true,
		[GetString(DAS_M_DELVE_TAXES)] = true,
		[GetString(DAS_M_DELVE_TRIBA)] = true,
		[GetString(DAS_M_DELVE_SYNDI)] = true,
	},
	["boss"] = {
		[GetString(DAS_M_BOSS_WUYWU)] = true,
		[GetString(DAS_M_BOSS_SWARM)] = true,
		[GetString(DAS_M_BOSS_NILTH)] = true,
		[GetString(DAS_M_BOSS_SALOT)] = true,
		[GetString(DAS_M_BOSS_SIREN)] = true,
		[GetString(DAS_M_BOSS_APPRE)] = true,
	},
}

local questIds = {
	-- Relic dailies (Ald'ruhn)
	[5924] = true, -- "Relics of Yasammidan",
	[5925] = true, -- "Relics of Assarnatamat",
	[5926] = true, -- "Relics of Maelkashishi",
	[5927] = true, -- "Relics of Ashurnabitashpi",
	[5928] = true, -- "Relics of Ebernanit",
	[5929] = true, -- "Relics of Dushariran",
	[5930] = true, -- "Relics of Ashalmawia",
	-- Hunt dailies (Ald'ruhn)
	[5907] = true, -- "Great Zexxin Hunt",
	[5908] = true, -- "Tarra-Suj Hunt",
	[5909] = true, -- "Writhing Sveeth Hunt",
	[5910] = true, -- "Mother Jagged-Claw Hunt",
	[5911] = true, -- "Ash-Eater Hunt",
	[5912] = true, -- "Old Stomper Hunt",
	[5913] = true, -- "King Razor-Tusk Hunt",
	-- Delve dailies (Hall of Justice)
	[5915] = true, -- "Tribal Troubles",
	[5934] = true, -- "Tax Deduction",
	[5956] = true, -- "Daedric Disruptions",
	[5958] = true, -- "Unsettled Syndicate",
	[5961] = true, -- "Planting Misinformation",
	[5962] = true, -- "Kwama Conundrum",
	-- World Boss dailies (Hall of Justice)
	[5865] = true, -- "Culling the Swarm",
	[5866] = true, -- "Oxen Free",
	[5904] = true, -- "Salothan's Curse",
	[5906] = true, -- "Siren's Song",
	[5916] = true, -- "The Anxious Apprentice",
	[5918] = true, -- "A Creeping Hunger",
}

DAS.questIds[zoneId] = questIds

for id, _ in pairs(questIds) do
	DAS_QUEST_IDS[id] = true
end

local prequestName

-- Ald'ruhn dailies prerequisite
prequestName = GetQuestName(6008)
for questName, _ in pairs(DAS.QuestLists[zoneId].relic) do
	DAS.prequests[questName] = {
		prequestName = prequestName, -- Ashlander Relations
		prequestId   = 6008,
	}
end
for questName, _ in pairs(DAS.QuestLists[zoneId].hunt) do
	DAS.prequests[questName] = {
		prequestName = prequestName, -- Ashlander Relations
		prequestId   = 6008,
	}
end