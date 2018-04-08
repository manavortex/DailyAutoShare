DAS.shareables 	        = DAS.shareables            or {}
DAS.bingo 		        = DAS.bingo 	            or {}
DAS.questTurninStrings  = DAS.questTurninStrings    or {}
DAS.questStartStrings   = DAS.questStartStrings     or {}

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

table.insert(tbl2, {[1] = "poa", [2] = "poacher"})
table.insert(tbl2, "edu")
table.insert(tbl2, "nyz")
table.insert(tbl2, "cori")
table.insert(tbl2, {[1] ="dolmen", [2] = "zan"})
table.insert(tbl2, {[1] = "ogre", [2] = "mad", [3] = "shrek"})

table.insert(tbl2, "harpy")
table.insert(tbl2, "spirits")
table.insert(tbl2, "durzog")
table.insert(tbl2, "dwemer")
table.insert(tbl2, {[1] = "wolf", [2] = "skintrade"})
table.insert(tbl2, {[1] = "bandit", [2] = "fire"})

DAS.makeBingoTable(zoneId, tbl2) 

DAS.questStartStrings[zoneId] = {
    [GetString(DAS_W_BOSS_START)] = true,
    [GetString(DAS_W_DELVE_START)] = true,
}

DAS.questTurninStrings[zoneId] = {

    [GetString(DAS_W_POA_TURNIN)] = true,
    [GetString(DAS_W_EDU_TURNIN)] = true,
    [GetString(DAS_W_NYZ_TURNIN)] = true,
    [GetString(DAS_W_CORI_TURNIN)] = true,
    [GetString(DAS_W_DOLMEN_TURNIN)] = true,
    [GetString(DAS_W_OGRE_TURNIN)] = true,

    [GetString(DAS_W_HARPIES_TURNIN)] = true,
    [GetString(DAS_W_SPIRITS_TURNIN)] = true,
    [GetString(DAS_W_DURZOGS_TURNIN)] = true,
    [GetString(DAS_W_DWEMER_TURNIN)] = true,
    [GetString(DAS_W_WEREWOLVES_TURNIN)] = true,
    [GetString(DAS_W_THAT_OTHER_TURNIN)] = true,

}
