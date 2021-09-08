DAS.shareables 	        = DAS.shareables            or {}
DAS.bingo 		          = DAS.bingo 	              or {}
DAS.questFinisher       = DAS.questFinisher         or {}
DAS.questStarter        = DAS.questStarter          or {}
local zoneId	= 1086


local tbl   = {}
local tbl2  = {}
--[[
  set up the tables. Order of quests in the UI depends on the order you add them here.
  Important: You have to use GetString(YOUR_QUEST_NAME_CONSTANT) here, or localization won't work.
  Localization strings are defined in ../locale/<lang>.lua
--]]

-- Nisuzi

-- Dousing the Daedric Flame
table.insert(tbl, GetString(DAS_KITTY_FLAME))
table.insert(tbl2, {[1] = "flames", [2] = "flame" })

-- Wisdom in the Winds
table.insert(tbl, GetString(DAS_KITTY_WIND))
table.insert(tbl2, {[1] = "scrolls", [2] = "wind"  })

-- Rifling Through Ruins
table.insert(tbl, GetString(DAS_KITTY_RUINS))
table.insert(tbl2, {[1] = "ruins" })


-- The Hungry Cat's Favor
table.insert(tbl, GetString(DAS_KITTY_HUNGRY))
table.insert(tbl2, {[1] = "kitty", [2] = "food"})
 
-- The Serpent's Stampede
table.insert(tbl, GetString(DAS_KITTY_STAMPEDE))
table.insert(tbl2, {[1] = "serpent" })

-- Tangled Tea Leaves
table.insert(tbl, GetString(DAS_KITTY_TEA))
table.insert(tbl2, {[1] = "tea" })


-- Ri'hirr

-- The Traders' Terror
table.insert(tbl, GetString(DAS_KITTY_WILY))
table.insert(tbl2, {[1] = "bird", [2] = "keeva", [3] = "kee"})


-- Another Day, Another Death
table.insert(tbl, GetString(DAS_KITTY_DEATH))
table.insert(tbl2, {[1] = "bones", [2] = "naruzz"})

-- A Dastardly Duo
table.insert(tbl, GetString(DAS_KITTY_DUO))
table.insert(tbl2, {[1] = "red"})

-- A waking nightmare
table.insert(tbl, GetString(DAS_KITTY_NIGHTMARE))
table.insert(tbl2, {[1] = "duo"})


-- Sword of the Serpent
table.insert(tbl, GetString(DAS_KITTY_SWORD))
table.insert(tbl2, {[1] = "sword", [2] = "vhys" })

-- The Senche of Decay
table.insert(tbl, GetString(DAS_KITTY_SENCHE))
table.insert(tbl2, {[1] = "senche", [2] = "decay" })

-- Battlereeve Tanerline
table.insert(tbl, GetString(DAS_KITTY_DRAGON))
table.insert(tbl2, {[1] = "dragon", [2] = "hunt" })



DAS.shareables[zoneId]  = tbl
DAS.makeBingoTable(zoneId, tbl2)

DAS.questStarter[zoneId] = {
    [GetString(DAS_QUEST_NE_BOSS)] = true,
    [GetString(DAS_QUEST_NE_DELVE)] = true, 
    [GetString(DAS_QUEST_TANERLIN)] = true, 
}
DAS.questFinisher[zoneId] = {
    [GetString(DAS_QUEST_NE_BOSS)] = true,
    [GetString(DAS_QUEST_NE_DELVE)] = true, 
    [GetString(DAS_QUEST_TANERLIN)] = true, 
}
DAS.questIds[zoneId] = {
    [6356] = true, -- "Dousing the Daedric Flame"		DELVE
    [6360] = true, -- "Rifling Through Ruins"			DELVE
    [6363] = true, -- "Tangled Tea Leaves"				DELVE
    [6361] = true, -- "The Hungry Cat's Favor"			DELVE
    [6362] = true, -- "The Serpent's Stampede"			DELVE
    [6359] = true, -- "Wisdom in the Winds"				DELVE
    [6381] = true, -- "A Dastardly Duo"					BOSS
    [6379] = true, -- "A Waking Nightmare"				BOSS
    [6380] = true, -- "Another Day, Another Death"		BOSS
    [6377] = true, -- "Sword of the Serpent"			BOSS
    [6382] = true, -- "The Senche of Decay"				BOSS
    [6378] = true, -- "The Traders' Terror"				BOSS
    [6357] = true, -- "Dragon Hunt"						EVENT
}