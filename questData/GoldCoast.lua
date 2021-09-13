local zoneId = 823 -- Gold Coast

DAS.subzones[824] = zoneId -- Hrota Cave
DAS.subzones[825] = zoneId -- Garlas Agea

DAS.shareables[zoneId] = {
	-- World Boss dailies
	GetString(DAS_DB_MINO),
	GetString(DAS_DB_ARENA),
	-- Delve dailies
	GetString(DAS_DB_GOOD),
	GetString(DAS_DB_EVIL),
}
DAS.makeBingoTable(zoneId, {
	-- World Boss dailies
	{"mino", "m"},
	{"arena","a"},
	-- Delve dailies
	{"good", "common", "cg"},
	{"evil", "buried", "be"},
})

DAS.questStarter[zoneId] = {
	[GetString(DAS_QUEST_DB_BOUNTY)] = true,
}

DAS.questFinisher[zoneId] = {
	[GetString(DAS_QUEST_DB_ARVINA )] = true,
	[GetString(DAS_QUEST_DB_LARONEN)] = true,
	[GetString(DAS_QUEST_DB_FINIA  )] = true,
	[GetString(DAS_QUEST_DB_CODUS  )] = true,
}

local questIds = {
	-- World Boss dailies
	[5603] = true, -- "Buried Evil",
	[5604] = true, -- "The Common Good",
	-- Delve dailies
	[5605] = true, -- "Looming Shadows",
	[5606] = true, -- "The Roar of the Crowds",
}

DAS.questIds[zoneId] = questIds

for id, _ in pairs(questIds) do
	DAS_QUEST_IDS[id] = true
end