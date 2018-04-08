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
	
	DAS_CLOCK_IMP_TURNIN     = "IMPLEMENT_ME", 
	DAS_CLOCK_FOE_TURNIN	 = "IMPLEMENT_ME", 		
	
    -- Clockwork City
	DAS_CLOCK_BOSS_START	 = "I'll take on a contract.",
	DAS_CLOCK_CRAFT_START    = "Got any work?",
	DAS_CLOCK_CAVE_START     = "What's the job?",
	DAS_CLOCK_CROW_START     = "How can I help?",
	
	DAS_CLOCK_CRAFT_CLOTH	 = "Loose Strands", 
	DAS_CLOCK_CRAFT_WATER	 = "A Sticky Solution", 
	DAS_CLOCK_CRAFT_RUNE	 = "Enchanted Accumulation", 
	DAS_CLOCK_CRAFT_SMITH	 = "A Daily Grind", 
	DAS_CLOCK_CRAFT_ALCH	 = "A Bitter Pill", 
	DAS_CLOCK_CRAFT_WOOD	 = "Fuel for our Fires", 

	DAS_CLOCK_CRAFT_CLOTH_TURNIN = "IMPLEMENT_ME", 
	DAS_CLOCK_CRAFT_WATER_TURNIN = "IMPLEMENT_ME", 
	DAS_CLOCK_CRAFT_RUNE_TURNIN	 = "IMPLEMENT_ME", 
	DAS_CLOCK_CRAFT_SMITH_TURNIN = "IMPLEMENT_ME", 
	DAS_CLOCK_CRAFT_ALCH_TURNIN	 = "IMPLEMENT_ME", 
	DAS_CLOCK_CRAFT_WOOD_TURNIN	 = "IMPLEMENT_ME", 
	

	DAS_CLOCK_DELVE_FILT	 = "Changing the Filters", 
	DAS_CLOCK_DELVE_FANS	 = "Oiling the Fans", 
	DAS_CLOCK_DELVE_COMM	 = "Replacing the Commutators", 
	DAS_CLOCK_DELVE_MALF	 = "A Shadow Malfunction", 
	DAS_CLOCK_DELVE_MISP	 = "A Shadow Misplaced", 
	DAS_CLOCK_DELVE_AGAI	 = "Again Into the Shadows", 
	
	DAS_CLOCK_DELVE_FILT_TURNIN	 = "IMPLEMENT_ME", 
	DAS_CLOCK_DELVE_FANS_TURNIN	 = "IMPLEMENT_ME", 
	DAS_CLOCK_DELVE_COMM_TURNIN	 = "IMPLEMENT_ME", 
	DAS_CLOCK_DELVE_MALF_TURNIN	 = "IMPLEMENT_ME", 
	DAS_CLOCK_DELVE_MISP_TURNIN	 = "IMPLEMENT_ME", 
	DAS_CLOCK_DELVE_AGAI_TURNIN	 = "IMPLEMENT_ME", 
	
	DAS_CLOCK_CROW_GLIT		 = "Glitter and Gleam", 
	DAS_CLOCK_CROW_TRIB		 = "A Matter of Tributes", 
	DAS_CLOCK_CROW_NIBB		 = "Nibbles and Bits", 
	DAS_CLOCK_CROW_MORS		 = "Morsels and Pecks", 
	DAS_CLOCK_CROW_RESP		 = "A Matter of Respect", 
	DAS_CLOCK_CROW_LEIS		 = "A Matter of Leisure", 
	
	DAS_CLOCK_CROW_GLIT_TURNIN = "IMPLEMENT_ME", 
	DAS_CLOCK_CROW_TRIB_TURNIN = "IMPLEMENT_ME", 
	DAS_CLOCK_CROW_NIBB_TURNIN = "IMPLEMENT_ME", 
	DAS_CLOCK_CROW_MORS_TURNIN = "IMPLEMENT_ME", 
	DAS_CLOCK_CROW_RESP_TURNIN = "IMPLEMENT_ME", 
	DAS_CLOCK_CROW_LEIS_TURNIN = "IMPLEMENT_ME", 
	
	-- Morrowind dailies
	DAS_M_REL_ASHAL =  "Relics of Ashalmawia", 
	DAS_M_REL_ASSAR =  "Relics of Assarnatamat", 
	DAS_M_REL_ASHUR =  "Relics of Ashurnabitashpi", 
	DAS_M_REL_DUSHA =  "Relics of Dushariran", 
	DAS_M_REL_EBERN =  "Relics of Ebernanit", 	 
	DAS_M_REL_MAELK =  "Relics of Maelkashishi", 	
	DAS_M_REL_YASAM =  "Relics of Yasammidan",
	
	DAS_M_HUNT_EATER =  "Ash-Eater Hunt", 
	DAS_M_HUNT_ZEXXI =  "Great Zexxin Hunt", 
	DAS_M_HUNT_RAZOR =  "King Razor-Tusk Hunt",
	DAS_M_HUNT_JAGGE =  "Mother Jagged-Claw Hunt", 
	DAS_M_HUNT_STOMP =  "Old Stomper Hunt", 
	DAS_M_HUNT_TARRA =  "Tarra-Suj Hunt", 
	DAS_M_HUNT_SVEET =  "Writhing Sveeth Hunt",

    DAS_M_BOSS_START = "Is there a job available?",
    DAS_M_DELVE_START = "I'd like to help with any work you have available.",
    DAS_M_HUNT_START = "I'm interested in a hunt.",
    DAS_M_RELIC_START = "What kind of help do you need?",

    DAS_M_BOSS_TURNIN = "I've done what you requested.",
    DAS_M_DELVE_TURNIN = "I'd like to help with any work you have available.",
    DAS_M_HUNT_TURNIN = "Here's a trophy from my kill.",
    DAS_M_RELIC_TURNIN = "Here are the relics I recovered.",

	-- World boss dailies (Hall of Justice)
	DAS_M_BOSS_WUYWU =  "A Creeping Hunger",
	DAS_M_BOSS_SWARM =  "Culling the Swarm",
	DAS_M_BOSS_NILTH =  "Oxen Free",
	DAS_M_BOSS_SALOT =  "Salothan's Curse",
	DAS_M_BOSS_SIREN =  "Siren's Song",
	DAS_M_BOSS_APPRE =  "The Anxious Apprentice",
    
	DAS_M_BOSS_WUYWU_TURNIN =  "I dealt with the Hunger.",
    DAS_M_BOSS_SWARM_TURNIN =  "IMPLEMENT_ME",    
    DAS_M_BOSS_NILTH_TURNIN =  "I took care of the nix-ox and have the mushroom samples.",
    DAS_M_BOSS_SALOT_TURNIN =  "No, I'm here to tell you that the Salothan ghosts have been laid to rest.",
    DAS_M_BOSS_SIREN_TURNIN =  "I defeated the Nereid and recovered these goods.",
    DAS_M_BOSS_APPRE_TURNIN =  "IMPLEMENT_ME",

	-- Cave dailies (Hall of Justice)
	DAS_M_DELVE_DAEDR        =  "Daedric Disruptions",
	DAS_M_DELVE_KWAMA        =  "Kwama Conundrum", 				
	DAS_M_DELVE_MISIN        =  "Planting Misinformation",
	DAS_M_DELVE_TAXES        =  "Tax Deduction",
	DAS_M_DELVE_TRIBA        =  "Tribal Troubles",	
	DAS_M_DELVE_SYNDI        =  "Unsettled Syndicate",

    -- Cave dailies (Hall of Justice) turn-in
	DAS_M_DELVE_DAEDR_TURNIN =  "I was able to stop the Daedra summoning rituals.",
	DAS_M_DELVE_KWAMA_TURNIN =  "I planted the misleading notes.", 				
	DAS_M_DELVE_MISIN_TURNIN =  "IMPLEMENT_ME",
	DAS_M_DELVE_TAXES_TURNIN =  "IMPLEMENT_ME",
	DAS_M_DELVE_TRIBA_TURNIN =  "I have the items you asked for.",	
	DAS_M_DELVE_SYNDI_TURNIN =  "IMPLEMENT_ME",



	-- wrothgar dailies
    DAS_W_POACHERS          = "Meat for the Masses",
    DAS_W_EDU               = "Reeking of Foul Play",
    DAS_W_NYZ               = "Snow and Steam",
    DAS_W_CORI              = "Nature's Bounty",
    DAS_W_DOLMEN            = "Heresy of Ignorance",
    DAS_W_OGRE              = "Scholarly Salvage",
    
    DAS_W_POA_TURNIN        = "I retrieved the meat and got rid of the poachers.",    
    DAS_W_EDU_TURNIN        = "The Riekr chieftain is dead, and I've rescued a few of your lost travelers.",
    DAS_W_NYZ_TURNIN        = "Yes, I defeated Nyzchaleft.",
    DAS_W_CORI_TURNIN       = "The corruption is cleansed and Corintthac is dead.",
    DAS_W_DOLMEN_TURNIN     = "Yes, I disrupted the obelisks and destroyed Zandadunoz the Reborn.",
    DAS_W_OGRE_TURNIN       = "Here's your book. And Mad Urkazbur is dead.",
    
    DAS_W_HARPIES_TURNIN    = "I've got your eggs right here. The hagraven is dead as well.",
    DAS_W_SPIRITS_TURNIN    = "The spirits are free and Gorlar the Dark has been defeated.",
    DAS_W_DURZOGS_TURNIN    = "Here are some more pelts, and I killed the pack leader.",
    DAS_W_DWEMER_TURNIN     = "IMPLEMENT_ME",
    DAS_W_WEREWOLVES_TURNIN = "IMPLEMENT_ME",
    DAS_W_THAT_OTHER_TURNIN = "IMPLEMENT_ME",    
    
    DAS_W_BOSS_START        = "I'm here to work. What do you have for me?",
    DAS_W_DELVE_START       = "What do you have for me?",
    
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
					
	DAS_DB_QUEST_START      = "<Read the bounty board.>",
	DAS_DB_ARENA_TURNIN     = "I'm here to claim my reward.",
	DAS_DB_MINO_TURNIN      = "The site has been cleared and I recovered your relics.",
	DAS_DB_GOOD_TURNIN      = "I destroyed Exulus and retrieved the pauldrons of your fallen comrades.",
	DAS_DB_EVIL_TURNIN      = "",
	
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

}
DailyAutoShare.EnglishQuestNames = strings
DAS_STRINGS_LOCALE.en = strings

for stringId, stringValue in pairs(strings) do
	ZO_CreateStringId(stringId, stringValue)
	SafeAddVersion(stringId, 1)
end
