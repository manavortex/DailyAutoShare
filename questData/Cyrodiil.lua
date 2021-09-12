local zoneId = 181 -- Cyrodiil

DAS.shareables[zoneId] = DAS.shareables[zoneId] or {}
DAS.bingo[zoneId]      = DAS.bingo[zoneId] or {}

DAS.questStarter[zoneId] = {
	[GetString(DAS_QUEST_CRY_BATTLE)] = true,
	[GetString(DAS_QUEST_CRY_BOUNTY)] = true,
	[GetString(DAS_QUEST_CRY_SCOUT )] = true,
	[GetString(DAS_QUEST_CRY_WARFR )] = true,
}
DAS.questFinisher[zoneId] = DAS.questStarter[zoneId]

DAS.questIds[zoneId] = DAS.questIds[zoneId] or {}