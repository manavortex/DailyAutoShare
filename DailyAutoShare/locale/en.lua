DailyAutoShare = DailyAutoShare or {}
DAS_STRINGS_LOCALE = DAS_STRINGS_LOCALE or {}
local strings  = {
	-- UI stuffs
	DAS_SI_INVITE_TRUE 		= "Invite is now on",
	DAS_SI_INVITE_FALSE 	= "Invite is now off",
	DAS_SI_ACCEPT_TRUE 		= "Automatically accepting quest shares for dailies",
	DAS_SI_ACCEPT_FALSE 	= "Not automatically accepting dailies",
	DAS_SI_SHARE_TRUE 		= "Automatically sharing your active daily on group member join or 'share' in group chat (Right-click to share your active quest)",
	DAS_SI_SHARE_FALSE 		= "Not automatically sharing your active daily, most likely someone yelled at you (Right-click to share anyway)",
	DAS_SI_SPAM 			= "Click to spam in zone chat",
	DAS_SI_SPAM_VERBOSE 	= "Click to ask for quest shares",
		
	DAS_SI_HIDE		 		= "Hide DailyAutoShare",
	DAS_SI_TOGGLE	 		= "Toggle hidden",
	DAS_SI_MINIMISE	 		= "Toggle minimised",	
	DAS_SI_REFRESH	 		= "Refresh",	
		
	DAS_SI_DONATE	 		= "Click to say thank you:\nLeft: 2k\nRight: 10k\nMiddle: 25k\nYour feedback and/or donation is appreciated!",
	
	DAS_SI_SHARE	 		= "Share",
	DAS_SI_TRACK	 		= "* Track",
	DAS_SI_ABANDON	 		= "|cFF0000Abandon|r",
	DAS_SI_SPAM_SINGLE	 	= "Spam",
	DAS_SI_SETOPEN_TRUE	 	= "Toggle open",
	DAS_SI_SETOPEN_FALSE	= "Toggle complete",
		
	-- Clockwork City
	DAS_CLOCK_IMP			 = "Inciting the Imperfect", 
	DAS_CLOCK_FOE			 = "A Fine-Feathered Foe", 	
		
	
	DAS_CLOCK_CRAFT_CLOTH	 = "Loose Strands", 
	DAS_CLOCK_CRAFT_WATER	 = "A Sticky Solution", 
	DAS_CLOCK_CRAFT_RUNE	 = "Enchanted Accumulation", 
	DAS_CLOCK_CRAFT_SMITH	 = "A Daily Grind", 
	DAS_CLOCK_CRAFT_ALCH	 = "A Bitter Pill", 
	DAS_CLOCK_CRAFT_WOOD	 = "Fuel for our Fires", 

	DAS_CLOCK_DELVE_FILT	 = "Changing the Filters", 
	DAS_CLOCK_DELVE_FANS	 = "Oiling the Fans", 
	DAS_CLOCK_DELVE_COMM	 = "Replacing the Commutators", 
	DAS_CLOCK_DELVE_MALF	 = "A Shadow Malfunction", 
	DAS_CLOCK_DELVE_MISP	 = "A Shadow Misplaced", 
	DAS_CLOCK_DELVE_AGAI	 = "Again Into the Shadows", 	
	
	DAS_CLOCK_CROW_GLIT		 = "Glitter and Gleam", 
	DAS_CLOCK_CROW_TRIB		 = "A Matter of Tributes", 
	DAS_CLOCK_CROW_NIBB		 = "Nibbles and Bits", 
	DAS_CLOCK_CROW_MORS		 = "Morsels and Pecks", 
	DAS_CLOCK_CROW_RESP		 = "A Matter of Respect", 
	DAS_CLOCK_CROW_LEIS		 = "A Matter of Leisure", 
	
	-- Morrowind dailies
	DAS_M_REL_ASHAL          =  "Relics of Ashalmawia", 
	DAS_M_REL_ASSAR          =  "Relics of Assarnatamat", 
	DAS_M_REL_ASHUR          =  "Relics of Ashurnabitashpi", 
	DAS_M_REL_DUSHA          =  "Relics of Dushariran", 
	DAS_M_REL_EBERN          =  "Relics of Ebernanit", 	 
	DAS_M_REL_MAELK          =  "Relics of Maelkashishi", 	
	DAS_M_REL_YASAM          =  "Relics of Yasammidan",
	
	DAS_M_HUNT_EATER         =  "Ash-Eater Hunt", 
	DAS_M_HUNT_ZEXXI         =  "Great Zexxin Hunt", 
	DAS_M_HUNT_RAZOR         =  "King Razor-Tusk Hunt",
	DAS_M_HUNT_JAGGE         =  "Mother Jagged-Claw Hunt", 
	DAS_M_HUNT_STOMP         =  "Old Stomper Hunt", 
	DAS_M_HUNT_TARRA         =  "Tarra-Suj Hunt", 
	DAS_M_HUNT_SVEET         =  "Writhing Sveeth Hunt",

	-- World boss dailies (Hall of Justice)
	DAS_M_BOSS_WUYWU         =  "A Creeping Hunger",
	DAS_M_BOSS_SWARM         =  "Culling the Swarm",
	DAS_M_BOSS_NILTH         =  "Oxen Free",
	DAS_M_BOSS_SALOT         =  "Salothan's Curse",
	DAS_M_BOSS_SIREN         =  "Siren's Song",
	DAS_M_BOSS_APPRE         =  "The Anxious Apprentice",
    
	-- Cave dailies (Hall of Justice)
	DAS_M_DELVE_DAEDR        =  "Daedric Disruptions",
	DAS_M_DELVE_KWAMA        =  "Kwama Conundrum", 				
	DAS_M_DELVE_MISIN        =  "Planting Misinformation",
	DAS_M_DELVE_TAXES        =  "Tax Deduction",
	DAS_M_DELVE_TRIBA        =  "Tribal Troubles",	
	DAS_M_DELVE_SYNDI        =  "Unsettled Syndicate",

	-- wrothgar dailies
    DAS_W_POACHERS          = "Meat for the Masses",
    DAS_W_EDU               = "Reeking of Foul Play",
    DAS_W_NYZ               = "Snow and Steam",
    DAS_W_CORI              = "Nature's Bounty",
    DAS_W_DOLMEN            = "Heresy of Ignorance",
    DAS_W_OGRE              = "Scholarly Salvage",
        
	-- wrothgar single
	DAS_W_HARPIES 		    = "Breakfast of the Bizarre", 
	DAS_W_SPIRITS 		    = "Free Spirits", 
	DAS_W_DURZOGS 		    = "Getting a Bellyful",
	DAS_W_DWEMER 		    = "Parts of the Whole", 
	DAS_W_WEREWOLVES	    = "The Skin Trade", 
	DAS_W_THAT_OTHER	    = "Fire in the Hold", 	
	
    
	-- gold coast
	DAS_DB_MINO			    = "Looming Shadows",
	DAS_DB_ARENA 		    = "The Roar of the Crowds",
	DAS_DB_GOOD 		    = "The Common Good",
	DAS_DB_EVIL 		    = "Buried Evil",	
    
	-- new life
	DAS_NL_STORMHAVEN	    = "Castle Charm Challenge",
	DAS_NL_STONEFALLS	    = "Lava Foot Stomp",
	DAS_NL_ALIKR		    = "Signal Fire Sprint",
	DAS_NL_SHADOWFEN	    = "Fish Boon Feast",
	DAS_NL_GRAHTWOOD	    = "War Orphan's Sojourn",
	DAS_NL_REAPERSMARCH	    = "The Trial of Five-Clawed Guile",
	DAS_NL_BETNIKH		    = "Stonetooth Bash",
	DAS_NL_AURIDON		    = "Mud Ball Merriment",
	DAS_NL_EASTMARCH	    = "Snow Bear Plunge",
	
	-- craglorn
	-- lower
	DAS_CRAG_SARA 		    = "Critical Mass",
	DAS_CRAG_SHADA 		    = "The Fallen City of Shada",
	DAS_CRAG_NEDE 		    = "The Reason We Fight",
	DAS_CRAG_HERMY 		    = "The Seeker’s Archive",
	DAS_CRAG_ELINHIR 	    = "Supreme Power",
	DAS_CRAG_TUWHACCA 	    = "The Trials of Rahni’Za",
	DAS_CRAG_NEREID 	    = "Waters Run Foul",
	
	-- upper
	DAS_CRAG_NIRNCRUX	    = "The Blood of Nirn",
	DAS_CRAG_WORLDTRIP 	    = "The Gray Passage",
	DAS_CRAG_SCALES 	    = "Iron and Scales",
	DAS_CRAG_NECRO 		    = "Souls of the Betrayed",
	DAS_CRAG_KIDNAP 	    = "Taken Alive",
	DAS_CRAG_HITMAN 	    = "The Truer Fangs",
	DAS_CRAG_DUNGEON 	    = "Uncaged",
    
    
    DAS_QUEST_M_ASHLANDER   = "Huntmaster Sorim-Nakar",    
    
    DAS_QUEST_CC_ROBOT      = "Clockwork Facilitator",      
    DAS_QUEST_CC_CROW       = "Bursar of Tributes",
    DAS_QUEST_CC_NOVICE     = "Novice Holli",
    DAS_QUEST_CC_THISTLE    = "Leaps-Over-Thistle",
    DAS_QUEST_CC_DARO       = "Adjunct Daro",
    DAS_QUEST_CC_TILELLE    = "Intiate Tilelle",

    DAS_QUEST_W_OUFA        = "Sergeant Oufa",
    DAS_QUEST_W_USHANG      = "Ushang the Untamed",

    DAS_QUEST_W_BIRKHU      = "Birkhu the Bold",

    DAS_QUEST_DB_ARVINA     = "Cleric Arvina", 
    
    DAS_QUEST_DB_BOUNTY     = "Bounty Board",  
    
    
    -- don't need translation for anyone but the russians - I think
        
    DAS_QUEST_DB_LARONEN    = "Laronen",
    DAS_QUEST_DB_FINIA      = "Finia Sele",
    DAS_QUEST_DB_CODUS      = "Codus ap Dugal",
    
    DAS_QUEST_W_NEDNOR      = "Nednor", 
    DAS_QUEST_W_THAZEK      = "Thazeg", 
    DAS_QUEST_W_ARUSHNA     = "Arushna",
    DAS_QUEST_W_LILYAMEH    = "Lilyameh",
    DAS_QUEST_W_BAGRUBESH   = "Bagrugbesh",
    DAS_QUEST_W_CIRANTILLE  = "Cirantille",
    DAS_QUEST_W_MENNINIA    = "Menninia",
    DAS_QUEST_W_SONOLIA     = "Sonolia Muspidius",
    DAS_QUEST_W_RAYNOR      = "Raynor Vanos", -- maybe not include Raynor?
    
    DAS_QUEST_M_TRAYLAN     = "Traylan Omoril",
    DAS_QUEST_M_BELERU      = "Beleru Omoril",
    DAS_QUEST_M_NUMANI      = "Numani-Rasi",
    DAS_QUEST_M_NARA        = "Nara Varam",
    DAS_QUEST_M_TIRVINA     = "Tirvina Avani",
    DAS_QUEST_M_DINOR       = "Dinor Salvi",
    DAS_QUEST_M_BRAVOSI     = "Bravosi Felder",
    DAS_QUEST_M_IVULEN      = "Ivulen Andromo",
    DAS_QUEST_M_SAVILE      = "Savile Alam",
    DAS_QUEST_M_KYLIA       = "Kylia Thando",
    DAS_QUEST_M_EVOS        = "Evos Hledas",
    DAS_QUEST_M_ALVES       = "Alves Droth",
    DAS_QUEST_M_DREDASE     = "Dredase-Hlarar",
    DAS_QUEST_M_VORAR       = "Vorar Vendu",
    DAS_QUEST_M_VALGA       = "Valga Celatus",
    
    DAS_QUEST_CC_ORC        = "Razgurug",
    DAS_QUEST_CC_COOK       = "Aveberl Tremouille",
    DAS_QUEST_CC_MINDORA    = "Mindora",
    DAS_QUEST_CC_NJORD      = "Njordemar",
    DAS_QUEST_CC_IGMUND     = "Igmund",
    
    DAS_QUEST_W_GURUZUG     = "Guruzug",
    DAS_QUEST_W_ARZORAG     = "Arzorag",

}
DailyAutoShare.EnglishQuestNames = strings
DAS_STRINGS_LOCALE.en = strings

for stringId, stringValue in pairs(strings) do
	ZO_CreateStringId(stringId, stringValue)
	SafeAddVersion(stringId, 1)
end
