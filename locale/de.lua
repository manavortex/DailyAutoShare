DAS_STRINGS_LOCALE = DAS_STRINGS_LOCALE or {}
local strings  = {
	-- User Interface
	DAS_SI_INVITE_TRUE      = "Automatisches Einladen: Aktiviert",
	DAS_SI_INVITE_FALSE     = "Automatisches Einladen: Deaktiviert",
	DAS_SI_ACCEPT_TRUE      = "Geteilte Quests werden automatisch akzeptiert",
	DAS_SI_ACCEPT_FALSE     = "Geteilte Quests werden nicht automatisch akzeptiert",
	DAS_SI_SHARE_TRUE       = "Teilt deine aktiven Quests jedes Mal, wenn ein neues Gruppenmitglied dazukommt, oder wenn jemand 'share' oder 'quest' in den Gruppenchat schreibt\nRechtsklick um alle Quests zu teilen",
	DAS_SI_SHARE_FALSE      = "Automatisches Teilen deaktiviert",
	DAS_SI_SPAM             = "Klicken, um in den Chat zu spammen",
	DAS_SI_SPAM_VERBOSE     = "Klicken, um nach Quests zu fragen",
	DAS_TOGGLE_SUBLIST      = "Click to open the quest list", -- translateme
	DAS_MENU_ACTIV_EXPLAIN  = "Activate or deactivate for zones below.", -- translateme
	DAS_SI_HIDE             = "DailyAutoShare ausblenden",
	DAS_SI_TOGGLE           = "Toggle hidden", -- translateme
	DAS_SI_MINIMISE         = "Toggle minimised", -- translateme
	DAS_SI_REFRESH          = "Aktualisieren",
	DAS_SI_DONATE           = "Klicken für ein Dankeschön:\nLinks: 2k\nRechts: 10k\nMitte: 25k\nIch freue mich  über Feedback und/oder Spenden! :)",
	DAS_SI_SHARE            = "Teilen",
	DAS_SI_TRACK            = "* Verfolgen",
	DAS_SI_ABANDON          = "|cFF0000Abbrechen|r",
	DAS_SI_SPAM_SINGLE      = "Spammen",
	DAS_SI_SETOPEN_TRUE     = "Toggle open", -- translateme
	DAS_SI_SETOPEN_FALSE    = "Toggle complete", -- translateme
	DAS_BINGO_CODE_IS       = "\nThe bingo code is ", -- translateme
	DAS_SI_PREQUEST         = "\nPrequest <<1>>: <<2>>", -- translateme
	DAS_SI_COMPLETED        = "completed", -- translateme
	DAS_SI_OPEN             = "open", -- translateme

	-- Quest names are located in the table 52420949-0 of DE.lang
	-- NPC names are located in the table 8290981-0 of DE.lang


	-- Northern Elsweyr
	-- Delve dailies : NPC = Nisuzi
	DAS_QUEST_NE_DELVE      = "Nisuzi",                             -- 88072
	DAS_KITTY_FLAME         = "Erlöschen der daedrischen Flamme",   -- 6356
	DAS_KITTY_WIND          = "Weisheit im Wind",                   -- 6359
	DAS_KITTY_RUINS         = "Das Durchstöbern von Ruinen",        -- 6360
	DAS_KITTY_HUNGRY        = "Der Gefallen der Hungrigen Katze",   -- 6361
	DAS_KITTY_STAMPEDE      = "Der Exodus der Schlange",            -- 6362
	DAS_KITTY_TEA           = "Widerspenstige Teeblätter",          -- 6363
	-- World Boss dailies : NPC = Ri'hirr
	DAS_QUEST_NE_BOSS       = "Ri'hirr",                            -- 88139
	DAS_KITTY_SWORD         = "Das Schwert der Schlange",           -- 6377
	DAS_KITTY_WILY          = "Der Schrecken der Händler",          -- 6378
	DAS_KITTY_NIGHTMARE     = "Ein aufweckender Albtraum",          -- 6379
	DAS_KITTY_DEATH         = "Ein weiterer Tag, ein weiterer Tod", -- 6380
	DAS_KITTY_DUO           = "Gemeine Ganoven",                    -- 6381
	DAS_KITTY_SENCHE        = "Der Senche der Verwesung",           -- 6382
	-- Dragon Hunt dailies : NPC = Battlereeve Tanerline
	DAS_QUEST_TANERLIN      = "Schlachtenvogt Tanerline",           -- 88741
	DAS_KITTY_DRAGON        = "Drachenjagd",                        -- 6357


	-- Murkmire
	-- World Boss dailies : NPC = Bolu
	DAS_SLAVES_QUEST3       = "Bolu",                           -- 85085
	DAS_SLAVES_BOSS_1       = "Tödliche Umstände",              -- 6233
	DAS_SLAVES_BOSS_5       = "Alter Wuchs",                    -- 6234
	DAS_SLAVES_BOSS_3       = "Alter Tand",                     -- 6235
	DAS_SLAVES_BOSS_2       = "Tödliche Erwartungen",           -- 6236
	DAS_SLAVES_BOSS_6       = "Tödliche Erinnerungsstücke",     -- 6237
	DAS_SLAVES_BOSS_4       = "Alte Feinde",                    -- 6238
	-- Delve dailies : NPC = Varo Hosidias
	DAS_SLAVES_QUEST1       = "Varo Hosidias",                  -- 85212
	DAS_SLAVES_DELVE_6      = "Die Last der Worte",             -- 6247
	DAS_SLAVES_DELVE_3      = "Alte Schriftrollen",             -- 6248
	DAS_SLAVES_DELVE_1      = "Antike Rüstungen",               -- 6253
	DAS_SLAVES_DELVE_4      = "Heilige Kerzen",                 -- 6264
	DAS_SLAVES_DELVE_5      = "Werkzeuge des Gemetzels",        -- 6267
	DAS_SLAVES_DELVE_2      = "Todernste Angelegenheiten",      -- 6268
	-- Root-Whisper dailies : NPC = Tuwul
	DAS_SLAVES_QUEST2       = "Tuwul",                          -- 86275
	DAS_SLAVES_ROOT_1       = "Aloe, die heilt",                -- 6286
	DAS_SLAVES_ROOT_4       = "Pilze, die nähren",              -- 6287
	DAS_SLAVES_ROOT_2       = "Gesandte, die kuschen",          -- 6288
	DAS_SLAVES_ROOT_5       = "Opfergaben, die sich verbergen", -- 6289
	DAS_SLAVES_ROOT_3       = "Leder, das schützt",             -- 6290


	-- Summerset
	-- Delve dailies : NPC = Justiciar Tanorian
	DAS_ELF_PILGR           = "Das Ende der Pilgerfahrt",   -- 6152
	DAS_ELF_LIGHT           = "Das Verlöschen des Lichts",  -- 6156
	DAS_ELF_ROSE            = "Die Schönheit einer Rose",   -- 6157
	DAS_ELF_RELIC           = "Die Reliktrettung",          -- 6158
	DAS_ELF_SERPE           = "Schlangentöter",             -- 6159
	DAS_ELF_MEMO            = "Aus der Erinnerung getilgt", -- 6160
	-- World Boss dailies : NPC = Justiciar Farowel
	DAS_ELF_QUEEN           = "Die Seuchensee",             -- 6082
	DAS_ELF_WILD            = "Die Zähmung der Wildnis",    -- 6083
	DAS_ELF_ALCHE           = "Der Kluftalchemist",         -- 6084
	DAS_ELF_GRIFFIN         = "Fremde Federn",              -- 6085
	DAS_ELF_GRAVE           = "Nie vergessen",              -- 6086
	DAS_ELF_SNAKE           = "Auf Grund gelaufen",         -- 6087
	-- Geyser dailies : NPC = Battlereeve Tanerline
	DAS_ELF_GEYSER          = "Die Versenkung Sommersends", -- 6166


	-- Clockwork City
	-- Brass Fortress dailies : NPC = Clockwork Facilitator
	DAS_CLOCK_IMP           = "Das Reizen des Unvollendeten", -- 6076
	DAS_CLOCK_FOE           = "Ein feingefiederter Feind",    -- 6077
	-- Slag Town dailies : NPC = Razgurug
	DAS_CLOCK_CRAFT_WOOD    = "Brennstoff für unsere Feuer",  -- 6037
	DAS_CLOCK_CRAFT_SMITH   = "Das tägliche Zermahlen",       -- 6038
	DAS_CLOCK_CRAFT_CLOTH   = "Lose Fasern",                  -- 6039
	DAS_CLOCK_CRAFT_WATER   = "Eine klebrige Lösung",         -- 6040
	DAS_CLOCK_CRAFT_RUNE    = "Verzauberte Ansammlung",       -- 6041
	DAS_CLOCK_CRAFT_ALCH    = "Eine bittere Pille",           -- 6042
	-- Apostle dailies : NPC = Novice Holli
	DAS_CLOCK_DELVE_MISP    = "Ein verlegter Schatten",       -- 6073
	DAS_CLOCK_DELVE_AGAI    = "Zurück in die Schatten",       -- 6079
	DAS_CLOCK_DELVE_MALF    = "Eine schattige Fehlfunktion",  -- 6080
	DAS_CLOCK_DELVE_FANS    = "Die Ventilatoren ölen",        -- 6081
	DAS_CLOCK_DELVE_FILT    = "Filterwechsel",                -- 6088
	DAS_CLOCK_DELVE_COMM    = "Gleichrichterersatz",          -- 6089
	-- Blackfeather Court dailies : NPC = Bursar of Tributes
	DAS_CLOCK_CROW_NIBB     = "Stückchen und Häppchen",       -- 6070
	DAS_CLOCK_CROW_MORS     = "Bröckchen und Bisschen",       -- 6071
	DAS_CLOCK_CROW_RESP     = "Eine Frage des Respekts",      -- 6072
	DAS_CLOCK_CROW_TRIB     = "Eine Frage des Tributs",       -- 6106
	DAS_CLOCK_CROW_LEIS     = "Eine Frage der Muße",          -- 6107
	DAS_CLOCK_CROW_GLIT     = "Glitzern und Funkeln",         -- 6110


	-- Vvardenfell / Morrowind
	-- Ashlander relic dailies : NPC = Numani-Rasi
	DAS_M_REL_YASAM         = "Die Relikte von Yasammidan",         -- 5924
	DAS_M_REL_ASSAR         = "Die Relikte von Assarnatamat",       -- 5925
	DAS_M_REL_MAELK         = "Die Relikte von Maelkashishi",       -- 5926
	DAS_M_REL_ASHUR         = "Die Relikte von Ashurnabitashpi",    -- 5927
	DAS_M_REL_EBERN         = "Relikte von Ebernanit",              -- 5928
	DAS_M_REL_DUSHA         = "Die Relikte von Dushariran",         -- 5929
	DAS_M_REL_ASHAL         = "Die Relikte von Ashalmawia",         -- 5930
	-- Ashlander hunt dailies : NPC = Huntmaster Sorim-Nakar
	DAS_M_HUNT_ZEXXI        = "Jagd auf den Großen Zexxin",         -- 5907
	DAS_M_HUNT_TARRA        = "Jagd auf Tarra-Suj",                 -- 5908
	DAS_M_HUNT_SVEET        = "Jagd auf den Sich Windenden Sveeth", -- 5909
	DAS_M_HUNT_JAGGE        = "Jagd auf Mutter Zackige-Klaue",      -- 5910
	DAS_M_HUNT_EATER        = "Jagd auf Aschfresser",               -- 5911
	DAS_M_HUNT_STOMP        = "Jagd auf Alter Stampfer",            -- 5912
	DAS_M_HUNT_RAZOR        = "Jagd auf König Klingenhauer",        -- 5913
	-- World Boss dailies : NPC = Beleru Omoril
	DAS_M_BOSS_SWARM        = "Das Ausdünnen des Schwarms",         -- 5865
	DAS_M_BOSS_NILTH        = "Frei laufende Ochsen",               -- 5866
	DAS_M_BOSS_SALOT        = "Salothans Fluch",                    -- 5904
	DAS_M_BOSS_SIREN        = "Sirenensang",                        -- 5906
	DAS_M_BOSS_APPRE        = "Der besorgte Lehrling",              -- 5916
	DAS_M_BOSS_WUYWU        = "Ein schleichender Hunger",           -- 5918
	-- Delve dailies : NPC = Traylan Omoril
	DAS_M_DELVE_TRIBA       = "Stammessorgen",                      -- 5915
	DAS_M_DELVE_TAXES       = "Steuerabzug",                        -- 5934
	DAS_M_DELVE_DAEDR       = "Daedrische Störungen",               -- 5956
	DAS_M_DELVE_SYNDI       = "Ein Syndikat in Unruhe",             -- 5958
	DAS_M_DELVE_MISIN       = "Das Streuen von Fehlinformationen",  -- 5961
	DAS_M_DELVE_KWAMA       = "Quatsch mit Kwama",                  -- 5962


	-- Wrothgar / Orsinium
	-- Delve dailies : NPC = Guruzug
	DAS_W_WEREWOLVES        = "Das Geschäft mit der Haut",    -- 5504
	DAS_W_THAT_OTHER        = "Feuer in der Feste",           -- 5505
	DAS_W_HARPIES           = "Ein bizarres Frühstück",       -- 5507
	DAS_W_DWEMER            = "Teile des Ganzen",             -- 5509
	DAS_W_DURZOGS           = "Der volle Bauch",              -- 5514
	DAS_W_SPIRITS           = "Freie Geister",                -- 5515
	-- World Boss dailies : NPC = Arzorag
	DAS_W_POACHERS          = "Fleisch für die Massen",       -- 5518
	DAS_W_OGRE              = "Gelehrtes Bergungsgut",        -- 5519
	DAS_W_CORI              = "Die Gabe der Natur",           -- 5521
	DAS_W_DOLMEN            = "Der Frevel des Unwissens",     -- 5522
	DAS_W_NYZ               = "Schnee und Dampf",             -- 5523
	DAS_W_EDU               = "So riecht ein falsches Spiel", -- 5524


	-- Gold coast / Dark Brotherhood
	-- Delve dailies : NPC = Bounty Board
	DAS_DB_EVIL             = "Das Übel unter der Erde", -- 5603
	DAS_DB_GOOD             = "Das Gemeinwohl",          -- 5604
	-- World Boss dailies : NPC = Bounty Board
	DAS_DB_MINO             = "Drohende Schatten",       -- 5605
	DAS_DB_ARENA            = "Das Jubeln der Menge",    -- 5606


	-- New Life Festival
	DAS_NL_EASTMARCH        = "Der Schneebärensprung",               -- 5811
	DAS_NL_REAPERSMARCH     = "Die Prüfung der Fünfkrallenlist",     -- 5834
	DAS_NL_STONEFALLS       = "Lavafußstampfer",                     -- 5837
	DAS_NL_AURIDON          = "Schlammballschlacht",                 -- 5838
	DAS_NL_ALIKR            = "Signalfeuersprint",                   -- 5839
	DAS_NL_STORMHAVEN       = "Burgbardenherausforderung",           -- 5845
	DAS_NL_GRAHTWOOD        = "Die Kriegswaisenreise",               -- 5852
	DAS_NL_SHADOWFEN        = "Fischgunstfestmahl",                  -- 5855
	DAS_NL_BETNIKH          = "Steinzahnsause",                      -- 5856
	-- Quest NPCs
	DAS_QUEST_NL_BREDA      = "Breda",                               -- 73855
	DAS_QUEST_NL_LIZARD     = "Zartes-Herz",                         -- 74198
	DAS_QUEST_NL_ORC        = "Matrone Borbuga",                     -- 74207
	DAS_QUEST_NL_CAT        = "Tumira",                              -- 74066


	-- Guild dailies
	DAS_GUILD_ANCHORS       = "Dunkle Anker in ",
	DAS_GUILD_MADNESS       = "Verrücktes ",
	DAS_FG_ALIKR            = "Dunkle Anker in der Alik'r-Wüste",           -- 5786
	DAS_FG_AURID            = "Dunkle Anker auf Auridon",                   -- 5793
	DAS_FG_BANGK            = "Dunkle Anker in Bangkorai",                  -- 5787
	DAS_FG_DESHA            = "Dunkle Anker in Deshaan",                    -- 5789
	DAS_FG_EASTM            = "Dunkle Anker in Ostmarsch",                  -- 5791
	DAS_FG_GLENU            = "Dunkle Anker in Glenumbra",                  -- 5833
	DAS_FG_GRAHT            = "Dunkle Anker in Grahtwald",                  -- 5794
	DAS_FG_GREEN            = "Dunkle Anker in Grünschatten",               -- 5796
	DAS_FG_MALAB            = "Dunkle Anker in Malabal Tor",                -- 5795
	DAS_FG_REAPE            = "Dunkle Anker in Schnittermark",              -- 5797
	DAS_FG_RIFT             = "Dunkle Anker in Rift",                       -- 5792
	DAS_FG_RIVEN            = "Dunkle Anker in Kluftspitze",                -- 5785
	DAS_FG_SHADO            = "Dunkle Anker in Schattenfenn",               -- 5790
	DAS_FG_STONE            = "Dunkle Anker in Steinfälle",                 -- 5788
	DAS_FG_STORM            = "Dunkle Anker in Sturmhafen",                 -- 5784
	DAS_MG_ALIKR            = "Verrückte Alik'r Wüste",                     -- 5814
	DAS_MG_AURID            = "Verrücktes Auridon",                         -- 5816
	DAS_MG_BANGK            = "Verrücktes Bangkorai",                       -- 5818
	DAS_MG_DESHA            = "Verrücktes Deshaan",                         -- 5819
	DAS_MG_EASTM            = "Verrücktes Ostmarsch",                       -- 5820
	DAS_MG_GLENU            = "Verrücktes Glenumbra",                       -- 5822
	DAS_MG_GRAHT            = "Verrücktes Grahtwald",                       -- 5823
	DAS_MG_GREEN            = "Verrücktes Grünschatten",                    -- 5824
	DAS_MG_MALAB            = "Verrücktes Malabal Tor",                     -- 5825
	DAS_MG_REAPE            = "Verrücktes Schnittermark",                   -- 5826
	DAS_MG_RIFT             = "Verrücktes Rift",                            -- 5831
	DAS_MG_RIVEN            = "Verrücktes Kluftspitze",                     -- 5827
	DAS_MG_SHADO            = "Verrücktes Schattenfenn",                    -- 5828
	DAS_MG_STONE            = "Verrücktes Steinfälle",                      -- 5829
	DAS_MG_STORM            = "Verrücktes Sturmhafen",                      -- 5830
	DAS_UD_ALIKR            = "Geschmolzene Perlen der Alik'r-Wüste",       -- 5745
	DAS_UD_AURID            = "Verschleierte Finsternis auf Auridon",       -- 5798
	DAS_UD_BANGK            = "Alte Rüstungen aus Bangkorai",               -- 5733
	DAS_UD_DESHA            = "Ahnenschutzzauber in Deshaan",               -- 5735
	DAS_UD_EASTM            = "Eisige Intrige in Ostmarsch",                -- 5779
	DAS_UD_GLENU            = "Rotkrähen-Plünderung in Glenumbra",          -- 5739
	DAS_UD_GRAHT            = "Ayleïdenschnickschnack in Grahtwald",        -- 5738
	DAS_UD_GREEN            = "Kulinarische Gerechtigkeit in Grünschatten", -- 5853
	DAS_UD_MALAB            = "Die Geisterfalle in Malabal Tor",            -- 5734
	DAS_UD_REAPE            = "Maskottchendieb von Schnittermark",          -- 5744
	DAS_UD_RIFT             = "Die brennenden Feuer von Rift",              -- 5802
	DAS_UD_RIVEN            = "Dunkle Blüte in Kluftspitze",                -- 5808
	DAS_UD_SHADO            = "Geben und Nehmen in Schattenfenn",           -- 5778
	DAS_UD_STONE            = "Dwemerrelikte aus Steinfälle",               -- 5737
	DAS_UD_STORM            = "Sturmhafens verfluchter Tand",               -- 5800


	-- Craglorn
	-- lower
	DAS_CRAG_HERMY          = "Das Archiv des Suchers",      -- 5749
	DAS_CRAG_SHADA          = "Die gefallene Stadt Shada",   -- 5750
	DAS_CRAG_TUWHACCA       = "Die Prüfungen von Rahni'Za",  -- 5751
	DAS_CRAG_NEREID         = "Wenn das Wasser giftig wird", -- 5754
	DAS_CRAG_ELINHIR        = "Unbeschreibliche Macht",      -- 5755
	DAS_CRAG_SARA           = "Kritische Masse",             -- 5756
	DAS_CRAG_NEDE           = "Der Grund für unseren Kampf", -- 5762
	-- upper
	DAS_CRAG_HITMAN         = "Die wahren Giftzähne",        -- 5764
	DAS_CRAG_KIDNAP         = "Lebendig gefangen",           -- 5765
	DAS_CRAG_SCALES         = "Eisen und Schuppen",          -- 5766
	DAS_CRAG_NIRNCRUX       = "Das Blut Nirns",              -- 5767
	DAS_CRAG_NECRO          = "Die Seelen der Verratenen",   -- 5770
	DAS_CRAG_DUNGEON        = "Entfesselt",                  -- 5772
	DAS_CRAG_WORLDTRIP      = "Der Graue Lauf",              -- 5777
	-- quest npcs
	DAS_QUEST_CRA_SARA      = "Sara Benele",                 -- 72619
	DAS_QUEST_CRA_GREBA     = "Greban",                      -- 72367
	DAS_QUEST_CRA_NHALA     = "Nhalan",                      -- 72629
	DAS_QUEST_CRA_RALAI     = "Ralai",                       -- 72554
	DAS_QUEST_CRA_IBRUL     = "Ibrula",                      -- 72469
	DAS_QUEST_CRA_FIGHT     = "Kämpft-mit-Schwanz",          -- 72582
	DAS_QUEST_CRA_FADA      = "Fada at-Glina",               -- 72436
	DAS_QUEST_CRA_NENDI     = "Nendirume",                   -- 73118
	DAS_QUEST_CRA_GRAYP     = "Der Graue Lauf",              -- 87370069-0-21018
	DAS_QUEST_CRA_LASHB     = "Lashburr Zahnbrecher",        -- 72963
	DAS_QUEST_CRA_CRUSA     = "Glaubenskrieger Dalamar",     -- 73366
	DAS_QUEST_CRA_SCATT     = "Verstreutes-Laub",            -- 72962
	DAS_QUEST_CRA_SAFA      = "Safa al-Satakalaam",          -- 72961
	DAS_QUEST_CRA_MERED     = "Mederic Vyger",               -- 73444
	DAS_QUEST_CRA_SALIM     = "Sali'ma",                     -- 72541
	DAS_QUEST_CRA_TISHI     = "Tishi",                       -- 72539
	DAS_QUEST_CRA_MINER     = "Minerva Lauzon",              -- 72581
	DAS_QUEST_CRA_MASTE     = "Meister Timen",               -- 72267
	DAS_QUEST_CRA_GRAYM     = "Der Graue Menhir",            -- 87370069-0-21024


	-- Quest NPC names
	DAS_QUEST_M_ASHLANDER   = "Jagdmeister Sorim-Nakar",   -- 76010
	DAS_QUEST_M_RIVYN       = "Kampfmeister Rivyn",        -- 76622
	DAS_QUEST_CC_ROBOT      = "Uhrwerk-Vermittler",        -- 79225
	DAS_QUEST_CC_CROW       = "Schatzmeister der Tribute", -- 79171
	DAS_QUEST_CC_NOVICE     = "Novizin Holli",             -- 79220
	DAS_QUEST_CC_THISTLE    = "Springt-über-Disteln",      -- 78637
	DAS_QUEST_CC_DARO       = "Gehilfe Daro",              -- 78653
	DAS_QUEST_CC_TILELLE    = "Initiandin Tilelle",        -- 79379
	DAS_QUEST_W_OUFA        = "Feldwebel Oufa",            -- 59290
	DAS_QUEST_W_USHANG      = "Ushang der Ungezähmte",     -- 67144
	DAS_QUEST_W_BIRKHU      = "Birkhu der Tapfere",        -- 67184
	DAS_QUEST_DB_ARVINA     = "Kleriker Arvina",           -- 70157
	DAS_QUEST_DB_BOUNTY     = "Kopfgeldtafel",             -- 87370069-0-20444
	DAS_QUEST_CAP_CARDEA    = "Cardea Gallus",             -- 74040
	DAS_QUEST_CAP_ALVUR     = "Alvur Baren",               -- 73953
	DAS_QUEST_CAP_BOLGRUL   = "Bolgrul",                   -- 71827
	DAS_QUEST_SS_TANO       = "Justiziar Tanorian",        -- 82013
	DAS_QUEST_SS_FARO       = "Justiziarin Farowel",       -- 82121
	DAS_QUEST_SS_TANE       = "Schlachtenvogt Tanerline",  -- 82289
	DAS_QUEST_CRY_BATTLE    = "Schlachttafel",             -- 87370069-0-11718
	DAS_QUEST_CRY_BOUNTY    = "Kopfgeldtafel",             -- 87370069-0-11727
	DAS_QUEST_CRY_SCOUT     = "Kundschaftertafel",         -- 87370069-0-10045
	DAS_QUEST_CRY_WARFR     = "Kriegsfronttafel",          -- 87370069-0-11719
	DAS_QUEST_DB_LARONEN    = "Laronen",                   -- 70175
	DAS_QUEST_DB_FINIA      = "Finia Sele",                -- 70185
	DAS_QUEST_DB_CODUS      = "Codus ap Dugal",            -- 70197
	DAS_QUEST_W_NEDNOR      = "Nednor",                    -- 59374
	DAS_QUEST_W_THAZEK      = "Thazeg",                    -- 67076
	DAS_QUEST_W_ARUSHNA     = "Arushna",                   -- 59532
	DAS_QUEST_W_LILYAMEH    = "Lilyameh",                  -- 67178
	DAS_QUEST_W_BAGRUBESH   = "Bagrugbesh",                -- 67119
	DAS_QUEST_W_CIRANTILLE  = "Cirantille",                -- 67123
	DAS_QUEST_W_MENNINIA    = "Menninia",                  -- 67021
	DAS_QUEST_W_SONOLIA     = "Sonolia Muspidius",         -- 67193
	DAS_QUEST_W_RAYNOR      = "Raynor Vanos",              -- 65557
	DAS_QUEST_M_TRAYLAN     = "Traylan Omoril",            -- 74468
	DAS_QUEST_M_BELERU      = "Beleru Omoril",             -- 74469
	DAS_QUEST_M_NUMANI      = "Numani-Rasi",               -- 76157
	DAS_QUEST_M_NARA        = "Nara Varam",                -- 76059
	DAS_QUEST_M_TIRVINA     = "Tirvina Avani",             -- 76077
	DAS_QUEST_M_DINOR       = "Dinor Salvi",               -- 74475
	DAS_QUEST_M_BRAVOSI     = "Bravosi Felder",            -- 74513
	DAS_QUEST_M_IVULEN      = "Ivulen Andromo",            -- 75960
	DAS_QUEST_M_SAVILE      = "Savile Alam",               -- 76726
	DAS_QUEST_M_KYLIA       = "Kylia Thando",              -- 76765
	DAS_QUEST_M_EVOS        = "Evos Hledas",               -- 76747
	DAS_QUEST_M_ALVES       = "Alves Droth",               -- 76382
	DAS_QUEST_M_DREDASE     = "Dredase-Hlarar",            -- 76024
	DAS_QUEST_M_VORAR       = "Vorar Vendu",               -- 76730
	DAS_QUEST_M_VALGA       = "Valga Celatus",             -- 75969
	DAS_QUEST_CC_ORC        = "Razgurug",                  -- 78634
	DAS_QUEST_CC_COOK       = "Aveberl Tremouille",        -- 78643
	DAS_QUEST_CC_MINDORA    = "Mindora",                   -- 78642
	DAS_QUEST_CC_NJORD      = "Njordemar",                 -- 78641
	DAS_QUEST_CC_IGMUND     = "Igmund",                    -- 78905
	DAS_QUEST_W_GURUZUG     = "Guruzug",                   -- 67019
	DAS_QUEST_W_ARZORAG     = "Arzorag",                   -- 67018


	-- Blackwood
	-- World Boss dailies : NPC = Brita Silanus
	DAS_QUEST_BW_BOSS       = "Britta Silanus",                -- 100913
	DAS_BLACKWD_EXCAV       = "Die Legende vom Mannbullen",    -- 6645
	DAS_BLACKWD_TOAD        = "Goblinforschung",               -- 6649
	DAS_BLACKWD_RITUAL      = "Riten der Sul-Xan",             -- 6650
	DAS_BLACKWD_FROG        = "Ein Froschregen",               -- 6651
	DAS_BLACKWD_LAGOON      = "Der Trophäennehmer",            -- 6652
	DAS_BLACKWD_XANMEER     = "Der Ruf des Ruinach",           -- 6653
	-- Delve dailies : NPC = Deetum-Jas
	DAS_QUEST_BW_DELVE      = "Deetum-Jas",                    -- 100912
	DAS_BLACKWD_BLESS       = "Ein ordentlicher Segen",        -- 6644
	DAS_BLACKWD_BLOODRUN    = "Schattenhafte Taktiken",        -- 6665
	DAS_BLACKWD_BEAUTY      = "Schönheit inmitten der Gefahr", -- 6668
	DAS_BLACKWD_CONFLICT    = "Interessenkonflikt",            -- 6673
	DAS_BLACKWD_CHAIN       = "Das Sprengen der Kette",        -- 6674
	DAS_BLACKWD_INSECT      = "Insektenrettung",               -- 6675


	-- Southern Elsweyr
	-- World Boss dailies : NPC = Bruccius Baenius
	DAS_QUEST_SE_BOSS       = "Bruccius Baenius",              -- 91767
	DAS_SE_PARIAH           = "Der Gichtzahn-Ausgestoßene",    -- 6376
	DAS_SE_HEAL             = "Hilfe für die Heiler",          -- 6421
	DAS_SE_RICE             = "Ein Abtrünniger und sein Reis", -- 6422
	DAS_SE_DUST             = "Staubflocken",                  -- 6423
	DAS_SE_SCHOL            = "Gelehrte Beobachtungen",        -- 6424
	DAS_SE_FLETCH           = "Bognereibeschaffung",           -- 6425
	-- Delve dailies : NPC = Guybert Flaubert
	DAS_QUEST_SE_DELVE      = "Guybert Flaubert",              -- 91769
	DAS_SE_TOMES            = "Folianten der Tsaesci",         -- 6419
	DAS_SE_SWORD            = "Die Quelle der Verzauberungen", -- 6431
	DAS_SE_CANDLE           = "Frieden bei Kerzenschein",      -- 6432
	DAS_SE_LILY             = "Lilien fürs Gedenken",          -- 6436
	DAS_SE_MUSH             = "Mondenbeschienene Pilze",       -- 6437
	DAS_SE_BLOOD            = "Eine Antwort in Blut",          -- 6438
	-- Dragon Hunt dailies : NPC = Chizbari the Chipper
	DAS_QUEST_SE_DRAGONS    = "Chizbari die Hauerin",          -- 91289
	DAS_SE_DRAGON2          = "Die Jagd der Drachengarde",     -- 6434
	DAS_SE_DRAGON1          = "Dämmerung der Drachengarde",    -- 6444
	-- Dragonguard dailies : NPC = Dirge Truptor
	DAS_QUEST_SE_DELVE2     = "Dirge Truptor",                 -- 91226
	DAS_SE_TUSK             = "Vor die Hauer gekommen",        -- 6405
	DAS_SE_GRAVE            = "Ein einsames Grab",             -- 6406
	DAS_SE_BONES            = "Stöcke und Steine",             -- 6428
	DAS_SE_GARD             = "Den Garten umgraben",           -- 6429
	DAS_SE_FILE             = "Unter „D“ ablegen",             -- 6430
	DAS_SE_AWAK             = "Böses Erwachen",                -- 6433
}

DAS_STRINGS_LOCALE.de = strings
for stringId, stringValue in pairs(strings) do
	ZO_CreateStringId(stringId, stringValue)
	SafeAddVersion(stringId, 2)
end
