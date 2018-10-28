local zoneId  = 726

local tbl = {}
local tbl2 = {}

 -- Old Baubles
table.insert(tbl, GetString(DAS_SLAVES_1))  
table.insert(tbl2, {[1] = "baubles"})

-- Old Scrolls
table.insert(tbl, GetString(DAS_SLAVES_2))
table.insert(tbl2, {[1] = "scrolls"})   

-- Old Growth
table.insert(tbl, GetString(DAS_SLAVES_3))  
table.insert(tbl2, {[1] = "growth"}) 
 
-- Old Enemies
table.insert(tbl, GetString(DAS_SLAVES_11))  
table.insert(tbl2, {[1] = "enemy", [2] = "enemies"}) 

-- The Weight of Words
table.insert(tbl, GetString(DAS_SLAVES_4)) 
table.insert(tbl2, {[1] = "words"})

-- Sacred Candles
table.insert(tbl, GetString(DAS_SLAVES_5))  
table.insert(tbl2, {[1] = "candle", [2] = "candles"}) 

-- Grave Circumstances
table.insert(tbl, GetString(DAS_SLAVES_6)) 
table.insert(tbl2, {[1] = "circ" })

-- Grave Expectations
table.insert(tbl, GetString(DAS_SLAVES_14)) 
table.insert(tbl2, {[1] = "expe" })


-- Envoys Who Cower
table.insert(tbl, GetString(DAS_SLAVES_7))
table.insert(tbl2, {[1] = "envoys"})

-- Offerings That Hide
table.insert(tbl, GetString(DAS_SLAVES_8))
table.insert(tbl2, {[1] = "offer", [2] = "hide" })

-- Mushrooms That Nourish
table.insert(tbl, GetString(DAS_SLAVES_9))
table.insert(tbl2, {[1] = "mushrooms", [2] = "nourish" , [3] = "shroom", [4] = "shrooms"  })

-- Antique Armor
table.insert(tbl, GetString(DAS_SLAVES_10))
table.insert(tbl2, {[1] = "armor", [2] = "armour" })

-- Aloe That Heals
table.insert(tbl, GetString(DAS_SLAVES_12))
table.insert(tbl2, {[1] = "aloe" })

-- Leather That Protects
table.insert(tbl, GetString(DAS_SLAVES_13))
table.insert(tbl2, {[1] = "leather" })

-- Tools of Slaughter
table.insert(tbl, GetString(DAS_SLAVES_15))
table.insert(tbl2, {[1] = "tools" })


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