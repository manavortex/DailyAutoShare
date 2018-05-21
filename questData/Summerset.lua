local zoneId = 1011
local zoneId2 = 1012

local tbl = {}

table.insert(tbl, GetString(DAS_DB_MINO))
table.insert(tbl, GetString(DAS_DB_ARENA))
table.insert(tbl, GetString(DAS_DB_GOOD))
table.insert(tbl, GetString(DAS_DB_EVIL))

DAS.shareables[zoneId] = tbl
DAS.shareables[zoneId2] = DAS.shareables[zoneId]

local tbl2 = {}
table.insert(tbl2, {[1] = "mino", [2] = "m"})
table.insert(tbl2, {[1] = "arena",[2] = "a"})
table.insert(tbl2, {[1] = "good", [2] = "common", [3] = "cg"})
table.insert(tbl2, {[1] = "evil", [2] = "buried", [3] = "be"})

DAS.makeBingoTable(zoneId, tbl2) 
DAS.bingo[zoneId2] = DAS.bingo[zoneId]

DAS.questStarter[zoneId] = {
    [GetString(DAS_QUEST_SS_TANO)]    = true,
    [GetString(DAS_QUEST_SS_FARO)]    = true,
}

DAS.questFinisher[zoneId] = {
    [GetString(DAS_QUEST_SS_TANO)]    = true,
    [GetString(DAS_QUEST_SS_FARO)]    = true,
  
}


DAS.questIds[zoneId] = {

}