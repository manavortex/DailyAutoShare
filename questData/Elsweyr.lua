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
    ["Ri'hirr"] = true,
    ["Nisuzi"] = true, 
    [GetString(DAS_QUEST_TANERLIN)] = true, 
}
DAS.questFinisher[zoneId] = {
    ["Ri'hirr"] = true,
    ["Nisuzi"] = true, 
    [GetString(DAS_QUEST_TANERLIN)] = true, 
}
DAS.questIds[zoneId] = {
  
  -- single
	-- [5518]  = true, -- "Meat for the Masses",
	-- [5519]  = true, -- "Scholarly Salvage",
	-- [5520]  = true, -- "Flames of Forge and Fallen",
	-- [5521]  = true, -- "Nature's Bounty",
	-- [5522]  = true, -- "Heresy of Ignorance",
	-- [5523]  = true, -- "Snow and Steam",
	-- [5524]  = true, -- "Reeking of Foul Play",
	-- Group
	-- [5507]  = true, -- "Breakfast of the Bizarre",
	-- [5515]  = true, -- "Free Spirits",
	-- [5514]  = true, -- "Getting a Bellyful",
	-- [5509]  = true, -- "Parts of the Whole",
	-- [5504]  = true, -- "The Skin Trade",
	-- [5505]  = true, -- "Fire in the Hold",
}