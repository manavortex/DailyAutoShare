local zoneId = 1011
local zoneId2 = 1012
local tbl = {}
local tbl2 = {}
table.insert(tbl, GetString(DAS_ELF_ALCHE))
table.insert(tbl2, {[1] = "korgen",  [2] = "b'korgen", [3] = "korg", [4] = "corgi"})
table.insert(tbl, GetString(DAS_ELF_GRAVE))
table.insert(tbl2, {[1] = "graveld",  [2] = "grave",  [3] = "grav"})
table.insert(tbl, GetString(DAS_ELF_QUEEN))
table.insert(tbl2, {[1] = "queen"})
table.insert(tbl, GetString(DAS_ELF_GRIFFIN))
table.insert(tbl2, {[1] = "griffon", [2] = "griffin", [3] = "gryphon", [4] = "gryffon"})
table.insert(tbl, GetString(DAS_ELF_SNAKE))
table.insert(tbl2, {[1] = "keel", [2] = "snake"})
table.insert(tbl, GetString(DAS_ELF_WILD))
table.insert(tbl2, {[1] = "caan", [2] = "indrik", [3] = "wild",  [4] = "ward"})
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
table.insert(tbl, GetString(DAS_ELF_GEYSER ))
table.insert(tbl2, {[1] = "geyser"})
DAS.shareables[zoneId] = tbl
DAS.shareables[zoneId2] = DAS.shareables[zoneId]
DAS.makeBingoTable(zoneId, tbl2)
DAS.bingo[zoneId2] = DAS.bingo[zoneId]
for i=1012, 1019 do
  DAS.shareables[i]  = DAS.shareables[zoneId]
  DAS.bingo[i]       = DAS.bingo[zoneId]
  DAS.subzones[i]    = zoneId
end
DAS.questStarter[zoneId] = {
  [GetString(DAS_QUEST_SS_TANO)]    = true,
  [GetString(DAS_QUEST_SS_FARO)]    = true,
  [GetString(DAS_QUEST_SS_TANE)]    = true,
}
DAS.questFinisher[zoneId] = {
  [GetString(DAS_QUEST_SS_TANO)]    = true,
  [GetString(DAS_QUEST_SS_FARO)]    = true,
  [GetString(DAS_QUEST_SS_TANE)]    = true,
}
DAS.questIds[zoneId] = {
}
for i=6082, 6087 do
  DAS.questIds[zoneId][i] = true
  DAS_QUEST_IDS[i] = true
end
for i=6152, 6160 do
  DAS.questIds[zoneId][i] = true
  DAS_QUEST_IDS[i] = true
end
DAS.questIds[zoneId][6202] = true
DAS_QUEST_IDS[6202] = true
DAS.prequests[GetString(DAS_ELF_GEYSER)] = { -- Sinking Summerset
  prequestName = "The Abyssal Cabal",
  prequestId = 6165,
}