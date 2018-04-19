DAS.shareables 	        = DAS.shareables            or {}
DAS.bingo 		        = DAS.bingo 	            or {}
DAS.questFinisher  = DAS.questFinisher    or {}
DAS.questStarter   = DAS.questStarter     or {}

local zoneId	= 684

DAS.shareables[zoneId] = {
	
    [1] = GetString(DAS_W_POACHERS),
    [2] = GetString(DAS_W_EDU),  
    [3] = GetString(DAS_W_NYZ),    
    [4] = GetString(DAS_W_CORI),  
    [5] = GetString(DAS_W_DOLMEN),
    [6] = GetString(DAS_W_OGRE),  
    
    [7] = GetString(DAS_W_HARPIES),		
    [8] = GetString(DAS_W_SPIRITS), 		
    [9] = GetString(DAS_W_DURZOGS), 		
    [10] = GetString(DAS_W_DWEMER), 		
    [11] = GetString(DAS_W_WEREWOLVES),
    [12] = GetString(DAS_W_THAT_OTHER),	
}
local tbl2 = {}

table.insert(tbl2, {[1] = "poa",    [2] = "poacher"})
table.insert(tbl2, "edu")
table.insert(tbl2, "nyz")
table.insert(tbl2, {[1] = "cori",   [2] = "nb"})
table.insert(tbl2, {[1] = "dolmen", [2] = "zan", [3] = "dol",   [4] = "ud"})
table.insert(tbl2, {[1] = "ogre",   [2] = "mad", [3] = "shrek"})

table.insert(tbl2, "harpy")
table.insert(tbl2, "spirits")
table.insert(tbl2, "durzog")
table.insert(tbl2, {[1] ="dwemer",  [2] = "parts"})
table.insert(tbl2, {[1] = "wolf",   [2] = "skintrade"})
table.insert(tbl2, {[1] = "bandit", [2] = "fire"})

DAS.makeBingoTable(zoneId, tbl2) 

DAS.questStarter[zoneId] = {
    [GetString(DAS_QUEST_W_GURUZUG)] = true,
    [GetString(DAS_QUEST_W_ARZORAG)] = true,
}

DAS.questFinisher[zoneId] = {
    [GetString(DAS_QUEST_W_OUFA      )] = true,
    [GetString(DAS_QUEST_W_USHANG    )] = true,
    
    [GetString(DAS_QUEST_W_NEDNOR    )] = true,
    [GetString(DAS_QUEST_W_THAZEK    )] = true,
    [GetString(DAS_QUEST_W_ARUSHNA   )] = true,
    [GetString(DAS_QUEST_W_LILYAMEH  )] = true,
    [GetString(DAS_QUEST_W_BAGRUBESH )] = true,
    [GetString(DAS_QUEST_W_CIRANTILLE)] = true,
    [GetString(DAS_QUEST_W_BIRKHU    )] = true,
    [GetString(DAS_QUEST_W_MENNINIA  )] = true,
    [GetString(DAS_QUEST_W_SONOLIA   )] = true,
    -- [GetString(DAS_QUEST_W_RAYNOR    )] = true,

}
