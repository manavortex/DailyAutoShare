local zoneId	= 888
local tbl   = {}
local tbl2  = {}

--------------------
-- lower Craglorn

-- Sara Benele
-- "Critical Mass"
table.insert(tbl, GetString(DAS_CRAG_SARA))
table.insert(tbl2, {[1] = "sara", [2] = "mass"})
-- Greban
-- "The Fallen City of Shada"
table.insert(tbl, GetString(DAS_CRAG_SHADA))
table.insert(tbl2, {[1] = "shada", [2] = "city"})
-- Nhalan
-- "The Reason We Fight"
table.insert(tbl, GetString(DAS_CRAG_NEDE))
table.insert(tbl2, {[1] = "reason", [2] = "nede"})
-- Ralai
-- "Waters Run Foul"
table.insert(tbl, GetString(DAS_CRAG_NEREID))
table.insert(tbl2, {[1] = "nereid", [2] = "foul", [3] = "water"})
-- Ibrula
-- "The Seeker's Archive"
table.insert(tbl, GetString(DAS_CRAG_HERMY))
table.insert(tbl2, {[1] = "Seeker", [2] = "hermy"})
-- Fights-With-Tail
-- "Supreme Power"
table.insert(tbl, GetString(DAS_CRAG_ELINHIR))
table.insert(tbl2, {[1] = "power", [2] = "elihir"})
-- Fada at-Glina
-- "The Trials of Rahni'Za"
table.insert(tbl, GetString(DAS_CRAG_TUWHACCA))
table.insert(tbl2, {[1] = "rahni"})

--------------------
-- upper Craglorn

-- Nendirume
-- "The Blood of Nirn"
table.insert(tbl, GetString(DAS_CRAG_NIRNCRUX))
table.insert(tbl2, {[1] = "nirn"})
-- Book in Dragonstar
-- "The Gray Passage"
table.insert(tbl, GetString(DAS_CRAG_WORLDTRIP))
table.insert(tbl2, {[1] = "trip"})
-- Lashburr Tooth-Breaker
-- "Iron and Scales"
table.insert(tbl, GetString(DAS_CRAG_SCALES))
table.insert(tbl2, {[1] = "scales", [2] = "iron"})
-- Crusader Dalamar
-- "Souls of the Betrayed"
table.insert(tbl, GetString(DAS_CRAG_NECRO))
table.insert(tbl2, {[1] = "necro", [2] = "souls"})
-- Scattered-Leaves
-- "Taken Alive"
table.insert(tbl, GetString(DAS_CRAG_KIDNAP))
table.insert(tbl2, {[1] = "kidnap", [2] = "alive"})
-- Safa al-Satakalaam
-- "The Truer Fangs"
table.insert(tbl, GetString(DAS_CRAG_HITMAN))
table.insert(tbl2, {[1] = "hitman", [2] = "fang", [3] = "fangs"})
-- Mederic Vyger
-- "Uncaged"
table.insert(tbl, GetString(DAS_CRAG_DUNGEON))
table.insert(tbl2, {[1] = "dungeon", [2] = "uncage", [3] = "cage"})

DAS.shareables[zoneId] = tbl
DAS.makeBingoTable(zoneId, tbl2)

DAS.questStarter[zoneId] = {
  [GetString(DAS_QUEST_CRA_SARA) ] = true,
  [GetString(DAS_QUEST_CRA_GREBA)] = true,
  [GetString(DAS_QUEST_CRA_NHALA)] = true,
  [GetString(DAS_QUEST_CRA_RALAI)] = true,
  [GetString(DAS_QUEST_CRA_IBRUL)] = true,
  [GetString(DAS_QUEST_CRA_FIGHT)] = true,
  [GetString(DAS_QUEST_CRA_FADA) ] = true,
  [GetString(DAS_QUEST_CRA_NENDI)] = true,
  [GetString(DAS_QUEST_CRA_GRAYP)] = true,
  [GetString(DAS_QUEST_CRA_LASHB)] = true,
  [GetString(DAS_QUEST_CRA_CRUSA)] = true,
  [GetString(DAS_QUEST_CRA_SCATT)] = true,
  [GetString(DAS_QUEST_CRA_SAFA) ] = true,
  [GetString(DAS_QUEST_CRA_MERED)] = true,
}
DAS.questFinisher[zoneId] = {
  [GetString(DAS_QUEST_CRA_SARA) ] = true,
  [GetString(DAS_QUEST_CRA_SALIM)] = true,
  [GetString(DAS_QUEST_CRA_TISHI)] = true,
  [GetString(DAS_QUEST_CRA_RALAI)] = true,
  [GetString(DAS_QUEST_CRA_IBRUL)] = true,
  [GetString(DAS_QUEST_CRA_MINER)] = true,
  [GetString(DAS_QUEST_CRA_MASTE)] = true,
  [GetString(DAS_QUEST_CRA_NENDI)] = true,
  [GetString(DAS_QUEST_CRA_GRAYM)] = true,
  [GetString(DAS_QUEST_CRA_LASHB)] = true,
  [GetString(DAS_QUEST_CRA_CRUSA)] = true,
  [GetString(DAS_QUEST_CRA_SCATT)] = true,
  [GetString(DAS_QUEST_CRA_SAFA) ] = true,
  [GetString(DAS_QUEST_CRA_MERED)] = true,
}

DAS.questIds[zoneId] = {
  -- lower
  [5108]  = true, -- "Critical Mass",
  [5756]  = true, -- "Critical Mass",
  [5749]  = true, -- "The Seeker's Archive",
  [5750]  = true, -- "The Fallen City of Shada",
  [5751]  = true, -- "The Trials of Rahni'Za",
  [5754]  = true, -- "Waters Run Foul",
  [5755]  = true, -- "Supreme Power",
  [5762]  = true, -- "The Reason We Fight",
  -- upper
  [5767]  = true, -- "The Blood of Nirn",
  [5777]  = true, -- "The Gray Passage",
  [5766]  = true, -- "Iron and Scales",
  [5770]  = true, -- "Souls of the Betrayed",
  [5765]  = true, -- "Taken Alive",
  [5764]  = true, -- "The Truer Fangs",
  [5772]  = true, -- "Uncaged",
}