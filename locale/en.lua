DailyAutoShare = DailyAutoShare or {}
DAS_STRINGS_LOCALE = DAS_STRINGS_LOCALE or {}
local strings  = {
	-- User Interface
	DAS_SI_INVITE_TRUE      = "Invite is now on",
	DAS_SI_INVITE_FALSE     = "Invite is now off",
	DAS_SI_ACCEPT_TRUE      = "Automatically accepting quest shares for dailies",
	DAS_SI_ACCEPT_FALSE     = "Not automatically accepting dailies",
	DAS_SI_SHARE_TRUE       = "Automatically sharing your active daily on group member join or 'share' in group chat (Right-click to share your active quest)",
	DAS_SI_SHARE_FALSE      = "Not automatically sharing your active daily, most likely someone yelled at you (Right-click to share anyway)",
	DAS_SI_SPAM             = "Click to spam in zone chat",
	DAS_SI_SPAM_VERBOSE     = "Click to ask for quest shares",
	DAS_TOGGLE_SUBLIST      = "Click to open the quest list",
	DAS_MENU_ACTIV_EXPLAIN  = "Activate or deactivate for zones below.",
	DAS_SI_HIDE             = "Hide DailyAutoShare",
	DAS_SI_TOGGLE           = "Toggle hidden",
	DAS_SI_MINIMISE         = "Toggle minimised",
	DAS_SI_REFRESH          = "Refresh",
	DAS_SI_DONATE           = "Click to say thank you:\nLeft: 2k\nRight: 10k\nMiddle: 25k\nYour feedback and/or donation is appreciated!",
	DAS_SI_SHARE            = "Share",
	DAS_SI_TRACK            = "* Track",
	DAS_SI_ABANDON          = "|cFF0000Abandon|r",
	DAS_SI_SPAM_SINGLE      = "Spam",
	DAS_SI_SETOPEN_TRUE     = "Toggle open",
	DAS_SI_SETOPEN_FALSE    = "Toggle complete",
	DAS_BINGO_CODE_IS       = "\nThe bingo code is ",
	DAS_SI_PREQUEST         = "\nPrequest <<1>>: <<2>>",
	DAS_SI_COMPLETED        = "completed",
	DAS_SI_OPEN             = "open",

	-- Quest names are located in the table 52420949-0 of XX.lang
	-- NPC names are located in the table 8290981-0 of XX.lang


	-- Northern Elsweyr
	-- Delve dailies : NPC = Nisuzi
	DAS_QUEST_NE_DELVE      = "Nisuzi",                     -- 88072
	DAS_KITTY_FLAME         = "Dousing the Daedric Flame",  -- 6356
	DAS_KITTY_WIND          = "Wisdom in the Winds",        -- 6359
	DAS_KITTY_RUINS         = "Rifling Through Ruins",      -- 6360
	DAS_KITTY_HUNGRY        = "The Hungry Cat's Favor",     -- 6361
	DAS_KITTY_STAMPEDE      = "The Serpent's Stampede",     -- 6362
	DAS_KITTY_TEA           = "Tangled Tea Leaves",         -- 6363
	-- World Boss dailies : NPC = Ri'hirr
	DAS_QUEST_NE_BOSS       = "Ri'hirr",                    -- 88139
	DAS_KITTY_SWORD         = "Sword of the Serpent",       -- 6377
	DAS_KITTY_WILY          = "The Traders' Terror",        -- 6378
	DAS_KITTY_NIGHTMARE     = "A Waking Nightmare",         -- 6379
	DAS_KITTY_DEATH         = "Another Day, Another Death", -- 6380
	DAS_KITTY_DUO           = "A Dastardly Duo",            -- 6381
	DAS_KITTY_SENCHE        = "The Senche of Decay",        -- 6382
	-- Dragon Hunt dailies : NPC = Battlereeve Tanerline
	DAS_QUEST_TANERLIN      = "Battlereeve Tanerline",      -- 88741
	DAS_KITTY_DRAGON        = "Dragon Hunt",                -- 6357


	-- Murkmire
	-- World Boss dailies : NPC = Bolu
	DAS_SLAVES_QUEST3       = "Bolu",                   -- 85085
	DAS_SLAVES_BOSS_1       = "Grave Circumstances",    -- 6233
	DAS_SLAVES_BOSS_5       = "Old Growth",             -- 6234
	DAS_SLAVES_BOSS_3       = "Old Baubles",            -- 6235
	DAS_SLAVES_BOSS_2       = "Grave Expectations",     -- 6236
	DAS_SLAVES_BOSS_6       = "Grave Mementos",         -- 6237
	DAS_SLAVES_BOSS_4       = "Old Enemies",            -- 6238
	-- Delve dailies : NPC = Varo Hosidias
	DAS_SLAVES_QUEST1       = "Varo Hosidias",          -- 85212
	DAS_SLAVES_DELVE_6      = "The Weight of Words",    -- 6247
	DAS_SLAVES_DELVE_3      = "Old Scrolls",            -- 6248
	DAS_SLAVES_DELVE_1      = "Antique Armor",          -- 6253
	DAS_SLAVES_DELVE_4      = "Sacred Candles",         -- 6264
	DAS_SLAVES_DELVE_5      = "Tools of Slaughter",     -- 6267
	DAS_SLAVES_DELVE_2      = "Grave Subject Matter",   -- 6268
	-- Root-Whisper dailies : NPC = Tuwul
	DAS_SLAVES_QUEST2       = "Tuwul",                  -- 86275
	DAS_SLAVES_ROOT_1       = "Aloe That Heals",        -- 6286
	DAS_SLAVES_ROOT_4       = "Mushrooms That Nourish", -- 6287
	DAS_SLAVES_ROOT_2       = "Envoys Who Cower",       -- 6288
	DAS_SLAVES_ROOT_5       = "Offerings That Hide",    -- 6289
	DAS_SLAVES_ROOT_3       = "Leather That Protects",  -- 6290


	-- Summerset
	-- Delve dailies : NPC = Justiciar Tanorian
	DAS_ELF_PILGR           = "Pilgrimage's End",       -- 6152
	DAS_ELF_LIGHT           = "Snuffing Out the Light", -- 6156
	DAS_ELF_ROSE            = "A Rose's Beauty",        -- 6157
	DAS_ELF_RELIC           = "Relic Runaround",        -- 6158
	DAS_ELF_SERPE           = "Culling Serpents",       -- 6159
	DAS_ELF_MEMO            = "Struck from Memory",     -- 6160
	-- World Boss dailies : NPC = Justiciar Farowel
	DAS_ELF_QUEEN           = "The Sickening Sea",      -- 6082
	DAS_ELF_WILD            = "Taming the Wild",        -- 6083
	DAS_ELF_ALCHE           = "The Abyssal Alchemist",  -- 6084
	DAS_ELF_GRIFFIN         = "Birds of a Feather",     -- 6085
	DAS_ELF_GRAVE           = "Never Forgotten",        -- 6086
	DAS_ELF_SNAKE           = "Run Aground",            -- 6087
	-- Geyser dailies : NPC = Battlereeve Tanerline
	DAS_ELF_GEYSER          = "Sinking Summerset",      -- 6166


	-- Clockwork City
	-- Brass Fortress dailies : NPC = Clockwork Facilitator
	DAS_CLOCK_IMP           = "Inciting the Imperfect",    -- 6076
	DAS_CLOCK_FOE           = "A Fine-Feathered Foe",      -- 6077
	-- Slag Town dailies : NPC = Razgurug
	DAS_CLOCK_CRAFT_WOOD    = "Fuel for our Fires",        -- 6037
	DAS_CLOCK_CRAFT_SMITH   = "A Daily Grind",             -- 6038
	DAS_CLOCK_CRAFT_CLOTH   = "Loose Strands",             -- 6039
	DAS_CLOCK_CRAFT_WATER   = "A Sticky Solution",         -- 6040
	DAS_CLOCK_CRAFT_RUNE    = "Enchanted Accumulation",    -- 6041
	DAS_CLOCK_CRAFT_ALCH    = "A Bitter Pill",             -- 6042
	-- Apostle dailies : NPC = Novice Holli
	DAS_CLOCK_DELVE_MISP    = "A Shadow Misplaced",        -- 6073
	DAS_CLOCK_DELVE_AGAI    = "Again Into the Shadows",    -- 6079
	DAS_CLOCK_DELVE_MALF    = "A Shadow Malfunction",      -- 6080
	DAS_CLOCK_DELVE_FANS    = "Oiling the Fans",           -- 6081
	DAS_CLOCK_DELVE_FILT    = "Changing the Filters",      -- 6088
	DAS_CLOCK_DELVE_COMM    = "Replacing the Commutators", -- 6089
	-- Blackfeather Court dailies : NPC = Bursar of Tributes
	DAS_CLOCK_CROW_NIBB     = "Nibbles and Bits",          -- 6070
	DAS_CLOCK_CROW_MORS     = "Morsels and Pecks",         -- 6071
	DAS_CLOCK_CROW_RESP     = "A Matter of Respect",       -- 6072
	DAS_CLOCK_CROW_TRIB     = "A Matter of Tributes",      -- 6106
	DAS_CLOCK_CROW_LEIS     = "A Matter of Leisure",       -- 6107
	DAS_CLOCK_CROW_GLIT     = "Glitter and Gleam",         -- 6110


	-- Vvardenfell / Morrowind
	-- Ashlander relic dailies : NPC = Numani-Rasi
	DAS_LIST_M_RELIC        = "Relics of ",
	DAS_M_REL_YASAM         = "Relics of Yasammidan",      -- 5924
	DAS_M_REL_ASSAR         = "Relics of Assarnatamat",    -- 5925
	DAS_M_REL_MAELK         = "Relics of Maelkashishi",    -- 5926
	DAS_M_REL_ASHUR         = "Relics of Ashurnabitashpi", -- 5927
	DAS_M_REL_EBERN         = "Relics of Ebernanit",       -- 5928
	DAS_M_REL_DUSHA         = "Relics of Dushariran",      -- 5929
	DAS_M_REL_ASHAL         = "Relics of Ashalmawia",      -- 5930
	-- Ashlander hunt dailies : NPC = Huntmaster Sorim-Nakar
	DAS_M_HUNT_ZEXXI        = "Great Zexxin Hunt",         -- 5907
	DAS_M_HUNT_TARRA        = "Tarra-Suj Hunt",            -- 5908
	DAS_M_HUNT_SVEET        = "Writhing Sveeth Hunt",      -- 5909
	DAS_M_HUNT_JAGGE        = "Mother Jagged-Claw Hunt",   -- 5910
	DAS_M_HUNT_EATER        = "Ash-Eater Hunt",            -- 5911
	DAS_M_HUNT_STOMP        = "Old Stomper Hunt",          -- 5912
	DAS_M_HUNT_RAZOR        = "King Razor-Tusk Hunt",      -- 5913
	-- World Boss dailies : NPC = Beleru Omoril
	DAS_M_BOSS_SWARM        = "Culling the Swarm",         -- 5865
	DAS_M_BOSS_NILTH        = "Oxen Free",                 -- 5866
	DAS_M_BOSS_SALOT        = "Salothan's Curse",          -- 5904
	DAS_M_BOSS_SIREN        = "Siren's Song",              -- 5906
	DAS_M_BOSS_APPRE        = "The Anxious Apprentice",    -- 5916
	DAS_M_BOSS_WUYWU        = "A Creeping Hunger",         -- 5918
	-- Delve dailies : NPC = Traylan Omoril
	DAS_M_DELVE_TRIBA       = "Tribal Troubles",           -- 5915
	DAS_M_DELVE_TAXES       = "Tax Deduction",             -- 5934
	DAS_M_DELVE_DAEDR       = "Daedric Disruptions",       -- 5956
	DAS_M_DELVE_SYNDI       = "Unsettled Syndicate",       -- 5958
	DAS_M_DELVE_MISIN       = "Planting Misinformation",   -- 5961
	DAS_M_DELVE_KWAMA       = "Kwama Conundrum",           -- 5962


	-- Wrothgar / Orsinium
	-- Delve dailies : NPC = Guruzug
	DAS_W_WEREWOLVES        = "The Skin Trade",           -- 5504
	DAS_W_THAT_OTHER        = "Fire in the Hold",         -- 5505
	DAS_W_HARPIES           = "Breakfast of the Bizarre", -- 5507
	DAS_W_DWEMER            = "Parts of the Whole",       -- 5509
	DAS_W_DURZOGS           = "Getting a Bellyful",       -- 5514
	DAS_W_SPIRITS           = "Free Spirits",             -- 5515
	-- World Boss dailies : NPC = Arzorag
	DAS_W_POACHERS          = "Meat for the Masses",      -- 5518
	DAS_W_OGRE              = "Scholarly Salvage",        -- 5519
	DAS_W_CORI              = "Nature's Bounty",          -- 5521
	DAS_W_DOLMEN            = "Heresy of Ignorance",      -- 5522
	DAS_W_NYZ               = "Snow and Steam",           -- 5523
	DAS_W_EDU               = "Reeking of Foul Play",     -- 5524


	-- Gold coast / Dark Brotherhood
	-- Delve dailies : NPC = Bounty Board
	DAS_DB_EVIL             = "Buried Evil",            -- 5603
	DAS_DB_GOOD             = "The Common Good",        -- 5604
	-- World Boss dailies : NPC = Bounty Board
	DAS_DB_MINO             = "Looming Shadows",        -- 5605
	DAS_DB_ARENA            = "The Roar of the Crowds", -- 5606


	-- New Life Festival
	DAS_NL_EASTMARCH        = "Snow Bear Plunge",               -- 5811
	DAS_NL_REAPERSMARCH     = "The Trial of Five-Clawed Guile", -- 5834
	DAS_NL_STONEFALLS       = "Lava Foot Stomp",                -- 5837
	DAS_NL_AURIDON          = "Mud Ball Merriment",             -- 5838
	DAS_NL_ALIKR            = "Signal Fire Sprint",             -- 5839
	DAS_NL_STORMHAVEN       = "Castle Charm Challenge",         -- 5845
	DAS_NL_GRAHTWOOD        = "War Orphan's Sojourn",           -- 5852
	DAS_NL_SHADOWFEN        = "Fish Boon Feast",                -- 5855
	DAS_NL_BETNIKH          = "Stonetooth Bash",                -- 5856
	-- Quest NPCs
	DAS_QUEST_NL_BREDA      = "Breda",                          -- 73855
	DAS_QUEST_NL_LIZARD     = "Gentle-Heart",                   -- 74198
	DAS_QUEST_NL_ORC        = "Matron Borbuga",                 -- 74207
	DAS_QUEST_NL_CAT        = "Tumira",                         -- 74066


	-- Guild dailies
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


	-- Craglorn
	-- lower
	DAS_CRAG_HERMY          = "The Seeker's Archive",     -- 5749
	DAS_CRAG_SHADA          = "The Fallen City of Shada", -- 5750
	DAS_CRAG_TUWHACCA       = "The Trials of Rahni'Za",   -- 5751
	DAS_CRAG_NEREID         = "Waters Run Foul",          -- 5754
	DAS_CRAG_ELINHIR        = "Supreme Power",            -- 5755
	DAS_CRAG_SARA           = "Critical Mass",            -- 5756
	DAS_CRAG_NEDE           = "The Reason We Fight",      -- 5762
	-- upper
	DAS_CRAG_HITMAN         = "The Truer Fangs",          -- 5764
	DAS_CRAG_KIDNAP         = "Taken Alive",              -- 5765
	DAS_CRAG_SCALES         = "Iron and Scales",          -- 5766
	DAS_CRAG_NIRNCRUX       = "The Blood of Nirn",        -- 5767
	DAS_CRAG_NECRO          = "Souls of the Betrayed",    -- 5770
	DAS_CRAG_DUNGEON        = "Uncaged",                  -- 5772
	DAS_CRAG_WORLDTRIP      = "The Gray Passage",         -- 5777
	-- quest npcs
	DAS_QUEST_CRA_SARA      = "Sara Benele",              -- 72619
	DAS_QUEST_CRA_GREBA     = "Greban",                   -- 72367
	DAS_QUEST_CRA_NHALA     = "Nhalan",                   -- 72629
	DAS_QUEST_CRA_RALAI     = "Ralai",                    -- 72554
	DAS_QUEST_CRA_IBRUL     = "Ibrula",                   -- 72469
	DAS_QUEST_CRA_FIGHT     = "Fights-With-Tail",         -- 72582
	DAS_QUEST_CRA_FADA      = "Fada at-Glina",            -- 72436
	DAS_QUEST_CRA_NENDI     = "Nendirume",                -- 73118
	DAS_QUEST_CRA_GRAYP     = "The Gray Passage",         -- 87370069-0-21018
	DAS_QUEST_CRA_LASHB     = "Lashburr Tooth-Breaker",   -- 72963
	DAS_QUEST_CRA_CRUSA     = "Crusader Dalamar",         -- 73366
	DAS_QUEST_CRA_SCATT     = "Scattered-Leaves",         -- 72962
	DAS_QUEST_CRA_SAFA      = "Safa al-Satakalaam",       -- 72961
	DAS_QUEST_CRA_MERED     = "Mederic Vyger",            -- 73444
	DAS_QUEST_CRA_SALIM     = "Sali'ma",                  -- 72541
	DAS_QUEST_CRA_TISHI     = "Tishi",                    -- 72539
	DAS_QUEST_CRA_MINER     = "Minerva Lauzon",           -- 72581
	DAS_QUEST_CRA_MASTE     = "Master Timen",             -- 72267
	DAS_QUEST_CRA_GRAYM     = "The Gray Menhir",          -- 87370069-0-21024


	-- Quest NPC names
	DAS_QUEST_M_ASHLANDER   = "Huntmaster Sorim-Nakar", -- 76010
	DAS_QUEST_M_RIVYN       = "Battlemaster Rivyn",     -- 76622
	DAS_QUEST_CC_ROBOT      = "Clockwork Facilitator",  -- 79225
	DAS_QUEST_CC_CROW       = "Bursar of Tributes",     -- 79171
	DAS_QUEST_CC_NOVICE     = "Novice Holli",           -- 79220
	DAS_QUEST_CC_THISTLE    = "Leaps-Over-Thistle",     -- 78637
	DAS_QUEST_CC_DARO       = "Adjunct Daro",           -- 78653
	DAS_QUEST_CC_TILELLE    = "Initiate Tilelle",       -- 79379
	DAS_QUEST_W_OUFA        = "Sergeant Oufa",          -- 59290
	DAS_QUEST_W_USHANG      = "Ushang the Untamed",     -- 67144
	DAS_QUEST_W_BIRKHU      = "Birkhu the Bold",        -- 67184
	DAS_QUEST_DB_ARVINA     = "Cleric Arvina",          -- 70157
	DAS_QUEST_DB_BOUNTY     = "Bounty Board",           -- 87370069-0-20444
	DAS_QUEST_CAP_CARDEA    = "Cardea Gallus",          -- 74040
	DAS_QUEST_CAP_ALVUR     = "Alvur Baren",            -- 73953
	DAS_QUEST_CAP_BOLGRUL   = "Bolgrul",                -- 71827
	DAS_QUEST_SS_TANO       = "Justiciar Tanorian",     -- 82013
	DAS_QUEST_SS_FARO       = "Justiciar Farowel",      -- 82121
	DAS_QUEST_SS_TANE       = "Battlereeve Tanerline",  -- 82289
	DAS_QUEST_CRY_BATTLE    = "Battle Mission Board",   -- 87370069-0-11718
	DAS_QUEST_CRY_BOUNTY    = "Bounty Mission Board",   -- 87370069-0-11727
	DAS_QUEST_CRY_SCOUT     = "Scouting Mission Board", -- 87370069-0-10045
	DAS_QUEST_CRY_WARFR     = "Warfront Mission Board", -- 87370069-0-11719
	DAS_QUEST_DB_LARONEN    = "Laronen",                -- 70175
	DAS_QUEST_DB_FINIA      = "Finia Sele",             -- 70185
	DAS_QUEST_DB_CODUS      = "Codus ap Dugal",         -- 70197
	DAS_QUEST_W_NEDNOR      = "Nednor",                 -- 59374
	DAS_QUEST_W_THAZEK      = "Thazeg",                 -- 67076
	DAS_QUEST_W_ARUSHNA     = "Arushna",                -- 59532
	DAS_QUEST_W_LILYAMEH    = "Lilyameh",               -- 67178
	DAS_QUEST_W_BAGRUBESH   = "Bagrugbesh",             -- 67119
	DAS_QUEST_W_CIRANTILLE  = "Cirantille",             -- 67123
	DAS_QUEST_W_MENNINIA    = "Menninia",               -- 67021
	DAS_QUEST_W_SONOLIA     = "Sonolia Muspidius",      -- 67193
	DAS_QUEST_W_RAYNOR      = "Raynor Vanos",           -- 65557
	DAS_QUEST_M_TRAYLAN     = "Traylan Omoril",         -- 74468
	DAS_QUEST_M_BELERU      = "Beleru Omoril",          -- 74469
	DAS_QUEST_M_NUMANI      = "Numani-Rasi",            -- 76157
	DAS_QUEST_M_NARA        = "Nara Varam",             -- 76059
	DAS_QUEST_M_TIRVINA     = "Tirvina Avani",          -- 76077
	DAS_QUEST_M_DINOR       = "Dinor Salvi",            -- 74475
	DAS_QUEST_M_BRAVOSI     = "Bravosi Felder",         -- 74513
	DAS_QUEST_M_IVULEN      = "Ivulen Andromo",         -- 75960
	DAS_QUEST_M_SAVILE      = "Savile Alam",            -- 76726
	DAS_QUEST_M_KYLIA       = "Kylia Thando",           -- 76765
	DAS_QUEST_M_EVOS        = "Evos Hledas",            -- 76747
	DAS_QUEST_M_ALVES       = "Alves Droth",            -- 76382
	DAS_QUEST_M_DREDASE     = "Dredase-Hlarar",         -- 76024
	DAS_QUEST_M_VORAR       = "Vorar Vendu",            -- 76730
	DAS_QUEST_M_VALGA       = "Valga Celatus",          -- 75969
	DAS_QUEST_CC_ORC        = "Razgurug",               -- 78634
	DAS_QUEST_CC_COOK       = "Aveberl Tremouille",     -- 78643
	DAS_QUEST_CC_MINDORA    = "Mindora",                -- 78642
	DAS_QUEST_CC_NJORD      = "Njordemar",              -- 78641
	DAS_QUEST_CC_IGMUND     = "Igmund",                 -- 78905
	DAS_QUEST_W_GURUZUG     = "Guruzug",                -- 67019
	DAS_QUEST_W_ARZORAG     = "Arzorag",                -- 67018


	-- Blackwood
	-- World Boss dailies : NPC = Brita Silanus
	DAS_QUEST_BW_BOSS       = "Britta Silanus",         -- 100913
	DAS_BLACKWD_EXCAV       = "Legend of the Man-Bull", -- 6645
	DAS_BLACKWD_TOAD        = "Goblin Research",        -- 6649
	DAS_BLACKWD_RITUAL      = "Rites of the Sul-Xan",   -- 6650
	DAS_BLACKWD_FROG        = "A Reign of Frogs",       -- 6651
	DAS_BLACKWD_LAGOON      = "The Trophy-Taker",       -- 6652
	DAS_BLACKWD_XANMEER     = "Call of the Ruinach",    -- 6653
	-- Delve dailies : NPC = Deetum-Jas
	DAS_QUEST_BW_DELVE      = "Deetum-Jas",             -- 100912
	DAS_BLACKWD_BLESS       = "A Proper Blessing",      -- 6644
	DAS_BLACKWD_BLOODRUN    = "Shadow Tactics",         -- 6665
	DAS_BLACKWD_BEAUTY      = "Beauty Amid Danger",     -- 6668
	DAS_BLACKWD_CONFLICT    = "Conflict of Interest",   -- 6673
	DAS_BLACKWD_CHAIN       = "Breaking the Chain",     -- 6674
	DAS_BLACKWD_INSECT      = "Insect Savior",          -- 6675


	-- Southern Elsweyr
	-- World Boss dailies : NPC = Bruccius Baenius
	DAS_QUEST_SE_BOSS       = "Bruccius Baenius",         -- 91767
	DAS_SE_PARIAH           = "Goutfang Pariah",          -- 6376
	DAS_SE_HEAL             = "Helping the Healers",      -- 6421
	DAS_SE_RICE             = "A Rogue and His Rice",     -- 6422
	DAS_SE_DUST             = "Dust Smote",               -- 6423
	DAS_SE_SCHOL            = "Scholarly Observations",   -- 6424
	DAS_SE_FLETCH           = "Fletching Fetching",       -- 6425
	-- Delve dailies : NPC = Guybert Flaubert
	DAS_QUEST_SE_DELVE      = "Guybert Flaubert",         -- 91769
	DAS_SE_TOMES            = "Tomes of the Tsaesci",     -- 6419
	DAS_SE_SWORD            = "Sourcing the Ensorcelled", -- 6431
	DAS_SE_CANDLE           = "Solace By Candlelight",    -- 6432
	DAS_SE_LILY             = "Lilies for Remembrance",   -- 6436
	DAS_SE_MUSH             = "Moonlit Mushrooms",        -- 6437
	DAS_SE_BLOOD            = "An Answer in Blood",       -- 6438
	-- Dragon Hunt dailies : NPC = Chizbari the Chipper
	DAS_QUEST_SE_DRAGONS    = "Chizbari the Chipper",     -- 91289
	DAS_SE_DRAGON2          = "The Dragonguard's Quarry", -- 6434
	DAS_SE_DRAGON1          = "Dawn of the Dragonguard",  -- 6444
	-- Dragonguard dailies : NPC = Dirge Truptor
	DAS_QUEST_SE_DELVE2     = "Dirge Truptor",            -- 91226
	DAS_SE_TUSK             = "Taking Them to Tusk",      -- 6405
	DAS_SE_GRAVE            = "A Lonely Grave",           -- 6406
	DAS_SE_BONES            = "Sticks and Bones",         -- 6428
	DAS_SE_GARD             = "Digging Up the Garden",    -- 6429
	DAS_SE_FILE             = "File Under D",             -- 6430
	DAS_SE_AWAK             = "Rude Awakening",           -- 6433
}

DailyAutoShare.EnglishQuestNames = strings
DAS_STRINGS_LOCALE.en = strings
for stringId, stringValue in pairs(strings) do
	ZO_CreateStringId(stringId, stringValue)
	SafeAddVersion(stringId, 1)
end
