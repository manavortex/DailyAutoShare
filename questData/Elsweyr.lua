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
table.insert(tbl, GetString(DAS_KITTY_WILY))
table.insert(tbl2, {[1] = "wily", [2] = "trade", [3] = "trader"})

table.insert(tbl, GetString(DAS_KITTY_WIND))

-- Ri'hirr
table.insert(tbl, GetString(DAS_KITTY_HUNGRY))
table.insert(tbl2, {[1] = "hungry", [2] = "food"})

table.insert(tbl, GetString(DAS_KITTY_DEATH))
table.insert(tbl2, {[1] = "death", [2] = "day"})





-- rinse and repeat, until all your corresponding quest names / bingo strings are in your tables
-- ...
-- now set the table with the quest names for the zone
DAS.shareables[zoneId]      = tbl
-- call the func to make the bingo table.
DAS.makeBingoTable(zoneId, tbl2)

DAS.questStarter[zoneId] = {
    ["Ri'hirr"] = true,
    ["Nisuzi"] = true, 
}
DAS.questFinisher[zoneId] = {
    ["Ri'hirr"] = true,
    ["Nisuzi"] = true, 
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