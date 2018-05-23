local zoneId = 1011
local zoneId2 = 1012

local tbl = {}

table.insert(tbl, GetString(DAS_ELF_GRIFFIN))
table.insert(tbl, GetString(DAS_ELF_QUEEN))
table.insert(tbl, GetString(DAS_ELF_SNAKE))
table.insert(tbl, GetString(DAS_ELF_WILD))

table.insert(tbl, GetString(DAS_ELF_RELIC))
table.insert(tbl, GetString(DAS_ELF_PILGR))
table.insert(tbl, GetString(DAS_ELF_LIGHT))

DAS.shareables[zoneId] = tbl
DAS.shareables[zoneId2] = DAS.shareables[zoneId]

local tbl2 = {}
table.insert(tbl2, {[1] = "griffon", [2] = "griffin", [3] = "gryphon", [4] = "gryffon"})
table.insert(tbl2, {[1] = "queen"})
table.insert(tbl2, {[1] = "adder", [2] = "snake"})
table.insert(tbl2, {[1] = "wild",  [2] = "ward"})
table.insert(tbl2, {[1] = "relic"})
table.insert(tbl2, {[1] = "pilgrim"})
table.insert(tbl2, {[1] = "light"})

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
    [5733]  = true, -- Ancient Armaments in Bangkorai
}