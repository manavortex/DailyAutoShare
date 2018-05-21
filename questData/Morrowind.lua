DAS.shareables 	        = DAS.shareables    or {}
DAS.bingo 		        = DAS.bingo 	    or {}
DAS.questFinisher  = DAS.questFinisher    or {}
DAS.questStarter   = DAS.questStarter     or {}


local zoneId	= 849

local tbl = {}
local tbl2 = {}

DAS.QuestLists = DAS.QuestLists or {}
DAS.QuestLists[zoneId] = {
	["relic"] = {
		[1] = GetString(DAS_M_REL_ASHAL),
		[2] = GetString(DAS_M_REL_ASSAR),
		[3] = GetString(DAS_M_REL_ASHUR),
		[4] = GetString(DAS_M_REL_DUSHA),
		[5] = GetString(DAS_M_REL_EBERN),
		[6] = GetString(DAS_M_REL_MAELK),
		[7] = GetString(DAS_M_REL_YASAM),
	},    
	["hunt"] = {
		[1] = GetString(DAS_M_HUNT_EATER),
		[2] = GetString(DAS_M_HUNT_ZEXXI),
		[3] = GetString(DAS_M_HUNT_RAZOR),
		[4] = GetString(DAS_M_HUNT_JAGGE),
		[5] = GetString(DAS_M_HUNT_STOMP),
		[6] = GetString(DAS_M_HUNT_TARRA),
		[7] = GetString(DAS_M_HUNT_SVEET),	
	},
	["delve"] = {
		[1] = GetString(DAS_M_DELVE_DAEDR),
		[2] = GetString(DAS_M_DELVE_KWAMA),
		[3] = GetString(DAS_M_DELVE_MISIN),
		[4] = GetString(DAS_M_DELVE_TAXES),
		[5] = GetString(DAS_M_DELVE_TRIBA),
		[6] = GetString(DAS_M_DELVE_SYNDI),
	},
	["boss"] = {
		[1] = GetString(DAS_M_BOSS_WUYWU),
		[2] = GetString(DAS_M_BOSS_SWARM),
		[3] = GetString(DAS_M_BOSS_NILTH),
		[4] = GetString(DAS_M_BOSS_SALOT),
		[5] = GetString(DAS_M_BOSS_SIREN),
		[6] = GetString(DAS_M_BOSS_APPRE),
	},
}


table.insert(tbl, DAS.QuestLists[zoneId].relic)
table.insert(tbl2, "relic")

table.insert(tbl, GetString(DAS_M_HUNT_EATER))
table.insert(tbl2, "ash")
table.insert(tbl, GetString(DAS_M_HUNT_ZEXXI))
table.insert(tbl2, "zexxin")
table.insert(tbl, GetString(DAS_M_HUNT_RAZOR))
table.insert(tbl2, "razor")
table.insert(tbl, GetString(DAS_M_HUNT_JAGGE))
table.insert(tbl2, "claw")
table.insert(tbl, GetString(DAS_M_HUNT_STOMP))
table.insert(tbl2, "stomper")
table.insert(tbl, GetString(DAS_M_HUNT_TARRA))
table.insert(tbl2, "tarra")
table.insert(tbl, GetString(DAS_M_HUNT_SVEET))
table.insert(tbl2, "sveeth")

table.insert(tbl, GetString(DAS_M_DELVE_DAEDR))
table.insert(tbl2, "daedra")
table.insert(tbl, GetString(DAS_M_DELVE_KWAMA))
table.insert(tbl2, "kwama")
table.insert(tbl, GetString(DAS_M_DELVE_MISIN))
table.insert(tbl2, "counterspy")
table.insert(tbl, GetString(DAS_M_DELVE_TAXES))
table.insert(tbl2, "taxes")
table.insert(tbl, GetString(DAS_M_DELVE_TRIBA))
table.insert(tbl2, "tribe")
table.insert(tbl, GetString(DAS_M_DELVE_SYNDI))
table.insert(tbl2, "syndicate")

table.insert(tbl, GetString(DAS_M_BOSS_WUYWU))
table.insert(tbl2, {[1] = "wuyu", [2] = "wyu", [3] = "wuyuvus", [4] = "wuju", [5] = "sul", [6] = "sulipund"})
table.insert(tbl, GetString(DAS_M_BOSS_SWARM))
table.insert(tbl2, {[1] ="queen", [2] = "swarm", [3] = "consort", [4] = "qc"})
table.insert(tbl, GetString(DAS_M_BOSS_NILTH))
table.insert(tbl2, {[1] ="nil", [2] = "nilthog", [3] = "oxen"})
table.insert(tbl, GetString(DAS_M_BOSS_SALOT))
table.insert(tbl2, {[1] ="salo", [2] = "salothan", [3] = "sal"})
table.insert(tbl, GetString(DAS_M_BOSS_SIREN))
table.insert(tbl2, {[1] ="siren", [2] = "song", [3] = "songbird", [4] = "ss", [5] = "sirene"})
table.insert(tbl, GetString(DAS_M_BOSS_APPRE))
table.insert(tbl2, {[1] = "dub", [2] = "dubdil" })



table.insert(tbl, GetString(DAS_M_REL_ASHAL))
table.insert(tbl2, "ashal")
table.insert(tbl, GetString(DAS_M_REL_ASSAR))
table.insert(tbl2, "assar")
table.insert(tbl, GetString(DAS_M_REL_ASHUR))
table.insert(tbl2, "ashur")
table.insert(tbl, GetString(DAS_M_REL_DUSHA))
table.insert(tbl2, "dushar")
table.insert(tbl, GetString(DAS_M_REL_EBERN))
table.insert(tbl2, "eber")
table.insert(tbl, GetString(DAS_M_REL_MAELK))
table.insert(tbl2, "maelk")
table.insert(tbl, GetString(DAS_M_REL_YASAM))
table.insert(tbl2, "yasam")

DAS.shareables[zoneId]      = tbl



-- Khartag point
DAS.shareables[921] = {
	[1] = DAS.shareables[zoneId][20],
}-- Zainsipilu
DAS.shareables[922] = {
	[1] = DAS.shareables[zoneId][17],
}
-- Matus-Akin Egg Mine
DAS.shareables[923] = {
	[1] = DAS.shareables[zoneId][16],
}
-- Matus-Akin Egg Mine
DAS.shareables[924] = {
	[1] = DAS.shareables[zoneId][18],
}
-- Matus-Akin Egg Mine
DAS.shareables[925] = {
	[1] = GetString(DAS_M_DELVE_TRIBA),
}
-- Ashalmawia
DAS.shareables[961] = {
	[1] = DAS.shareables[zoneId][9],
}

DAS.makeBingoTable(zoneId, tbl2) 
	

DAS.questStarter[zoneId] = {
    [GetString(DAS_QUEST_M_BELERU)]     = true,  -- Hall of Justice
    [GetString(DAS_QUEST_M_TRAYLAN)]    = true,  -- Hall of Justice
    [GetString(DAS_QUEST_M_ASHLANDER)]  = true,  -- Ashlander Hunt
    [GetString(DAS_QUEST_M_NUMANI)]     = true,  -- Ashlander Relics
    [GetString(DAS_QUEST_M_RIVYN)]      = true,  -- Battlegrounds
}

DAS.questFinisher[zoneId] = {
    [GetString(DAS_QUEST_M_ASHLANDER)]  = true, 
    [GetString(DAS_QUEST_M_NUMANI)]     = true, 
    
    [GetString(DAS_QUEST_M_NARA)]       = true, 
    [GetString(DAS_QUEST_M_TRAYLAN )]   = true, 
    [GetString(DAS_QUEST_M_BELERU  )]   = true, 
    [GetString(DAS_QUEST_M_NUMANI  )]   = true, 
    [GetString(DAS_QUEST_M_NARA    )]   = true, 
    [GetString(DAS_QUEST_M_TIRVINA )]   = true, 
    [GetString(DAS_QUEST_M_DINOR   )]   = true, 
    [GetString(DAS_QUEST_M_BRAVOSI )]   = true, 
    [GetString(DAS_QUEST_M_IVULEN  )]   = true, 
    [GetString(DAS_QUEST_M_SAVILE  )]   = true, 
    [GetString(DAS_QUEST_M_KYLIA   )]   = true, 
    [GetString(DAS_QUEST_M_EVOS    )]   = true, 
    [GetString(DAS_QUEST_M_ALVES   )]   = true, 
    [GetString(DAS_QUEST_M_DREDASE )]   = true, 
    [GetString(DAS_QUEST_M_VORAR   )]   = true, 
    [GetString(DAS_QUEST_M_VALGA   )]   = true, 
    [GetString(DAS_QUEST_M_RIVYN)]      = true,  -- Battlegrounds
}


DAS.questIds[zoneId] = {
    -- Morrowind dailies
	[5924]  = true, -- "Relics of Yasammidan",
	[5925]  = true, -- "Relics of Assarnatamat",
	[5926]  = true, -- "Relics of Maelkashishi",
	[5927]  = true, -- "Relics of Ashurnabitashpi",
	[5928]  = true, -- "Relics of Ebernanit",
	[5929]  = true, -- "Relics of Dushariran",
	[5930]  = true, -- "Relics of Ashalmawia",
	
	[5907]  = true, -- "Great Zexxin Hunt",
	[5908]  = true, -- "Tarra-Suj Hunt",
	[5909]  = true, -- "Writhing Sveeth Hunt",
	[5910]  = true, -- "Mother Jagged-Claw Hunt",
	[5911]  = true, -- "Ash-Eater Hunt",
	[5912]  = true, -- "Old Stomper Hunt",
	[5913]  = true, -- "King Razor-Tusk Hunt",

	-- Cave dailies (Hall of Justice)
	[5956]  = true, -- "Daedric Disruptions",
	[5958]  = true, -- "Unsettled Syndicate",
	[5961]  = true, -- "Planting Misinformation",
	[5962]  = true, -- "Kwama Conundrum",
	[5934]  = true, -- "Tax Deduction",
	[5915]  = true, -- "Tribal Troubles",
	[5958]  = true, -- "Unsettled Syndicate",
		
	-- World boss dailies (Hall of Justice)
	[5916]  = true, -- "The Anxious Apprentice",
	[5918]  = true, -- "A Creeping Hunger",
	[5865]  = true, -- "Culling the Swarm",
	[5866]  = true, -- "Oxen Free",
	[5904]  = true, -- "Salothan's Curse",
	[5906]  = true, -- "Siren's Song",
}