DAS.shareables 	    = DAS.shareables    or {}
DAS.bingo 		    = DAS.bingo 	    or {}


local zoneId	= 980
local zoneId2	= 981
local zoneId3	= 983

local halls_of_regulation_id = 985
local shadow_cleft_id 		 = 986
local planisphere_id 		 = 993
local bingo

-- =============================================================================================== --
-- Clockwork City
-- =============================================================================================== --

local tbl = {}

table.insert(tbl, GetString(DAS_CLOCK_IMP))
table.insert(tbl, GetString(DAS_CLOCK_FOE))

table.insert(tbl, GetString(DAS_CLOCK_CRAFT_CLOTH))
table.insert(tbl, GetString(DAS_CLOCK_CRAFT_WATER))
table.insert(tbl, GetString(DAS_CLOCK_CRAFT_RUNE))
table.insert(tbl, GetString(DAS_CLOCK_CRAFT_SMITH))
table.insert(tbl, GetString(DAS_CLOCK_CRAFT_ALCH))
table.insert(tbl, GetString(DAS_CLOCK_CRAFT_WOOD))

table.insert(tbl, GetString(DAS_CLOCK_DELVE_FILT))
table.insert(tbl, GetString(DAS_CLOCK_DELVE_FANS))
table.insert(tbl, GetString(DAS_CLOCK_DELVE_COMM))
table.insert(tbl, GetString(DAS_CLOCK_DELVE_MALF))
table.insert(tbl, GetString(DAS_CLOCK_DELVE_MISP))
table.insert(tbl, GetString(DAS_CLOCK_DELVE_AGAI))

table.insert(tbl, GetString(DAS_CLOCK_CROW_GLIT))
table.insert(tbl, GetString(DAS_CLOCK_CROW_TRIB))
table.insert(tbl, GetString(DAS_CLOCK_CROW_NIBB))
table.insert(tbl, GetString(DAS_CLOCK_CROW_MORS))
table.insert(tbl, GetString(DAS_CLOCK_CROW_RESP))
table.insert(tbl, GetString(DAS_CLOCK_CROW_LEIS))

DAS.shareables[zoneId] = tbl


-- Halls of Regulation
local tbl2 = {}
table.insert(tbl2, GetString(DAS_CLOCK_DELVE_FILT))
table.insert(tbl2, GetString(DAS_CLOCK_DELVE_FANS))
table.insert(tbl2, GetString(DAS_CLOCK_CRAFT_WOOD))
table.insert(tbl2, GetString(DAS_CLOCK_DELVE_COMM))
DAS.shareables[halls_of_regulation_id] = tbl2

-- Shadow Cleft
local tbl3 = {}
table.insert(tbl3, GetString(DAS_CLOCK_DELVE_MALF))
table.insert(tbl3, GetString(DAS_CLOCK_DELVE_MISP))
table.insert(tbl3, GetString(DAS_CLOCK_CRAFT_RUNE))
table.insert(tbl3, GetString(DAS_CLOCK_DELVE_AGAI))

DAS.shareables[shadow_cleft_id] = tbl3

-- Planisphere
local tbl4 = {}
table.insert(tbl3, GetString(DAS_CLOCK_CRAFT_CLOTH))
DAS.shareables[planisphere_id] = tbl4

DAS.QuestLists[zoneId] = {
	["boss"] = {
		[GetString(DAS_CLOCK_IMP)] = true,
		[GetString(DAS_CLOCK_FOE)] = true,
	},
	["craft"] = {
		[GetString(DAS_CLOCK_CRAFT_CLOTH)] = true,
		[GetString(DAS_CLOCK_CRAFT_WATER)] = true,
		[GetString(DAS_CLOCK_CRAFT_RUNE)] = true,
		[GetString(DAS_CLOCK_CRAFT_SMITH)] = true,
		[GetString(DAS_CLOCK_CRAFT_ALCH)] = true,
		[GetString(DAS_CLOCK_CRAFT_WOOD)] = true,
	},
	["crow"] = {
		[GetString(DAS_CLOCK_CROW_GLIT)] = true,
		[GetString(DAS_CLOCK_CROW_TRIB)] = true,
		[GetString(DAS_CLOCK_CROW_NIBB)] = true,
		[GetString(DAS_CLOCK_CROW_MORS)] = true,
		[GetString(DAS_CLOCK_CROW_RESP)] = true,
		[GetString(DAS_CLOCK_CROW_LEIS)] = true,
	},
	["delve"] = {
		[GetString(DAS_CLOCK_DELVE_FILT)] = true,
		[GetString(DAS_CLOCK_DELVE_FANS)] = true,
		[GetString(DAS_CLOCK_DELVE_COMM)] = true,
		[GetString(DAS_CLOCK_DELVE_MALF)] = true,
		[GetString(DAS_CLOCK_DELVE_MISP)] = true,
		[GetString(DAS_CLOCK_DELVE_AGAI)] = true,
	},
}

bingo = {}

table.insert(bingo, "imp")
table.insert(bingo, "foe")

table.insert(bingo, "strands")
table.insert(bingo, "sticky")
table.insert(bingo, "acc")
table.insert(bingo, "grind")
table.insert(bingo, "pill")
table.insert(bingo, "fuel")

table.insert(bingo, "filter")
table.insert(bingo, "fan")
table.insert(bingo, "comm")
table.insert(bingo, "misplaced")
table.insert(bingo, "malfunc")

table.insert(bingo, "gleam")
table.insert(bingo, "tribute")
table.insert(bingo, "bits")
table.insert(bingo, "respect")
table.insert(bingo, "leisure")

DAS.makeBingoTable(zoneId, bingo)

bingo = {}
table.insert(bingo, "filter")
table.insert(bingo, "fan")

DAS.makeBingoTable(halls_of_regulation_id, bingo)


bingo = {}
table.insert(bingo, "shadow")
table.insert(bingo, "comm")
DAS.makeBingoTable(shadow_cleft_id, bingo)



DAS.shareables[zoneId2] = DAS.shareables[zoneId]
DAS.shareables[zoneId3] = DAS.shareables[zoneId]
DAS.bingo[zoneId2] = DAS.bingo[zoneId]
DAS.bingo[zoneId3] = DAS.bingo[zoneId]

