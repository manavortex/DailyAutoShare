DAS.shareables 	    = DAS.shareables    or {}
DAS.bingo 		    = DAS.bingo 	    or {}


local zoneId	= 980
local zoneId2	= 981
local zoneId3	= 983

local halls_of_regulation_id = 985
local shadow_cleft_id 		 = 986
local planisphere_id 		 = 993
local wellspring_id 		 = 992

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
table.insert(tbl4, GetString(DAS_CLOCK_CRAFT_CLOTH))
DAS.shareables[planisphere_id] = tbl4

-- Everwound Wellspring
local tbl5 = {}
table.insert(tbl5, GetString(DAS_CLOCK_CRAFT_ALCH))
DAS.shareables[wellspring_id] = tbl5

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

bingo = {}
table.insert(bingo, "pill")
DAS.makeBingoTable(wellspring_id, bingo)



DAS.shareables[zoneId2] = DAS.shareables[zoneId]
DAS.shareables[zoneId3] = DAS.shareables[zoneId]
DAS.bingo[zoneId2] = DAS.bingo[zoneId]
DAS.bingo[zoneId3] = DAS.bingo[zoneId]

DAS.QuestLists[zoneId2] = DAS.QuestLists[zoneId]
DAS.QuestLists[zoneId3] = DAS.QuestLists[zoneId]

DAS.questStarter[zoneId] = {
    [GetString(DAS_QUEST_CC_ROBOT)] = true,
    [GetString(DAS_QUEST_CC_NOVICE)] = true,
    [GetString(DAS_QUEST_CC_ORC)] = true,
    [GetString(DAS_QUEST_CC_CROW)] = true,
}

DAS.questStarter[zoneId2] = DAS.questStarter[zoneId]
DAS.questStarter[zoneId3] = DAS.questStarter[zoneId]

DAS.questFinisher[zoneId] = {
    [GetString(DAS_QUEST_CC_ROBOT)] = true,
    [GetString(DAS_QUEST_CC_CROW)] = true,

    [GetString(DAS_QUEST_CC_THISTLE )] = true,
    [GetString(DAS_QUEST_CC_COOK    )] = true,
    [GetString(DAS_QUEST_CC_MINDORA  )] = true,
    [GetString(DAS_QUEST_CC_NJORD   )] = true,
    [GetString(DAS_QUEST_CC_IGMUND   )] = true,
    [GetString(DAS_QUEST_CC_DARO   )] = true,
    [GetString(DAS_QUEST_CC_TILELLE  )] = true,
    

}
DAS.questFinisher[zoneId2] = DAS.questFinisher[zoneId]
DAS.questFinisher[zoneId3] = DAS.questFinisher[zoneId]


DAS.questIds[zoneId] = {
    [6076]	 = true, -- Inciting the Imperfect, 
	[6077]	 = true, -- A Fine-Feathered Foe, 
	
	[6039]	 = true, -- Loose Strands, 
	[6040]	 = true, -- A Sticky Solution, 
	[6041]	 = true, -- Enchanted Accumulation, 
	[6038]	 = true, -- A Daily Grind, 
	[6042]	 = true, -- A Bitter Pill, 
	[6037]	 = true, -- Fuel for our Fires, 	
	
	[6088]	 = true, -- Changing the Filters, 
	[6081]	 = true, -- Oiling the Fans, 
	[6089]	 = true, -- Replacing the Commutators, 
	[6080]	 = true, -- A Shadow Malfunction, 
	[6073]	 = true, -- A Shadow Misplaced, 
	[6079]	 = true, -- Again Into the Shadows, 
	
	[6110]	 = true, -- Glitter and Gleam, 
	[6106]	 = true, -- A Matter of Tributes, 
	[6070]	 = true, -- Nibbles and Bits, 
	[6071]	 = true, -- Morsels and Pecks, 
	[6072]	 = true, -- A Matter of Respect, 
}