DAS.shareables 	        = DAS.shareables    or {}
DAS.bingo 		        = DAS.bingo 	    or {}
DAS.questFinisher  = DAS.questFinisher    or {}
DAS.questStarter   = DAS.questStarter     or {}


local zoneId	= 849

local tbl = {}
local tbl2 = {}

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
table.insert(tbl2, {[1] ="siren", [2] = "song", [3] = "songbird", [4] = "ss"})
table.insert(tbl, GetString(DAS_M_BOSS_APPRE))
table.insert(tbl2, {[1] = "dub", [2] = "dubdil" })

DAS.shareables[zoneId]      = tbl
DAS.QuestLists = DAS.QuestLists or {}
DAS.QuestLists[zoneId] = {
	["relic"] = {
		[GetString(DAS_M_REL_ASHAL)] = true,
		[GetString(DAS_M_REL_ASSAR)] = true,
		[GetString(DAS_M_REL_ASHUR)] = true,
		[GetString(DAS_M_REL_DUSHA)] = true,
		[GetString(DAS_M_REL_EBERN)] = true,
		[GetString(DAS_M_REL_MAELK)] = true,
		[GetString(DAS_M_REL_YASAM)] = true,
	},
	["hunt"] = {
		[GetString(DAS_M_HUNT_EATER)] = true,
		[GetString(DAS_M_HUNT_ZEXXI)] = true,
		[GetString(DAS_M_HUNT_RAZOR)] = true,
		[GetString(DAS_M_HUNT_JAGGE)] = true,
		[GetString(DAS_M_HUNT_STOMP)] = true,
		[GetString(DAS_M_HUNT_TARRA)] = true,
		[GetString(DAS_M_HUNT_SVEET)] = true,	
	},
	["delve"] = {
		[GetString(DAS_M_DELVE_DAEDR)] = true,
		[GetString(DAS_M_DELVE_KWAMA)] = true,
		[GetString(DAS_M_DELVE_MISIN)] = true,
		[GetString(DAS_M_DELVE_TAXES)] = true,
		[GetString(DAS_M_DELVE_TRIBA)] = true,
		[GetString(DAS_M_DELVE_SYNDI)] = true,
	},
	["boss"] = {
		[GetString(DAS_M_BOSS_WUYWU)] = true,
		[GetString(DAS_M_BOSS_SWARM)] = true,
		[GetString(DAS_M_BOSS_NILTH)] = true,
		[GetString(DAS_M_BOSS_SALOT)] = true,
		[GetString(DAS_M_BOSS_SIREN)] = true,
		[GetString(DAS_M_BOSS_APPRE)] = true,
	},
}


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
	[1] = DAS.shareables[zoneId][19],
}
-- Ashalmawia
DAS.shareables[961] = {
	[1] = DAS.shareables[zoneId][1],
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
