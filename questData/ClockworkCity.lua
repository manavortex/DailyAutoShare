DAS.shareables 	    = DAS.shareables    or {}
DAS.bingo 		      = DAS.bingo 	      or {}

local zoneId	= 980
local zoneId2	= 981
local zoneId3	= 983

local halls_of_regulation_id  = 985
local shadow_cleft_id 		    = 986
local planisphere_id 		      = 993
local wellspring_id 		      = 992


DAS.subzones[zoneId2] = zoneId
DAS.subzones[zoneId3] = zoneId


-- =============================================================================================== --
-- Clockwork City
-- =============================================================================================== --

local bingo = {}
local tbl = {}



-- boss dailies

table.insert(tbl, GetString(DAS_CLOCK_IMP))
table.insert(bingo, "imp")

table.insert(tbl, GetString(DAS_CLOCK_FOE))
table.insert(bingo, "foe")

local questListBoss = {  
		[GetString(DAS_CLOCK_IMP)] = true,
		[GetString(DAS_CLOCK_FOE)] = true,
}

-- slag town dailies

table.insert(tbl, GetString(DAS_CLOCK_CRAFT_CLOTH))
table.insert(bingo, "strands")

table.insert(tbl, GetString(DAS_CLOCK_CRAFT_WATER))
table.insert(bingo, "sticky")

table.insert(tbl, GetString(DAS_CLOCK_CRAFT_RUNE))
table.insert(bingo, "acc")

table.insert(tbl, GetString(DAS_CLOCK_CRAFT_SMITH))
table.insert(bingo, "grind")

table.insert(tbl, GetString(DAS_CLOCK_CRAFT_ALCH))
table.insert(bingo, "pill")

table.insert(tbl, GetString(DAS_CLOCK_CRAFT_WOOD))
table.insert(bingo, "fuel")

local questListCraft = {
		[GetString(DAS_CLOCK_CRAFT_CLOTH)] = true,
		[GetString(DAS_CLOCK_CRAFT_WATER)] = true,
		[GetString(DAS_CLOCK_CRAFT_RUNE)] = true,
		[GetString(DAS_CLOCK_CRAFT_SMITH)] = true,
		[GetString(DAS_CLOCK_CRAFT_ALCH)] = true,
		[GetString(DAS_CLOCK_CRAFT_WOOD)] = true,
  }

-- delve dailies

table.insert(tbl, GetString(DAS_CLOCK_DELVE_FILT))
table.insert(bingo, "filter")

table.insert(tbl, GetString(DAS_CLOCK_DELVE_FANS))
table.insert(bingo, "fan")

table.insert(tbl, GetString(DAS_CLOCK_DELVE_COMM))
table.insert(bingo, "comm")

table.insert(tbl, GetString(DAS_CLOCK_DELVE_MALF))
table.insert(bingo, "malfunc")

table.insert(tbl, GetString(DAS_CLOCK_DELVE_MISP))
table.insert(bingo, "misplaced")

table.insert(tbl, GetString(DAS_CLOCK_DELVE_AGAI))
table.insert(bingo, "shadows")

local questListDelve = {
  [GetString(DAS_CLOCK_DELVE_FILT)] = true,
  [GetString(DAS_CLOCK_DELVE_FANS)] = true,
  [GetString(DAS_CLOCK_DELVE_COMM)] = true,
  [GetString(DAS_CLOCK_DELVE_MALF)] = true,
  [GetString(DAS_CLOCK_DELVE_MISP)] = true,
  [GetString(DAS_CLOCK_DELVE_AGAI)] = true,
}

-- crow dailies

table.insert(tbl, GetString(DAS_CLOCK_CROW_GLIT))
table.insert(bingo, "gleam")

table.insert(tbl, GetString(DAS_CLOCK_CROW_TRIB))
table.insert(bingo, "tribute")

table.insert(tbl, GetString(DAS_CLOCK_CROW_NIBB))
table.insert(bingo, "bits")

table.insert(tbl, GetString(DAS_CLOCK_CROW_MORS))
table.insert(bingo, "morsels")

table.insert(tbl, GetString(DAS_CLOCK_CROW_RESP))
table.insert(bingo, "respect")

table.insert(tbl, GetString(DAS_CLOCK_CROW_LEIS))
table.insert(bingo, "leisure")

local questListCrow = {
  [GetString(DAS_CLOCK_CROW_GLIT)] = true,
  [GetString(DAS_CLOCK_CROW_TRIB)] = true,
  [GetString(DAS_CLOCK_CROW_NIBB)] = true,
  [GetString(DAS_CLOCK_CROW_MORS)] = true,
  [GetString(DAS_CLOCK_CROW_RESP)] = true,
  [GetString(DAS_CLOCK_CROW_LEIS)] = true,
}

DAS.shareables[zoneId] = tbl
DAS.makeBingoTable(zoneId, bingo)

-- Halls of Regulation

bingo = {}
local tbl2 = {}
table.insert(tbl2, GetString(DAS_CLOCK_DELVE_FILT))
table.insert(bingo, "filter")
table.insert(tbl2, GetString(DAS_CLOCK_DELVE_FANS))
table.insert(bingo, "fan")
table.insert(tbl2, GetString(DAS_CLOCK_CRAFT_WOOD))
table.insert(bingo, "fuel")
table.insert(tbl2, GetString(DAS_CLOCK_DELVE_COMM))
table.insert(bingo, "comm")


DAS.shareables[shadow_cleft_id] = tbl2
DAS.makeBingoTable(shadow_cleft_id, bingo)

-- Shadow Cleft
local tbl3 = {}
bingo = {}
table.insert(tbl3, GetString(DAS_CLOCK_DELVE_MALF))
table.insert(bingo, "malfunc")
table.insert(tbl3, GetString(DAS_CLOCK_DELVE_MISP))
table.insert(bingo, "misplaced")
table.insert(tbl3, GetString(DAS_CLOCK_CRAFT_RUNE))
table.insert(bingo, "acc")
table.insert(tbl3, GetString(DAS_CLOCK_DELVE_AGAI))
table.insert(bingo, "shadows")

DAS.shareables[shadow_cleft_id] = tbl3
DAS.makeBingoTable(shadow_cleft_id, bingo)

-- Planisphere
local tbl4 = {}
bingo = {}
table.insert(tbl4, GetString(DAS_CLOCK_CRAFT_CLOTH))
DAS.shareables[planisphere_id] = tbl4
DAS.makeBingoTable(planisphere_id, bingo)

-- Everwound Wellspring
local tbl5 = {}
bingo = {}
table.insert(tbl5, GetString(DAS_CLOCK_CRAFT_ALCH))
table.insert(bingo, "strands")

DAS.shareables[wellspring_id] = tbl5
DAS.makeBingoTable(planisphere_id, bingo)

DAS.QuestLists[zoneId] = {
	["boss"] = questListBoss,
	["craft"] = questListCraft,
	["crow"] = questListCrow,
	["delve"] = questListDelve,
}




DAS.questStarter[zoneId] = {
  [GetString(DAS_QUEST_CC_ROBOT)] = true,
  [GetString(DAS_QUEST_CC_NOVICE)] = true,
  [GetString(DAS_QUEST_CC_ORC)] = true,
  [GetString(DAS_QUEST_CC_CROW)] = true,
}

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

DAS.zoneHasAdditionalId(zoneId2, zoneId)
DAS.zoneHasAdditionalId(zoneId3, zoneId)