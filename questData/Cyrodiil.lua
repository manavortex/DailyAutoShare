local zoneId	= 181
DAS.shareables[zoneId] = {
}
local tbl2 = {}
DAS.makeBingoTable(zoneId, tbl2)
DAS.questIds[zoneId] = {
}
DAS.questStarter[zoneId] = {
    [GetString(DAS_QUEST_CRY_BATTLE)]    = true,
    [GetString(DAS_QUEST_CRY_BOUNTY)]    = true,
    [GetString(DAS_QUEST_CRY_SCOUT)]     = true,
    [GetString(DAS_QUEST_CRY_WARFR)]     = true,
}
DAS.questFinisher[zoneId] = DAS.questStarter[zoneId]