DAS.shareables 	    = DAS.shareables    or {}
DAS.bingo 		    = DAS.bingo 	    or {}


local zoneId	= 823
local zoneId2	= 825 -- Hrota Cave
local zoneId3	= 826 -- Garlas Agea


local tbl = {}

table.insert(tbl, GetString(DAS_DB_MINO))
table.insert(tbl, GetString(DAS_DB_ARENA))
table.insert(tbl, GetString(DAS_DB_GOOD))
table.insert(tbl, GetString(DAS_DB_EVIL))

DAS.shareables[zoneId] = tbl
DAS.shareables[zoneId2] = DAS.shareables[zoneId]
DAS.shareables[zoneId3] = DAS.shareables[zoneId]

local tbl2 = {}
table.insert(tbl2, {[1] = "mino", [2] = "m"})
table.insert(tbl2, {[1] = "arena",[2] = "a"})
table.insert(tbl2, {[1] = "good", [2] = "common", [3] = "cg"})
table.insert(tbl2, {[1] = "evil", [2] = "buried", [3] = "be"})

DAS.makeBingoTable(zoneId, tbl2) 
DAS.bingo[zoneId2] = DAS.bingo[zoneId]
DAS.bingo[zoneId3] = DAS.bingo[zoneId]

DAS.questStarter[zoneId] = {
    [GetString(DAS_QUEST_DB_BOUNTY)]    = true,
}

DAS.questFinisher[zoneId] = {
    [GetString(DAS_QUEST_DB_ARVINA)]    = true,
    [GetString(DAS_QUEST_DB_LARONEN)]   = true,
    [GetString(DAS_QUEST_DB_FINIA)]     = true,
    [GetString(DAS_QUEST_DB_CODUS)]     = true,
}

DAS.questIds[zoneId] = {    
	-- gold coast
	[5603]  = true, -- "Buried Evil",
	[5604]  = true, -- "The Common Good",
	[5605]  = true, -- "Looming Shadows",
	[5606]  = true, -- "The Roar of the Crowds",
}