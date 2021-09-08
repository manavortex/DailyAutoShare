DailyAutoShare = DailyAutoShare or {}
DAS_STRINGS_LOCALE = DAS_STRINGS_LOCALE or {}
local strings  = {
	-- UI stuffs
	DAS_SI_INVITE_TRUE 		  = "Invite is now on",
	DAS_SI_INVITE_FALSE 	  = "Invite is now off",
	DAS_SI_ACCEPT_TRUE 		  = "Automatically accepting quest shares for dailies",
	DAS_SI_ACCEPT_FALSE 	  = "Not automatically accepting dailies",
	DAS_SI_SHARE_TRUE 		  = "Automatically sharing your active daily on group member join or 'share' in group chat (Right-click to share your active quest)",
	DAS_SI_SHARE_FALSE 		  = "Not automatically sharing your active daily, most likely someone yelled at you (Right-click to share anyway)",
	DAS_SI_SPAM 			      = "Click to spam in zone chat",
	DAS_SI_SPAM_VERBOSE 	  = "Click to ask for quest shares",
  DAS_TOGGLE_SUBLIST      = "Click to open quest list",
  DAS_MENU_ACTIV_EXPLAIN  = "Activate or deactivate for zones below.",
	DAS_SI_HIDE		 		      = "Hide DailyAutoShare",
	DAS_SI_TOGGLE	 		      = "Toggle hidden",
	DAS_SI_MINIMISE	 		    = "Toggle minimised",
	DAS_SI_REFRESH	 		    = "Refresh",
	DAS_SI_DONATE	 		      = "Click to say thank you:\nLeft: 2k\nRight: 10k\nMiddle: 25k\nYour feedback and/or donation is appreciated!",
	DAS_SI_SHARE	 		      = "Share",
	DAS_SI_TRACK	 		      = "* Track",
	DAS_SI_ABANDON	 		    = "|cFF0000Abandon|r",
	DAS_SI_SPAM_SINGLE	 	  = "Spam",
	DAS_SI_SETOPEN_TRUE	 	  = "Toggle open",
	DAS_SI_SETOPEN_FALSE	  = "Toggle complete",
  DAS_BINGO_CODE_IS       = "\nThe bingo code is ",
  DAS_SI_PREQUEST         = "\nPrequest <<1>>: <<2>>",
	DAS_SI_COMPLETED        = "completed",
	DAS_SI_OPEN             = "open",
  
  -- Elsweyr
  -- Nisuzi
  DAS_QUEST_NE_DELVE      = "Nisuzi",
  DAS_KITTY_WIND          = "Wisdom in the Winds",
  DAS_KITTY_FLAME         = "Dousing the Daedric Flame",
  DAS_KITTY_RUINS         = "Rifling Through Ruins",
  DAS_KITTY_STAMPEDE      = "The Serpent's Stampede",
  DAS_KITTY_TEA           = "Tangled Tea Leaves",
  
  -- Rihirr
  DAS_QUEST_NE_BOSS       = "Ri'hirr",
  DAS_KITTY_WILY          = "The Traders' Terror",
  DAS_KITTY_HUNGRY        = "The Hungry Cat's Favor",
  DAS_KITTY_DEATH         = "Another Day, Another Death",
  DAS_KITTY_DUO           = "A Dastardly Duo",
  DAS_KITTY_SWORD         = "Sword of the Serpent",
  DAS_KITTY_SENCHE        = "The Senche of Decay",
  DAS_KITTY_NIGHTMARE     = "A Waking Nightmare",
  
  
  -- Battlereeve Tanerline
  DAS_QUEST_TANERLIN      = "Battlereeve Tanerline",
  DAS_KITTY_DRAGON        = "Dragon Hunt",
  
  
  -- Murkmire
  DAS_SLAVES_QUEST1       = "Varo Hosidias",
  DAS_SLAVES_QUEST2       = "Tuwul",
  DAS_SLAVES_QUEST3       = "Bolu",
  
  DAS_SLAVES_BOSS_1       = "Grave Circumstances",
  DAS_SLAVES_BOSS_2       = "Grave Expectations",
  DAS_SLAVES_BOSS_3       = "Old Baubles",
  DAS_SLAVES_BOSS_4       = "Old Enemies",
  DAS_SLAVES_BOSS_5       = "Old Growth",
  DAS_SLAVES_BOSS_6       = "Grave Mementos",
  DAS_SLAVES_DELVE_1      = "Antique Armor",
  DAS_SLAVES_DELVE_2      = "Grave Subject Matter",
  DAS_SLAVES_DELVE_3      = "Old Scrolls",
  DAS_SLAVES_DELVE_4      = "Sacred Candles",
  DAS_SLAVES_DELVE_5      = "Tools of Slaughter",
  DAS_SLAVES_DELVE_6      = "The Weight of Words",
  DAS_SLAVES_ROOT_1       = "Aloe That Heals",
  DAS_SLAVES_ROOT_2       = "Envoys Who Cower",
  DAS_SLAVES_ROOT_3       = "Leather That Protects",
  DAS_SLAVES_ROOT_4       = "Mushrooms That Nourish",
  DAS_SLAVES_ROOT_5       = "Offerings That Hide",
  DAS_ELF_RELIC           = "Relic Runaround",
  DAS_ELF_PILGR           = "Pilgrimage's End",
  DAS_ELF_LIGHT           = "Snuffing Out the Light",
  DAS_ELF_SERPE           = "Culling Serpents",
  DAS_ELF_MEMO            = "Struck from Memory",
  DAS_ELF_ROSE            = "A Rose's Beauty",
  DAS_ELF_ALCHE           = "The Abyssal Alchemist",
  DAS_ELF_GRAVE           = "Never Forgotten",
  DAS_ELF_QUEEN           = "The Sickening Sea",
  DAS_ELF_GRIFFIN         = "Birds of a Feather",
  DAS_ELF_SNAKE           = "Run Aground",
  DAS_ELF_WILD            = "Taming the Wild",
  DAS_ELF_GEYSER          = "Sinking Summerset",
	-- Clockwork City
	DAS_CLOCK_IMP			      = "Inciting the Imperfect",
	DAS_CLOCK_FOE			      = "A Fine-Feathered Foe",
	DAS_CLOCK_CRAFT_CLOTH	  = "Loose Strands",
	DAS_CLOCK_CRAFT_WATER	  = "A Sticky Solution",
	DAS_CLOCK_CRAFT_RUNE	  = "Enchanted Accumulation",
	DAS_CLOCK_CRAFT_SMITH	  = "A Daily Grind",
	DAS_CLOCK_CRAFT_ALCH	  = "A Bitter Pill",
	DAS_CLOCK_CRAFT_WOOD	  = "Fuel for our Fires",
	DAS_CLOCK_DELVE_FILT	  = "Changing the Filters",
	DAS_CLOCK_DELVE_FANS	  = "Oiling the Fans",
	DAS_CLOCK_DELVE_COMM	  = "Replacing the Commutators",
  DAS_CLOCK_DELVE_MALF	  = "A Shadow Malfunction",
  DAS_CLOCK_DELVE_MISP	  = "A Shadow Misplaced",
  DAS_CLOCK_DELVE_AGAI	  = "Again Into the Shadows",
  DAS_CLOCK_CROW_GLIT		  = "Glitter and Gleam",
  DAS_CLOCK_CROW_TRIB		  = "A Matter of Tributes",
  DAS_CLOCK_CROW_NIBB		  = "Nibbles and Bits",
  DAS_CLOCK_CROW_MORS		  = "Morsels and Pecks",
  DAS_CLOCK_CROW_RESP		  = "A Matter of Respect",
  DAS_CLOCK_CROW_LEIS		  = "A Matter of Leisure",
  
  
  -- Morrowind dailies
  DAS_M_REL_ASHAL         =  "Relics of Ashalmawia",
  DAS_M_REL_ASSAR         =  "Relics of Assarnatamat",
  DAS_M_REL_ASHUR         =  "Relics of Ashurnabitashpi",
  DAS_M_REL_DUSHA         =  "Relics of Dushariran",
  DAS_M_REL_EBERN         =  "Relics of Ebernanit",
  DAS_M_REL_MAELK         =  "Relics of Maelkashishi",
  DAS_M_REL_YASAM         =  "Relics of Yasammidan",
  DAS_M_HUNT_EATER        =  "Ash-Eater Hunt",
  DAS_M_HUNT_ZEXXI        =  "Great Zexxin Hunt",
  DAS_M_HUNT_RAZOR        =  "King Razor-Tusk Hunt",
  DAS_M_HUNT_JAGGE        =  "Mother Jagged-Claw Hunt",
  DAS_M_HUNT_STOMP        =  "Old Stomper Hunt",
  DAS_M_HUNT_TARRA        =  "Tarra-Suj Hunt",
  DAS_M_HUNT_SVEET        =  "Writhing Sveeth Hunt",
  
  
  -- World boss dailies (Hall of Justice)
  DAS_M_BOSS_WUYWU        =  "A Creeping Hunger",
  DAS_M_BOSS_SWARM        =  "Culling the Swarm",
  DAS_M_BOSS_NILTH        =  "Oxen Free",
  DAS_M_BOSS_SALOT        =  "Salothan's Curse",
  DAS_M_BOSS_SIREN        =  "Siren's Song",
  DAS_M_BOSS_APPRE        =  "The Anxious Apprentice",
  
  -- Cave dailies (Hall of Justice)
  DAS_M_DELVE_DAEDR       =  "Daedric Disruptions",
  DAS_M_DELVE_KWAMA       =  "Kwama Conundrum",
  DAS_M_DELVE_MISIN       =  "Planting Misinformation",
  DAS_M_DELVE_TAXES       =  "Tax Deduction",
  DAS_M_DELVE_TRIBA       =  "Tribal Troubles",
  DAS_M_DELVE_SYNDI       =  "Unsettled Syndicate",
  
  -- wrothgar dailies
  DAS_W_POACHERS          = "Meat for the Masses",
  DAS_W_EDU               = "Reeking of Foul Play",
  DAS_W_NYZ               = "Snow and Steam",
  DAS_W_CORI              = "Nature's Bounty",
  DAS_W_DOLMEN            = "Heresy of Ignorance",
  DAS_W_OGRE              = "Scholarly Salvage",
  
  -- wrothgar single
  DAS_W_HARPIES 		      = "Breakfast of the Bizarre",
  DAS_W_SPIRITS 		      = "Free Spirits",
  DAS_W_DURZOGS 		      = "Getting a Bellyful",
  DAS_W_DWEMER 		        = "Parts of the Whole",
  DAS_W_WEREWOLVES	      = "The Skin Trade",
  DAS_W_THAT_OTHER	      = "Fire in the Hold",
  
  -- gold coast
  DAS_DB_MINO			        = "Looming Shadows",
  DAS_DB_ARENA 		        = "The Roar of the Crowds",
  DAS_DB_GOOD 		        = "The Common Good",
  DAS_DB_EVIL 		        = "Buried Evil",
  
  -- new life
  DAS_NL_STORMHAVEN	      = "Castle Charm Challenge",
  DAS_NL_STONEFALLS	      = "Lava Foot Stomp",
  DAS_NL_ALIKR		        = "Signal Fire Sprint",
  DAS_NL_SHADOWFEN	      = "Fish Boon Feast",
  DAS_NL_GRAHTWOOD	      = "War Orphan's Sojourn",
  DAS_NL_REAPERSMARCH	    = "The Trial of Five-Clawed Guile",
  DAS_NL_BETNIKH		      = "Stonetooth Bash",
  DAS_NL_AURIDON		      = "Mud Ball Merriment",
  DAS_NL_EASTMARCH	      = "Snow Bear Plunge",
  
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
  DAS_CRAG_SARA 		      = "Critical Mass",
  DAS_CRAG_SHADA 		      = "The Fallen City of Shada",
  DAS_CRAG_NEDE 		      = "The Reason We Fight",
  DAS_CRAG_HERMY 		      = "The Seeker's Archive",
  DAS_CRAG_ELINHIR 	      = "Supreme Power",
  DAS_CRAG_TUWHACCA 	    = "The Trials of Rahni'Za",
  DAS_CRAG_NEREID 	      = "Waters Run Foul",
  
  -- upper
  DAS_CRAG_NIRNCRUX	      = "The Blood of Nirn",
  DAS_CRAG_WORLDTRIP 	    = "The Gray Passage",
  DAS_CRAG_SCALES 	      = "Iron and Scales",
  DAS_CRAG_NECRO 		      = "Souls of the Betrayed",
  DAS_CRAG_KIDNAP 	      = "Taken Alive",
  DAS_CRAG_HITMAN 	      = "The Truer Fangs",
  DAS_CRAG_DUNGEON 	      = "Uncaged",

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

  DAS_QUEST_M_ASHLANDER   = "Huntmaster Sorim-Nakar",
  DAS_QUEST_M_RIVYN       = "Battlemaster Rivyn",
  DAS_QUEST_CC_ROBOT      = "Clockwork Facilitator",
  DAS_QUEST_CC_CROW       = "Bursar of Tributes",
  DAS_QUEST_CC_NOVICE     = "Novice Holli",
  DAS_QUEST_CC_THISTLE    = "Leaps-Over-Thistle",
  DAS_QUEST_CC_DARO       = "Adjunct Daro",
  DAS_QUEST_CC_TILELLE    = "Initiate Tilelle",
  DAS_QUEST_W_OUFA        = "Sergeant Oufa",
  DAS_QUEST_W_USHANG      = "Ushang the Untamed",
  DAS_QUEST_W_BIRKHU      = "Birkhu the Bold",
  DAS_QUEST_DB_ARVINA     = "Cleric Arvina",
  DAS_QUEST_DB_BOUNTY     = "Bounty Board",
  DAS_QUEST_CAP_CARDEA    = "Cardea Gallus",
  DAS_QUEST_CAP_ALVUR     = "Alvur Baren",
  DAS_QUEST_CAP_BOLGRUL   = "Bolgrul",
  DAS_QUEST_SS_TANO       = "Justiciar Tanorian",
  DAS_QUEST_SS_FARO       = "Justiciar Farowel",
  DAS_QUEST_SS_TANE       = "Battlereeve Tanerline",
  DAS_QUEST_CRY_BATTLE    = "Battle Mission Board",
  DAS_QUEST_CRY_BOUNTY    = "Bounty Mission Board",
  DAS_QUEST_CRY_SCOUT     = "Scouting Mission Board",
  DAS_QUEST_CRY_WARFR     = "Warfront Mission Board",
  
  -- New Life
  DAS_QUEST_NL_BREDA      = "Breda",
  DAS_QUEST_NL_LIZARD     = "Gentle-Heart",
  DAS_QUEST_NL_ORC        = "Matron Borbuga",
  DAS_QUEST_NL_CAT        = "Tumira",
  
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
--Blackwood
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

  --Southern Elsweyr
  DAS_QUEST_SE_BOSS			= "Bruccius Baenius",
  DAS_QUEST_SE_DELVE		= "Guybert Flaubert",
  DAS_QUEST_SE_DRAGONS		= "Chizbari the Chipper",
  DAS_QUEST_SE_DELVE2		= "Dirge Truptor",
  -- Bruccius Baenius
  DAS_SE_RICE				  = --[[GetQuestName(6422),]] "A Rogue and His Rice",
  DAS_SE_PARIAH				= --[[GetQuestName(6376),]] 	"Goutfang Pariah",
  DAS_SE_HEAL				  = --[[GetQuestName(6421),]] 	"Helping the Healers",
  DAS_SE_DUST				  = --[[GetQuestName(6423),]] 	"Dust Smote",
  DAS_SE_FLETCH				= --[[GetQuestName(6425),]] 	"Fletching Fetching",
  DAS_SE_SCHOL				= --[[GetQuestName(6424),]] 	"Scholarly Observations",

  -- Guybert Flaubert
  DAS_SE_CANDLE				= --[[GetQuestName(6432),]] "Solace By Candlelight",
  DAS_SE_SWORD				= --[[GetQuestName(6431),]] "Sourcing the Ensorcelled",
  DAS_SE_LILY				  = --[[GetQuestName(6436),]] "Lilies for Remembrance",
  DAS_SE_BLOOD				= --[[GetQuestName(6438),]] "An Answer in Blood",
  DAS_SE_TOMES				= --[[GetQuestName(6419),]] "Tomes of the Tsaesci",
  DAS_SE_MUSH				  = --[[GetQuestName(6437),]] "Moonlit Mushrooms",
  
--Chizbari the Chipper
DAS_SE_DRAGON1 				= --[[GetQuestName(6444),]]  "Dawn of the Dragonguard",
DAS_SE_DRAGON2				= --[[GetQuestName(6434),]]  "The Dragonguard's Quarry",

--Dirge Truptor
DAS_SE_FILE					= --[[GetQuestName(6430),]] 	"File Under D",
DAS_SE_BONES				= --[[GetQuestName(6428),]] 	"Sticks and Bones",
DAS_SE_AWAK					= --[[GetQuestName(6433),]] 	"Rude Awakening",
DAS_SE_TUSK					= --[[GetQuestName(6405),]] 	"Taking Them to Tusk",
DAS_SE_GARD					= --[[GetQuestName(6429),]] 	"Digging Up the Garden",
DAS_SE_GRAVE				= --[[GetQuestName(6406),]] 	"A Lonely Grave",
}

DailyAutoShare.EnglishQuestNames = strings
DAS_STRINGS_LOCALE.en = strings
for stringId, stringValue in pairs(strings) do
  ZO_CreateStringId(stringId, stringValue)
  SafeAddVersion(stringId, 1)
end
