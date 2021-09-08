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
	DAS_SI_ACTIVATE_IN      = " Activate in zone : ",
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
	-- Cave dailies (Hall of Justice)
	DAS_M_DELVE_DAEDR =  "Daedric Disruptions",
	DAS_M_DELVE_KWAMA =  "Kwama Conundrum",
	DAS_M_DELVE_MISIN =  "Planting Misinformation",
	DAS_M_DELVE_TAXES =  "Tax Deduction",
	DAS_M_DELVE_TRIBA =  "Tribal Troubles",
	DAS_M_DELVE_SYNDI =  "Unsettled Syndicate",
	-- World boss dailies (Hall of Justice)
	DAS_M_BOSS_WUYWU =  "A Creeping Hunger",
	DAS_M_BOSS_SWARM =  "Culling the Swarm",
	DAS_M_BOSS_NILTH =  "Oxen Free",
	DAS_M_BOSS_SALOT =  "Salothan's Curse",
	DAS_M_BOSS_SIREN =  "Siren's Song",
	DAS_M_BOSS_APPRE =  "The Anxious Apprentice",
	-- wrothgar dailies
    DAS_W_POACHERS        = "Meat for the Masses",
    DAS_W_EDU             = "Reeking of Foul Play",
    DAS_W_NYZ             = "Snow and Steam",
    DAS_W_CORI            = "Nature's Bounty",
    DAS_W_DOLMEN          = "Heresy of Ignorance",
    DAS_W_OGRE            = "Scholarly Salvage",
    DAS_W_BOSS_START        = "I'm here to work. What do you have for me?",
    DAS_W_DELVE_START       = "What do you have for me?",
	-- wrothgar single
	DAS_W_HARPIES 		 = "Breakfast of the Bizarre",
	DAS_W_SPIRITS 		 = "Free Spirits",
	DAS_W_DURZOGS 		 = "Getting a Bellyful",
	DAS_W_DWEMER 		 = "Parts of the Whole",
	DAS_W_WEREWOLVES	 = "The Skin Trade",
	DAS_W_THAT_OTHER	 = "Fire in the Hold",
	-- gold coast
	DAS_DB_MINO			 = "Looming Shadows",
	DAS_DB_ARENA 		 = "The Roar of the Crowd",
	DAS_DB_GOOD 		 = "Common Good",
	DAS_DB_EVIL 		 = "Buried Evil",
	-- new life
	DAS_NL_STORMHAVEN	 = "Castle Charm Challenge",
	DAS_NL_STONEFALLS	 = "Lava Foot Stomp",
	DAS_NL_ALIKR		 = "Signal Fire Sprint",
	DAS_NL_SHADOWFEN	 = "Fish Boon Feast",
	DAS_NL_GRAHTWOOD	 = "War Orphan's Sojourn",
	DAS_NL_REAPERSMARCH	 = "The Trial of Five-Clawed Guile",
	DAS_NL_BETNIKH		 = "Stonetooth Bash",
	DAS_NL_AURIDON		 = "Mud Ball Merriment",
	DAS_NL_EASTMARCH	 = "Snow Bear Plunge",

	-- guild
	DAS_GUILD_ANCHORS       = "Dark Anchors in ",
	DAS_GUILD_MADNESS       = "Madness in ",
	DAS_FG_ALIKR            = "Dark Anchors in Alik'r Desert",    -- 5786
	DAS_FG_AURID            = "Dark Anchors in Auridon",          -- 5793
	DAS_FG_BANGK            = "Dark Anchors in Bangkorai",        -- 5787
	DAS_FG_DESHA            = "Dark Anchors in Deshaan",          -- 5789
	DAS_FG_EASTM            = "Dark Anchors in Eastmarch",        -- 5791
	DAS_FG_GLENU            = "Dark Anchors in Glenumbra",        -- 5833
	DAS_FG_GRAHT            = "Dark Anchors in Grahtwood",        -- 5794
	DAS_FG_GREEN            = "Dark Anchors in Greenshade",       -- 5796
	DAS_FG_MALAB            = "Dark Anchors in Malabal Tor",      -- 5795
	DAS_FG_REAPE            = "Dark Anchors in Reaper's March",   -- 5797
	DAS_FG_RIFT             = "Dark Anchors in the Rift",         -- 5792
	DAS_FG_RIVEN            = "Dark Anchors in Rivenspire",       -- 5785
	DAS_FG_SHADO            = "Dark Anchors in Shadowfen",        -- 5790
	DAS_FG_STONE            = "Dark Anchors in Stonefalls",       -- 5788
	DAS_FG_STORM            = "Dark Anchors in Stormhaven",       -- 5784
	DAS_MG_ALIKR            = "Madness in Alik'r Desert",         -- 5814
	DAS_MG_AURID            = "Madness in Auridon",               -- 5816
	DAS_MG_BANGK            = "Madness in Bangkorai",             -- 5818
	DAS_MG_DESHA            = "Madness in Deshaan",               -- 5819
	DAS_MG_EASTM            = "Madness in Eastmarch",             -- 5820
	DAS_MG_GLENU            = "Madness in Glenumbra",             -- 5822
	DAS_MG_GRAHT            = "Madness in Grahtwood",             -- 5823
	DAS_MG_GREEN            = "Madness in Greenshade",            -- 5824
	DAS_MG_MALAB            = "Madness in Malabal Tor",           -- 5825
	DAS_MG_REAPE            = "Madness in Reaper's March",        -- 5826
	DAS_MG_RIFT             = "Madness in the Rift",              -- 5831
	DAS_MG_RIVEN            = "Madness in Rivenspire",            -- 5827
	DAS_MG_SHADO            = "Madness in Shadowfen",             -- 5828
	DAS_MG_STONE            = "Madness in Stonefalls",            -- 5829
	DAS_MG_STORM            = "Madness in Stormhaven",            -- 5830
	DAS_UD_ALIKR            = "Molten Pearls of Alik'r Desert",   -- 5745
	DAS_UD_AURID            = "Veiled Darkness in Auridon",       -- 5798
	DAS_UD_BANGK            = "Ancient Armaments in Bangkorai",   -- 5733
	DAS_UD_DESHA            = "Ancestor Wards in Deshaan",        -- 5735
	DAS_UD_EASTM            = "Icy Intrigue in Eastmarch",        -- 5779
	DAS_UD_GLENU            = "Red Rook Ransack in Glenumbra",    -- 5739
	DAS_UD_GRAHT            = "Ayleid Trinkets in Grahtwood",     -- 5738
	DAS_UD_GREEN            = "Culinary Justice in Greenshade",   -- 5853
	DAS_UD_MALAB            = "The Spirit Trap in Malabal Tor",   -- 5734
	DAS_UD_REAPE            = "Mascot Theft in Reaper's March",   -- 5744
	DAS_UD_RIFT             = "Inflamed Pyres of the Rift",       -- 5802
	DAS_UD_RIVEN            = "Darkness Blooms in Rivenspire",    -- 5808
	DAS_UD_SHADO            = "Give and Take in Shadowfen",       -- 5778
	DAS_UD_STONE            = "Dwarven Relics of Stonefalls",     -- 5737
	DAS_UD_STORM            = "Cursed Baubles of Stormhaven",     -- 5800
	
	-- craglorn
	-- lower
	DAS_CRAG_SARA 		 = "Critical Mass",
	DAS_CRAG_SHADA 		 = "The Fallen City of Shada",
	DAS_CRAG_NEDE 		 = "The Reason We Fight",
	DAS_CRAG_HERMY 		 = "The Seeker’s Archive",
	DAS_CRAG_ELINHIR 	 = "Supreme Power",
	DAS_CRAG_TUWHACCA 	 = "The Trials of Rahni’Za",
	DAS_CRAG_NEREID 	 = "Waters Run Foul",
	-- upper
	DAS_CRAG_NIRNCRUX	 = "The Blood of Nirn",
	DAS_CRAG_WORLDTRIP 	 = "The Gray Passage",
	DAS_CRAG_SCALES 	 = "Iron and Scales",
	DAS_CRAG_NECRO 		 = "Souls of the Betrayed",
	DAS_CRAG_KIDNAP 	 = "Taken Alive",
	DAS_CRAG_HITMAN 	 = "The Truer Fangs",
	DAS_CRAG_DUNGEON 	 = "Uncaged",
    DAS_QUEST_M_ASHLANDER   = "Huntmaster Sorim-Nakar",
    DAS_QUEST_M_RIVYN       = "Battlemaster Rivyn",
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
	-- quest npcs
	DAS_QUEST_CRA_SARA      = "Sara Benele",
	DAS_QUEST_CRA_GREBA     = "Greban",
	DAS_QUEST_CRA_NHALA     = "Nhalan",
	DAS_QUEST_CRA_RALAI     = "Ralai",
	DAS_QUEST_CRA_IBRUL     = "Ibrula",
	DAS_QUEST_CRA_FIGHT     = "Fights-With-Tail",
	DAS_QUEST_CRA_FADA      = "Fada at-Glina",
	DAS_QUEST_CRA_NENDI     = "Nendirume",
	DAS_QUEST_CRA_GRAYP     = "The Gray Passage",
	DAS_QUEST_CRA_LASHB     = "Lashburr Tooth-Breaker",
	DAS_QUEST_CRA_CRUSA     = "Crusader Dalamar",
	DAS_QUEST_CRA_SCATT     = "Scattered-Leaves",
	DAS_QUEST_CRA_SAFA      = "Safa al-Satakalaam",
	DAS_QUEST_CRA_MERED     = "Mederic Vyger",
	DAS_QUEST_CRA_SALIM     = "Sali'ma",
	DAS_QUEST_CRA_TISHI     = "Tishi",
	DAS_QUEST_CRA_MINER     = "Minerva",
	DAS_QUEST_CRA_MASTE     = "Master Timen",
	DAS_QUEST_CRA_GRAYM     = "The Gray Menhir",
	
--Blackwood to be translated
--Boss dailies : NPC = Brita Silanus
DAS_BLACKWD_TOAD	=	"Goblin Research",
DAS_BLACKWD_RITUAL	=	"Rites of the Sul-Xan",
DAS_BLACKWD_EXCAV	=	"Legend of the Man-Bull",
DAS_BLACKWD_FROG	=	"A Reign of Frogs",
DAS_BLACKWD_XANMEER	=	"Call of the Ruinach",
DAS_BLACKWD_LAGOON	=	"The Trophy-Taker",
DAS_QUEST_BW_BOSS	=	"Britta Silanus",     
--Delve dailies : NPC = Deetum-Jas
DAS_BLACKWD_BLOODRUN	=	"Shadow Tactics",
DAS_BLACKWD_BEAUTY	=	"Beauty Amid Danger",
DAS_BLACKWD_BLESS	=	"A Proper Blessing",
DAS_BLACKWD_CHAIN	=	"Breaking the Chain",
DAS_BLACKWD_INSECT	=	"Insect Savior",
DAS_BLACKWD_CONFLICT	=	"Conflict of Interest",
DAS_QUEST_BW_DELVE	=	"Deetum-Jas", 
}
DAS_STRINGS_LOCALE.jp = strings
for stringId, stringValue in pairs(strings) do
	ZO_CreateStringId(stringId, stringValue)
	SafeAddVersion(stringId, 1)
end
