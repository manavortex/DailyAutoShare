local zoneId = 684 -- Wrothgar

DAS.subzones[689] = zoneId -- Nikolovara's Kennel
DAS.subzones[691] = zoneId -- Thukhozod's Sanctum
DAS.subzones[692] = zoneId -- Watcher's Hold
DAS.subzones[693] = zoneId -- Coldperch Cavern
DAS.subzones[694] = zoneId -- Argent Mine
DAS.subzones[697] = zoneId -- Zthenganaz

DAS.shareables[zoneId] = {
	-- World Boss dailies
	GetString(DAS_W_POACHERS),
	GetString(DAS_W_EDU),
	GetString(DAS_W_NYZ),
	GetString(DAS_W_CORI),
	GetString(DAS_W_DOLMEN),
	GetString(DAS_W_OGRE),
	-- Delve dailies
	GetString(DAS_W_HARPIES),
	GetString(DAS_W_SPIRITS),
	GetString(DAS_W_DURZOGS),
	GetString(DAS_W_DWEMER),
	GetString(DAS_W_WEREWOLVES),
	GetString(DAS_W_THAT_OTHER),
}

DAS.makeBingoTable(zoneId, {
	-- World Boss dailies
	{"poa", "poacher"},
	"edu",
	"nyz",
	{"cori", "nb"},
	{"zan", "dolmen", "dol", "ud"},
	{"ogre", "mad", "shrek"},
	-- Delve dailies
	{"eggs", "harpy"},
	"spirits",
	"durzog",
	{"dwemer", "parts"},
	{"skin", "skintrade", "wolf"},
	{"bandit", "fire"},
})

DAS.questStarter[zoneId] = {
	[GetString(DAS_QUEST_W_GURUZUG)] = true,
	[GetString(DAS_QUEST_W_ARZORAG)] = true,
}

DAS.questFinisher[zoneId] = {
	[GetString(DAS_QUEST_W_OUFA      )] = true,
	[GetString(DAS_QUEST_W_USHANG    )] = true,
	[GetString(DAS_QUEST_W_NEDNOR    )] = true,
	[GetString(DAS_QUEST_W_THAZEK    )] = true,
	[GetString(DAS_QUEST_W_ARUSHNA   )] = true,
	[GetString(DAS_QUEST_W_LILYAMEH  )] = true,
	[GetString(DAS_QUEST_W_BAGRUBESH )] = true,
	[GetString(DAS_QUEST_W_CIRANTILLE)] = true,
	[GetString(DAS_QUEST_W_BIRKHU    )] = true,
	[GetString(DAS_QUEST_W_MENNINIA  )] = true,
	[GetString(DAS_QUEST_W_SONOLIA   )] = true,
	[GetString(DAS_QUEST_W_RAYNOR    )] = true,
}

local questIds = {
    -- wrothgar boss
	[5518]  = true, -- "Meat for the Masses",
	[5519]  = true, -- "Scholarly Salvage",
	[5520]  = true, -- "Flames of Forge and Fallen",
	[5521]  = true, -- "Nature's Bounty",
	[5522]  = true, -- "Heresy of Ignorance",
	[5523]  = true, -- "Snow and Steam",
	[5524]  = true, -- "Reeking of Foul Play",
	-- wrothgar delve
	[5504]  = true, -- "The Skin Trade",
	[5505]  = true, -- "Fire in the Hold",
	[5507]  = true, -- "Breakfast of the Bizarre",
	[5509]  = true, -- "Parts of the Whole",
	[5514]  = true, -- "Getting a Bellyful",
	[5515]  = true, -- "Free Spirits",
}

DAS.questIds[zoneId] = questIds

for id, _ in pairs(questIds) do
	DAS_QUEST_IDS[id] = true
end