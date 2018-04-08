DAS.shareables 	    = DAS.shareables    or {}
DAS.bingo 		    = DAS.bingo 	    or {}


local zoneId	= 823


local tbl = {}

table.insert(tbl, GetString(DAS_DB_MINO))
table.insert(tbl, GetString(DAS_DB_ARENA))
table.insert(tbl, GetString(DAS_DB_GOOD))
table.insert(tbl, GetString(DAS_DB_EVIL))

DAS.shareables[zoneId] = tbl

local tbl2 = {}
table.insert(tbl2, "mino")
table.insert(tbl2, "arena")
table.insert(tbl2, {[1] = "good", [2] = "common"})
table.insert(tbl2, {[1] = "evil", [2] = "buried"})

DAS.makeBingoTable(zoneId, tbl2) 


DAS.questStartStrings[zoneId] = {
    [GetString(DAS_DB_QUEST_START)] = true,
}

DAS.questTurninStrings[zoneId] = {

    [GetString(DAS_DB_ARENA_TURNIN)] = true,
    [GetString(DAS_DB_MINO_TURNIN)] = true,
    [GetString(DAS_DB_GOOD_TURNIN)] = true,
    [GetString(DAS_DB_EVIL_TURNIN)] = true,

}
