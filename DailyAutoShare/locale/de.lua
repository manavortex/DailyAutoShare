DAS_STRINGS_LOCALE = DAS_STRINGS_LOCALE or {}

local strings  = {
	
	
	DAS_SI_INVITE_TRUE 		= "Automatisches Einladen: Aktiviert",
	DAS_SI_INVITE_FALSE 	= "Automatisches Einladen: Deaktiviert",
	DAS_SI_ACCEPT_TRUE 		= "Geteilte Quests werden automatisch akzeptiert",
	DAS_SI_ACCEPT_FALSE 	= "Geteilte Quests werden nicht automatisch akzeptiert",
	DAS_SI_SHARE_TRUE 		= "Teilt deine aktiven Quests jedes Mal, wenn ein neues Gruppenmitglied dazukommt, oder wenn jemand 'share' oder 'quest' in den Gruppenchat schreibt\nRechtsklick um alle Quests zu teilen",
	DAS_SI_SHARE_FALSE 		= "Automatisches Teilen deaktiviert",
	DAS_SI_SPAM 			= "Klicken, um in den Chat zu spammen",
	DAS_SI_SPAM_VERBOSE 	= "Klicken, um nach Quests zu fragen",
		
	DAS_SI_HIDE		 		= "DailyAutoShare ausblenden",	
	
	DAS_SI_TOGGLE	 		= "Toggle hidden",
	DAS_SI_MINIMISE	 		= "Toggle minimised",	
		
	DAS_SI_DONATE	 		=  "Klicken für ein Dankeschön:\nLinks: 2k\nRechts: 10k\nMitte: 25k\nIch freue mich  über Feedback und/oder Spenden! :)",
	
	DAS_SI_SHARE	 		= "Teilen",
	DAS_SI_TRACK	 		= "* Verfolgen",
	DAS_SI_ABANDON	 		= "|cFF0000Abbrechen|r",
	DAS_SI_SPAM_SINGLE	 	= "Spammen",
	DAS_SI_REFRESH	 		="Aktualisieren",	
	
	
	DAS_SI_SETOPEN_TRUE	 	= "Toggle open",
	DAS_SI_SETOPEN_FALSE	= "Toggle complete",
	
	
	-- Clockwork City
	DAS_CLOCK_IMP		 = "Das Reizen des Unvollendeten", 
	DAS_CLOCK_FOE		 = "Ein feingefiederter Feind", 
	
    -- Clockwork City
	DAS_CLOCK_BOSS_START	 = "I'll take on a contract.",
	DAS_CLOCK_CRAFT_START    = "Got any work?",
	DAS_CLOCK_CAVE_START     = "What's the job?",
	DAS_CLOCK_CROW_START     = "How can I help?",

	DAS_CLOCK_IMP_TURNIN     = "IMPLEMENT_ME", 
	DAS_CLOCK_FOE_TURNIN	 = "IMPLEMENT_ME", 		

	DAS_CLOCK_CRAFT_CLOTH	 = "Lose Fasern", 
	DAS_CLOCK_CRAFT_WATER	 = "Eine klebrige Lösung", 
	DAS_CLOCK_CRAFT_RUNE	 = "Verzauberte Ansammlung", 
	DAS_CLOCK_CRAFT_SMITH	 = "Das tägliche Zermahlen", 
	DAS_CLOCK_CRAFT_ALCH	 = "Eine bittere Pille", 
	DAS_CLOCK_CRAFT_WOOD	 = "Brennstoff für unsere Feuer", 	

	DAS_CLOCK_CRAFT_CLOTH_TURNIN = "IMPLEMENT_ME", 
	DAS_CLOCK_CRAFT_WATER_TURNIN = "IMPLEMENT_ME", 
	DAS_CLOCK_CRAFT_RUNE_TURNIN	 = "IMPLEMENT_ME", 
	DAS_CLOCK_CRAFT_SMITH_TURNIN = "IMPLEMENT_ME", 
	DAS_CLOCK_CRAFT_ALCH_TURNIN	 = "IMPLEMENT_ME", 
	DAS_CLOCK_CRAFT_WOOD_TURNIN	 = "IMPLEMENT_ME", 
	
	DAS_CLOCK_DELVE_FILT	 = "Filterwechsel", 
	DAS_CLOCK_DELVE_FANS	 = "Die Ventilatoren ölen", 
	DAS_CLOCK_DELVE_COMM	 = "Gleichrichterersatz", 
	DAS_CLOCK_DELVE_MALF	 = "Eine schattige Fehlfunktion", 
	DAS_CLOCK_DELVE_MISP	 = "Ein verlegter Schatten", 
	DAS_CLOCK_DELVE_AGAI	 = "Zurück in die Schatten", 

	DAS_CLOCK_DELVE_FILT_TURNIN	 = "IMPLEMENT_ME", 
	DAS_CLOCK_DELVE_FANS_TURNIN	 = "IMPLEMENT_ME", 
	DAS_CLOCK_DELVE_COMM_TURNIN	 = "IMPLEMENT_ME", 
	DAS_CLOCK_DELVE_MALF_TURNIN	 = "IMPLEMENT_ME", 
	DAS_CLOCK_DELVE_MISP_TURNIN	 = "IMPLEMENT_ME", 
	DAS_CLOCK_DELVE_AGAI_TURNIN	 = "IMPLEMENT_ME", 
	
	DAS_CLOCK_CROW_GLIT		 = "Glitzern und Funkeln", 
	DAS_CLOCK_CROW_TRIB		 = "Eine Frage des Tributs", 
	DAS_CLOCK_CROW_NIBB		 = "Stückchen und Häppchen", 
	DAS_CLOCK_CROW_MORS		 = "Bröckchen und Bisschen", 
	DAS_CLOCK_CROW_RESP		 = "Eine Frage des Respekts", 
	DAS_CLOCK_CROW_LEIS		 = "A Matter of Leisure", 
    
	DAS_CLOCK_CROW_GLIT_TURNIN = "IMPLEMENT_ME", 
	DAS_CLOCK_CROW_TRIB_TURNIN = "IMPLEMENT_ME", 
	DAS_CLOCK_CROW_NIBB_TURNIN = "IMPLEMENT_ME", 
	DAS_CLOCK_CROW_MORS_TURNIN = "IMPLEMENT_ME", 
	DAS_CLOCK_CROW_RESP_TURNIN = "IMPLEMENT_ME", 
	DAS_CLOCK_CROW_LEIS_TURNIN = "IMPLEMENT_ME", 
	
    DAS_M_BOSS_START = "Is there a job available?",
    DAS_M_DELVE_START = "I'd like to help with any work you have available.",
    DAS_M_HUNT_START = "I'm interested in a hunt.",
    DAS_M_RELIC_START = "What kind of help do you need?",

    DAS_M_BOSS_TURNIN = "I've done what you requested.",
    DAS_M_DELVE_TURNIN = "I'd like to help with any work you have available.",
    DAS_M_HUNT_TURNIN = "Here's a trophy from my kill.",
    DAS_M_RELIC_TURNIN = "Here are the relics I recovered.",

	-- Morrowind dailies
	DAS_M_REL_ASHAL =  "Relikte von Ashalmawia", 
	DAS_M_REL_ASSAR =  "Relikte von Assarnatamat", 
	DAS_M_REL_ASHUR =  "Relikte von Ashurnabitashpi", 
	DAS_M_REL_DUSHA =  "Relikte von Dushariran", 
	DAS_M_REL_EBERN =  "Relikte von Ebernanit", 	 
	DAS_M_REL_MAELK =  "Relikte von Maelkashishi", 	
	DAS_M_REL_YASAM =  "Relikte von Yasammidan",
	
	DAS_M_HUNT_EATER =  "Jagd auf Aschfresser", 
	DAS_M_HUNT_ZEXXI =  "Jagd auf den großen Zexxin", 
	DAS_M_HUNT_RAZOR =  "Jagd auf König Klingenhauer",
	DAS_M_HUNT_JAGGE =  "Jagd auf Mutter Zackige-Klaue", 
	DAS_M_HUNT_STOMP =  "Jagd auf den alten Stampfer", 
	DAS_M_HUNT_TARRA =  "Jagd auf Tarra-Suj", 
	DAS_M_HUNT_SVEET =  "Jagd auf den sich windenden Sveeth", 	

	-- Cave dailies (Hall of Justice)
	DAS_M_DELVE_DAEDR =  "Daedrische Störungen",
	DAS_M_DELVE_KWAMA =  "Quatsch mit Kwama", 				
	DAS_M_DELVE_MISIN =  "Das Streuen von Fehlinformationen",
	DAS_M_DELVE_TAXES =  "Steuerabzug",
	DAS_M_DELVE_TRIBA =  "Stammessorgen",	
	DAS_M_DELVE_SYNDI =  "Ein Syndikat in Unruhe",		

    -- Cave dailies (Hall of Justice) turn-in
	DAS_M_DELVE_DAEDR_TURNIN =  "I was able to stop the Daedra summoning rituals.",
	DAS_M_DELVE_KWAMA_TURNIN =  "I planted the misleading notes.", 				
	DAS_M_DELVE_MISIN_TURNIN =  "IMPLEMENT_ME",
	DAS_M_DELVE_TAXES_TURNIN =  "IMPLEMENT_ME",
	DAS_M_DELVE_TRIBA_TURNIN =  "I have the items you asked for.",	
	DAS_M_DELVE_SYNDI_TURNIN =  "IMPLEMENT_ME",


	-- World boss dailies (Hall of Justice)								
	DAS_M_BOSS_WUYWU        =  "Ein schleichender Hunger", 	
	DAS_M_BOSS_SWARM        =  "Das Ausdünnen des Schwarms", 
	DAS_M_BOSS_NILTH        =  "Frei laufende Ochsen", 					
	DAS_M_BOSS_SALOT        =  "Salothans Fluch", 	
	DAS_M_BOSS_SIREN        =  "Sirenensang", 					
	DAS_M_BOSS_APPRE        =  "Der besorgte Lehrling", 	

  
	DAS_M_BOSS_WUYWU_TURNIN =  "I dealt with the Hunger.",
    DAS_M_BOSS_SWARM_TURNIN =  "IMPLEMENT_ME",    
    DAS_M_BOSS_NILTH_TURNIN =  "I took care of the nix-ox and have the mushroom samples.",
    DAS_M_BOSS_SALOT_TURNIN =  "No, I'm here to tell you that the Salothan ghosts have been laid to rest.",
    DAS_M_BOSS_SIREN_TURNIN =  "I defeated the Nereid and recovered these goods.",
    DAS_M_BOSS_APPRE_TURNIN =  "IMPLEMENT_ME",



	-- wrothgar dailies
    DAS_W_POACHERS        = "Fleisch für die Massen", 
    DAS_W_EDU             = "So riecht ein falsches Spiel",
	DAS_W_NYZ             = "Schnee und Dampf",	
    DAS_W_CORI            = "Die Gabe der Natur", 
    DAS_W_DOLMEN       	  = "Der Frevel des Unwissens",
    DAS_W_OGRE            = "Gelehrtes Bergungsgut", 

    DAS_W_POA_TURNIN        = "I retrieved the meat and got rid of the poachers.",    
    DAS_W_EDU_TURNIN        = "The Riekr chieftain is dead, and I've rescued a few of your lost travelers.",
    DAS_W_NYZ_TURNIN        = "IMPLEMENT_ME",
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
    
	
    -- need to be translated to make the auto accept work
    DAS_W_POA_TURNIN        = "I retrieved the meat and got rid of the poachers.",    
    DAS_W_EDU_TURNIN        = "The Riekr chieftain is dead, and I've rescued a few of your lost travelers.",
    DAS_W_NYZ_TURNIN        = "IMPLEMENT_ME",
    DAS_W_CORI_TURNIN       = "IMPLEMENT_ME",
    DAS_W_DOLMEN_TURNIN     = "IMPLEMENT_ME",
    DAS_W_OGRE_TURNIN       = "Here's your book. And Mad Urkazbur is dead.",
    
    DAS_W_HARPIES_TURNIN    = "I've got your eggs right here. The hagraven is dead as well.",
    DAS_W_SPIRITS_TURNIN    = "IMPLEMENT_ME",
    DAS_W_DURZOGS_TURNIN    = "IMPLEMENT_ME",
    DAS_W_DWEMER_TURNIN     = "IMPLEMENT_ME",
    DAS_W_WEREWOLVES_TURNIN = "IMPLEMENT_ME",
    DAS_W_THAT_OTHER_TURNIN = "IMPLEMENT_ME",    
    
    DAS_W_BOSS_START        = "I'm here to work. What do you have for me?",
    DAS_W_DELVE_START       = "What do you have for me?",
    
    
	-- wrothgar single
	DAS_W_HARPIES 		    = "Ein bizarres Frühstück", 
	DAS_W_SPIRITS 		    = "Freie Geister", 
	DAS_W_DURZOGS 		    = "Der volle Bauch",
	DAS_W_DWEMER 		    = "Teile des Ganzen", 
	DAS_W_WEREWOLVES	    = "Das Geschäft mit der Haut", 
	DAS_W_THAT_OTHER	    = "Feuer in der Feste", 
	
	
	-- gold coast
	DAS_DB_MINO			    = "Drohende Schatten",
	DAS_DB_ARENA 		    = "Das Jubeln der Menge",
	DAS_DB_GOOD 		    = "Das Gemeinwohl",
	DAS_DB_EVIL 		    = "Das Übel unter der Erde",
					
	DAS_DB_QUEST_START       = "",			
	DAS_DB_ARENA_TURNIN     = "",
	DAS_DB_MINO_TURNIN      = "",
	DAS_DB_GOOD_TURNIN      = "",
	DAS_DB_EVIL_TURNIN      = "",

	-- new life
	DAS_NL_STORMHAVEN	    = "Burgbardenherausforderung",
	DAS_NL_STONEFALLS	    = "Lavafußstampfer",
	DAS_NL_ALIKR		    = "Signalfeuersprint",
	DAS_NL_SHADOWFEN	    = "Fischgunstfestmahl",
	DAS_NL_GRAHTWOOD	    = "Kriegsweisenreise",
	DAS_NL_REAPERSMARCH	    = "Prüfung der Fünfkrallenlist",
	DAS_NL_BETNIKH		    = "Steinzahnsause",
	DAS_NL_AURIDON		    = "Schlammballspiele",
	DAS_NL_EASTMARCH	    = "Schneebärensprung",
	
	
	-- craglorn
	-- lower
	DAS_CRAG_SARA 		 = "Kritische Masse",
	DAS_CRAG_SHADA 		 = "Die gefallene Stadt Shada",
	DAS_CRAG_NEDE 		 = "Der Grund für unseren Kampf",	-- this is not a single daily, it's part off The fallen City of Shada
	DAS_CRAG_HERMY 		 = "Das Archiv des Suchers",
	DAS_CRAG_ELINHIR 	 = "Unbeschreibliche Macht",
	DAS_CRAG_TUWHACCA 	 = "Die Prüfungen von Rahni’Za",
	DAS_CRAG_NEREID 	 = "Wenn das Wasser giftig wird",	-- this is not a single daily, it's part off The fallen City of Shada
	
	-- upper
	DAS_CRAG_NIRNCRUX	 = "Das Blut Nirns",
	DAS_CRAG_WORLDTRIP 	 = "Der graue Lauf",
	DAS_CRAG_SCALES 	 = "Eisen und Schuppen",
	DAS_CRAG_NECRO 		 = "Die Seelen der Verratenen",
	DAS_CRAG_KIDNAP 	 = "Lebendig gefangen",
	DAS_CRAG_HITMAN 	 = "Die wahren Giftzähne",
	DAS_CRAG_DUNGEON 	 = "Entfesselt",
	
	
}
DAS_STRINGS_LOCALE.de = strings

for stringId, stringValue in pairs(strings) do
	ZO_CreateStringId(stringId, stringValue)
	SafeAddVersion(stringId, 2)
end