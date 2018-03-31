DAS.shareables 	    = DAS.shareables    or {}
DAS.bingo 		    = DAS.bingo 	    or {}


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

table.insert(tbl2, {"poa", "poacher"})
table.insert(tbl2, "edu")
table.insert(tbl2, "nyz")
table.insert(tbl2, "cori")
table.insert(tbl2, {"dolmen", "zan"})
table.insert(tbl2, {"ogre", "mad", "shrek"})

table.insert(tbl2, "harpy")
table.insert(tbl2, "spirit")
table.insert(tbl2, "durzog")
table.insert(tbl2, "dwemer")
table.insert(tbl2, "wolf")
table.insert(tbl2, "bandit")

DAS.makeBingoTable(zoneId, tbl2) 
