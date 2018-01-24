DAS.shareables 	= DAS.shareables or {}
DAS.bingo 		= DAS.bingo 	 or {}
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

DAS.bingo[zoneId] = { -- Wrothgar
	-- the poachers
	["poa"] 	= 1,
	-- the megalomaniac riekling king
	["edu"] 	= 2,
	-- snow and steam, the centurion
	["nyz"] 	= 3,
	-- cori the abomination
	["cori"] 	= 4,
	-- dolmen		
	["dolmen"] = 5,
	["dol"] = 5,
	["zan"] 	= 5,
	-- shrek the angry literate ogre
	["ogre"] 	= 6,
	["mad"] 	= 6,		
	["shrek"] 	= 6,

	
	["harpy"] 	= 7,	
	["spirit"] 	= 8,	
	["durzog"] 	= 9,	
	["dwemer"] 	= 10,	
	["wolf"] 	= 11,	
	["doggo"] 	= 11,	
	["woffie"] 	= 11,	
	["bandit"] 	= 12,	
	
	
}	
