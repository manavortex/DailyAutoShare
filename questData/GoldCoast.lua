local zoneId  = 823
local zoneId2 = 824 -- Hrota Cave
local zoneId3 = 825 -- Garlas Agea

DAS.subzones[zoneId2] = zoneId
DAS.subzones[zoneId3] = zoneId

DAS.shareables[zoneId] = {
	-- World Boss dailies
	GetString(DAS_DB_MINO),
	GetString(DAS_DB_ARENA),
	-- Delve dailies
	GetString(DAS_DB_GOOD),
	GetString(DAS_DB_EVIL)
}
DAS.makeBingoTable(zoneId, {
	-- World Boss dailies
	{[1] = "mino", [2] = "m"},
	{[1] = "arena",[2] = "a"},
	-- Delve dailies
	{[1] = "good", [2] = "common", [3] = "cg"},
	{[1] = "evil", [2] = "buried", [3] = "be"}
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

DAS.zoneHasAdditionalId(zoneId2, zoneId)
DAS.zoneHasAdditionalId(zoneId3, zoneId)