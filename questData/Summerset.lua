local zoneId  = 1011 -- Summerset

DAS.subzones[1014] = zoneId -- Tor-Hame-Khard
DAS.subzones[1015] = zoneId -- Eton Nir Grotto
DAS.subzones[1016] = zoneId -- Traitor's Vault
DAS.subzones[1017] = zoneId -- Archon's Grove
DAS.subzones[1018] = zoneId -- King's Haven Pass
DAS.subzones[1019] = zoneId -- Wasten Coraldale
DAS.subzones[1027] = zoneId -- Artaeum

DAS.shareables[zoneId] = {
	-- World Boss dailies
	GetString(DAS_ELF_ALCHE),
	GetString(DAS_ELF_GRAVE),
	GetString(DAS_ELF_QUEEN),
	GetString(DAS_ELF_GRIFFIN),
	GetString(DAS_ELF_SNAKE),
	GetString(DAS_ELF_WILD),
	-- Delve dailies
	GetString(DAS_ELF_RELIC),
	GetString(DAS_ELF_PILGR),
	GetString(DAS_ELF_LIGHT),
	GetString(DAS_ELF_SERPE),
	GetString(DAS_ELF_MEMO),
	GetString(DAS_ELF_ROSE),
	-- Geyser dailies
	GetString(DAS_ELF_GEYSER),
}
DAS.makeBingoTable(zoneId, {
	{"korgen", "b'korgen", "korg", "corgi"},
	{"graveld", "grave", "grav"},
	{"queen"},
	{"griffon", "griffin", "gryphon", "gryffon"},
	{"keel", "snake"},
	{"caan", "indrik", "wild", "ward"},
	{"relics"},
	{"pilgrim"},
	{"light"},
	{"serpents"},
	{"memory"},
	{"rose"},
	{"geyser"},
})

DAS.questStarter[zoneId] = {
	[GetString(DAS_QUEST_SS_TANO)] = true,
	[GetString(DAS_QUEST_SS_FARO)] = true,
	[GetString(DAS_QUEST_SS_TANE)] = true,
}

DAS.questFinisher[zoneId] = DAS.questStarter[zoneId] 

local questIds = {
	-- World Boss dailies
	[6082] = true, -- The Sickening Sea
	[6083] = true, -- Taming the Wild
	[6084] = true, -- The Abyssal Alchemist
	[6085] = true, -- Birds of a Feather
	[6086] = true, -- Never Forgotten
	[6087] = true, -- Run Aground
	-- Delve dailies
	[6152] = true, -- Pilgrimage's End
	[6156] = true, -- Snuffing Out the Light
	[6157] = true, -- A Rose's Beauty
	[6158] = true, -- Relic Runaround
	[6159] = true, -- Culling Serpents
	[6160] = true, -- Struck from Memory
	-- Geyser dailies
	[6166] = true, -- Sinking Summerset
	[6202] = true, -- Sinking Summerset
}

DAS.questIds[zoneId] = questIds

for id, _ in pairs(questIds) do
	DAS_QUEST_IDS[id] = true
end

DAS.prequests[GetString(DAS_ELF_GEYSER)] = { -- Sinking Summerset
	prequestName = GetQuestName(6165), -- The Abyssal Cabal
	prequestId   = 6165,
}

DAS.zoneHasAdditionalId(zoneId2, zoneId)