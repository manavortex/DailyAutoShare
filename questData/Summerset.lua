local zoneId = 1011
local zoneId2 = 1012

local tbl = {}
local tbl2 = {}




table.insert(tbl, GetString(DAS_ELF_ALCHE))  
table.insert(tbl2, {[1] = "welenkin",  [2] = "korgen"})
table.insert(tbl, GetString(DAS_ELF_GRAVE))
table.insert(tbl2, {[1] = "graveld",  [2] = "grave"})   
table.insert(tbl, GetString(DAS_ELF_QUEEN))  
table.insert(tbl2, {[1] = "queen"}) 
table.insert(tbl, GetString(DAS_ELF_GRIFFIN)) 
table.insert(tbl2, {[1] = "griffon", [2] = "griffin", [3] = "gryphon", [4] = "gryffon"})
table.insert(tbl, GetString(DAS_ELF_SNAKE))  
table.insert(tbl2, {[1] = "adder", [2] = "snake"}) 
table.insert(tbl, GetString(DAS_ELF_WILD)) 
table.insert(tbl2, {[1] = "wild",  [2] = "ward"})


table.insert(tbl, GetString(DAS_ELF_RELIC))
table.insert(tbl2, {[1] = "relics"})
table.insert(tbl, GetString(DAS_ELF_PILGR))
table.insert(tbl2, {[1] = "pilgrim"})
table.insert(tbl, GetString(DAS_ELF_LIGHT))
table.insert(tbl2, {[1] = "light"})
table.insert(tbl, GetString(DAS_ELF_SERPE))
table.insert(tbl2, {[1] = "serpents"})
table.insert(tbl, GetString(DAS_ELF_MEMO ))
table.insert(tbl2, {[1] = "memory"})
table.insert(tbl, GetString(DAS_ELF_ROSE ))
table.insert(tbl2, {[1] = "rose"})


DAS.shareables[zoneId] = tbl
DAS.shareables[zoneId2] = DAS.shareables[zoneId]

for i=1012, 1019 do
    DAS.shareables[i] = DAS.shareables[zoneId]
end



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