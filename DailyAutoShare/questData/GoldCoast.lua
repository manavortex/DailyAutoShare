DAS.shareables 	    = DAS.shareables    or {}
DAS.bingo 		    = DAS.bingo 	    or {}


local zoneId	= 823


local tbl = {}

table.insert(tbl, GetString(DAS_DB_MINO))
table.insert(tbl, GetString(DAS_DB_ARENA))
table.insert(tbl, GetString(DAS_DB_GOOD))
table.insert(tbl, GetString(DAS_DB_EVIL))

DAS.shareables[zoneId] = tbl
DAS.shareables[825] = DAS.shareables[zoneId]

local tbl2 = {}
table.insert(tbl2, "mino")
table.insert(tbl2, "arena")
table.insert(tbl2, {[1] = "good", [2] = "common"})
table.insert(tbl2, {[1] = "evil", [2] = "buried"})

DAS.makeBingoTable(zoneId, tbl2) 
DAS.bingo[825] = DAS.bingo[zoneId]


DAS.questStarter[zoneId] = {
    [GetString(DAS_QUEST_DB_BOUNTY)]    = true,
}

DAS.questFinisher[zoneId] = {
    [GetString(DAS_QUEST_DB_ARVINA)]    = true,
    [GetString(DAS_QUEST_DB_LARONEN)]   = true,
    [GetString(DAS_QUEST_DB_FINIA)]     = true,
    [GetString(DAS_QUEST_DB_CODUS)]     = true,
}
