local zoneId  = 726
local tbl = {}
local tbl2 = {}
DAS.QuestLists[zoneId] = {
	["root"] = {
		[1] = GetString(DAS_SLAVES_ROOT_1),
		[2] = GetString(DAS_SLAVES_ROOT_2),
		[3] = GetString(DAS_SLAVES_ROOT_3),
		[4] = GetString(DAS_SLAVES_ROOT_4),
		[5] = GetString(DAS_SLAVES_ROOT_5),
  },
	["delve"] = {
		[1] = GetString(DAS_SLAVES_DELVE_1),
		[2] = GetString(DAS_SLAVES_DELVE_2),
		[3] = GetString(DAS_SLAVES_DELVE_3),
		[4] = GetString(DAS_SLAVES_DELVE_4),
		[5] = GetString(DAS_SLAVES_DELVE_5),
		[6] = GetString(DAS_SLAVES_DELVE_6),
  },
	["boss"] = {
		[1] = GetString(DAS_SLAVES_BOSS_1),
		[2] = GetString(DAS_SLAVES_BOSS_2),
		[3] = GetString(DAS_SLAVES_BOSS_3),
		[4] = GetString(DAS_SLAVES_BOSS_4),
		[5] = GetString(DAS_SLAVES_BOSS_5),
		[5] = GetString(DAS_SLAVES_BOSS_6),
  },
}
-- Grave Circumstances
table.insert(tbl, GetString(DAS_SLAVES_BOSS_1))
table.insert(tbl2, {[1] = "circ" })
-- Grave Expectations
table.insert(tbl, GetString(DAS_SLAVES_BOSS_2))
table.insert(tbl2, {[1] = "expe" })
 -- Old Baubles
table.insert(tbl, GetString(DAS_SLAVES_BOSS_3))
table.insert(tbl2, {[1] = "baubles"})
-- Old Enemies
table.insert(tbl, GetString(DAS_SLAVES_BOSS_4))
table.insert(tbl2, {[1] = "enemy", [2] = "enemies"})
-- Old Growth
table.insert(tbl, GetString(DAS_SLAVES_BOSS_5))
table.insert(tbl2, {[1] = "growth"})
-- Grave Mementos
table.insert(tbl, GetString(DAS_SLAVES_BOSS_6))
table.insert(tbl2, {[1] = "mementos", [2] = "meme"})
-- Antique Armor
table.insert(tbl, GetString(DAS_SLAVES_DELVE_1))
table.insert(tbl2, {[1] = "armor", [2] = "armour" })
-- Grave Subject Matter
table.insert(tbl, GetString(DAS_SLAVES_DELVE_2))
table.insert(tbl2, {[1] = "subject"})
-- Old Scrolls
table.insert(tbl, GetString(DAS_SLAVES_DELVE_3))
table.insert(tbl2, {[1] = "scrolls"})
-- Sacred Candles
table.insert(tbl, GetString(DAS_SLAVES_DELVE_4))
table.insert(tbl2, {[1] = "candle", [2] = "candles"})
-- Tools of Slaughter
table.insert(tbl, GetString(DAS_SLAVES_DELVE_5))
table.insert(tbl2, {[1] = "tools" })
-- The Weight of Words
table.insert(tbl, GetString(DAS_SLAVES_DELVE_6))
table.insert(tbl2, {[1] = "words"})
-- Aloe That Heals
table.insert(tbl, GetString(DAS_SLAVES_ROOT_1))
table.insert(tbl2, {[1] = "aloe" })
-- Envoys Who Cower
table.insert(tbl, GetString(DAS_SLAVES_ROOT_2))
table.insert(tbl2, {[1] = "envoys"})
-- Leather That Protects
table.insert(tbl, GetString(DAS_SLAVES_ROOT_3))
table.insert(tbl2, {[1] = "leather" })
-- Mushrooms That Nourish
table.insert(tbl, GetString(DAS_SLAVES_ROOT_4))
table.insert(tbl2, {[1] = "mushrooms", [2] = "nourish" , [3] = "shroom", [4] = "shrooms"  })
-- Offerings That Hide
table.insert(tbl, GetString(DAS_SLAVES_ROOT_5))
table.insert(tbl2, {[1] = "offer", [2] = "hide" })
DAS.questStarter[zoneId] = {
    [GetString(DAS_SLAVES_QUEST1)]    = true,
    [GetString(DAS_SLAVES_QUEST2)]    = true,
    [GetString(DAS_SLAVES_QUEST3)]    = true,
}
DAS.questFinisher[zoneId] = {
    [GetString(DAS_SLAVES_QUEST1)]    = true,
    [GetString(DAS_SLAVES_QUEST2)]    = true,
    [GetString(DAS_SLAVES_QUEST3)]    = true,
}
DAS.questIds[zoneId] = {
}
DAS.prequests[GetString(DAS_SLAVES_ROOT_1)] = { -- Aloe That Heals
  prequestName = "By River and Root",
  prequestId = 6165,
}
DAS.prequests[GetString(DAS_SLAVES_ROOT_2)] = { -- Envoys Who Cower
  prequestName = "By River and Root",
  prequestId = 6165,
}
DAS.prequests[GetString(DAS_SLAVES_ROOT_3)] = { -- Leather That Protects
  prequestName = "By River and Root",
  prequestId = 6165,
}
DAS.prequests[GetString(DAS_SLAVES_ROOT_4)] = { -- Mushrooms That Nourish
  prequestName = "By River and Root",
  prequestId = 6165,
}
DAS.prequests[GetString(DAS_SLAVES_ROOT_5)] = { -- Offerings That Hide
  prequestName = "By River and Root",
  prequestId = 6165,
}
DAS.shareables[zoneId] = tbl
DAS.makeBingoTable(zoneId, tbl2)
-- for i=6082, 6087 do
    -- DAS.questIds[zoneId][i] = true
    -- DAS_QUEST_IDS[i] = true
-- end
-- for i=6152, 6160 do
    -- DAS.questIds[zoneId][i] = true
    -- DAS_QUEST_IDS[i] = true
-- end
-- DAS.questIds[zoneId][6202] = true
-- DAS_QUEST_IDS[6202] = true
-- DAS.prequests[GetString(DAS_ELF_GEYSER)] = { -- Sinking Summerset
    -- prequestName = "The Abyssal Cabal",
    -- prequestId = 6165,
-- }