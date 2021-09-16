DAS_STRINGS_LOCALE = DAS_STRINGS_LOCALE or {}
local strings  = {
	-- Key bindings
	DAS_SI_TOGGLE			= "Toggle hidden", --TRANSLATEME
	DAS_SI_MINIMISE			= "Toggle minimised", --TRANSLATEME

	-- GUI
	-- Drag bar button tooltips
	DAS_GUI_BTN_LOCK		= "Verrouiller la fenêtre", --TRANSLATEME
	DAS_GUI_BTN_UNLOCK		= "Déverrouiller la fenêtre", --TRANSLATEME
	DAS_GUI_BTN_HIDE		= "Cacher DailyAutoShare",
	DAS_GUI_BTN_REFRESH		= "Mettre a jour",
	DAS_GUI_BTN_MINIMISE	= "Réduire la fenêtre", --TRANSLATEME
	DAS_GUI_BTN_MAXIMISE	= "Agrandir la fenêtre", --TRANSLATEME

	-- QuestList button tooltips
	DAS_GUI_INVITE_TRUE		= "Invite auto |c89FFE3activé|r",
	DAS_GUI_INVITE_FALSE	= "Invite auto |cDF6C00désactivé|r",
	DAS_GUI_ACCEPT_TRUE		= "|c89FFE3Accepte automatiquement|r les quêtes quotidienne partagées",
	DAS_GUI_ACCEPT_FALSE	= "|cDF6C00N'accepte pas automatiquement|r les quêtes",
	DAS_GUI_SHARE_TRUE		= "|c89FFE3Partager automatiquement|r votre quête quotidienne active avec le groupe ou « share » ou « quest » dans le chat de groupe.\n\nClic droit pour partager votre quête active",
	DAS_GUI_SHARE_FALSE		= "|cDF6C00Ne partage pas|r votre quête active.\n\nClic droit pour partager",
	DAS_GUI_BTN_SPAM		= "Clic pour spam dans le chat de zone",
	DAS_GUI_BTN_SPAM_ASK	= "Clic pour demander poliment une quête dans le chat de zone",
	DAS_GUI_BTN_DONATE		= "Visit the GitHub page to voice your concerns, wishes and thanks!\n|c89FFE3— <3 manavortex and the team|r", --TRANSLATEME

	-- Quest tooltips
	DAS_GUI_SUBLIST_OPEN	= "Cliquez pour ouvrir la liste des quêtes", --TRANSLATEME
	DAS_GUI_Q_IS_DONE		= "accomplie aujourd'hui", -- quest state 0 --TRANSLATEME
	DAS_GUI_Q_IS_OPEN		= "n'est toujours pas tenté", -- quest state 1 --TRANSLATEME
	DAS_GUI_Q_IS_ACTIVE		= "acceptée", -- quest state 2 --TRANSLATEME
	DAS_GUI_Q_BINGO			= "\nThe bingo code is <<1>>", -- 1 is the bingo code --TRANSLATEME
	DAS_GUI_Q_TIP			= "« <<1>> » |c<<2>><<3>>|r<<4>>", -- 1 is Quest Name, 2 is colour, 3 is the quest state, 4 is either DAS_GUI_Q_BINGO or nothing --TRANSLATEME
	DAS_GUI_Q_PREREQ		= "|c<<2>>Le quête préalable est requise :|r\n• <<1>>", -- 1 is Quest Name, 2 is colour --TRANSLATEME
	DAS_GUI_Q_RMB_TIP		= "Clic droit pour les options", --TRANSLATEME

	-- Quest context menu
	DAS_GUI_CTX_SUBLIST		= "Afficher/masquer la liste des quêtes", --TRANSLATEME
	DAS_GUI_CTX_SPAM		= "Spam", --TRANSLATEME
	DAS_GUI_CTX_SHARE		= "Partager", --TRANSLATEME
	DAS_GUI_CTX_TRACK		= "→ Traquer", --TRANSLATEME
	DAS_GUI_CTX_ABANDON		= "|cFF0000Abandonner|r", --TRANSLATEME
	DAS_GUI_CTX_OPEN_TRUE	= "Set as completed", --TRANSLATEME
	DAS_GUI_CTX_OPEN_FALSE	= "Set as open", --TRANSLATEME

	-- Settings panel
	DAS_MENU_URI_LOC		= "https://github.com/manavortex/DailyAutoShare/issues/40",
	DAS_MENU_H_GENERAL		= "Paramètres généraux",
	DAS_MENU_CB_GLOBAL		= "Réglages à l'échelle du compte",
	DAS_MENU_CB_GLOBAL_TIP	= "Utiliser les mêmes réglages pour tous les personnages ?",
	DAS_MENU_CB_HIDE		= "Cacher la fenêtre IU",
	DAS_MENU_CB_HIDE_NA		= "Cacher dans les zones non actives",
	DAS_MENU_CB_HIDE_NA_TIP	= "Usually the completed dailies will be shown in the list. Check this to make them vanish.",
	-- activate menu
	DAS_MENU_CB_SUB_ENABLE	= "Activer",
	DAS_MENU_CB_SUB_HIDE	= "Dissimuler",
	DAS_MENU_CB_SUB_HIDE_T	= "Hide the quests from UI List but keep sharing them",
	DAS_MENU_SM_ACT			= "Activer la DailyAutoShare dans…",
	DAS_MENU_SM_ACT_TIP		= "Activate or deactivate the add-on for the listed zones and activities.",
	DAS_MENU_H_ZONES		= "les zones :",
	DAS_MENU_CB_BWOOD		= "Blackwood / Le Bois noir",
	DAS_MENU_CB_CCITY		= "Clockwork City / La Cité mécanique",
	DAS_MENU_SM_CCITY		= "Clockwork City Options",
	DAS_MENU_CB_CC_DELV		= "La Forteresse d'airain : les antres",
	DAS_MENU_CB_CC_DELV_TIP	= "Quest giver is |cFFFFFF<<1>>|r in the Brass Fortress\nRequires completing the following prerequisite quests (either of):\n• <<2>>\n• <<3>>", -- 1 is DAS_QUEST_CC_NOVICE
	DAS_MENU_CB_CC_BOSS		= "La Forteresse d'airain : boss sauvages",
	DAS_MENU_CB_CC_BOSS_TIP	= "Quest giver is |cFFFFFF<<1>>|r in the Brass Fortress", -- 1 is DAS_QUEST_CC_ROBOT
	DAS_MENU_CB_CC_SLAG		= "La Ferraille : Gathering dailies",
	DAS_MENU_CB_CC_SLAG_TIP	= "Quest giver is |cFFFFFF<<1>>|r in the Brass Fortress", -- 1 is DAS_QUEST_CC_ORC
	DAS_MENU_CB_CC_CROW		= "La Ferraille : la cour de Noireplume",
	DAS_MENU_CB_CC_CROW_TIP	= "Quest giver is |cFFFFFF<<1>>|r in the Brass Fortress\nRequires progressing the zone story past the following quest:\n• <<2>>", -- 1 is DAS_QUEST_CC_CROW
	DAS_MENU_CB_CRAG		= "Craglorn / Raidelorn",
	DAS_MENU_CB_CYRO		= "Cyrodiil — la base de l'alliance",
	DAS_MENU_CB_CYRO_TIP	= "Auto-accept and turn-in support only",
	DAS_MENU_CB_DARKB		= "Gold Coast / La Côte d'or",
	DAS_MENU_CB_THGLD		= "Hew's Bane / Le Trépas des Cognées",
	DAS_MENU_CB_MURK		= "Murkmire / Tourbevase",
	DAS_MENU_SM_MURK		= "Murkmire Options",
	DAS_MENU_CB_MM_DELV		= "Lilmoth : les antres",
	DAS_MENU_CB_MM_DELV_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Lilmoth\nRequires completing the following prerequisite quest:\n• <<2>>", -- 1 is DAS_SLAVES_QUEST1
	DAS_MENU_CB_MM_BOSS		= "Lilmoth : boss sauvages",
	DAS_MENU_CB_MM_BOSS_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Lilmoth\nRequires completing the following prerequisite quest:\n• <<2>>", -- 1 is DAS_SLAVES_QUEST3
	DAS_MENU_CB_MM_ROOT		= "Le village de Murmure-racine",
	DAS_MENU_CB_MM_ROOT_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Root-Whisper Village\nRequires completing the zone story", -- 1 is DAS_SLAVES_QUEST2
	DAS_MENU_CB_NELWR		= "Northern Elsweyr / Le Nord d'Elsweyr",
	DAS_MENU_CB_SELWR		= "Southern Elsweyr / Le Sud d'Elsweyr",
	DAS_MENU_CB_ELVES		= "Summerset / Le Couchant",
	DAS_MENU_CB_MWIND		= "Vvardenfell",
	DAS_MENU_SM_MWIND		= "Vvardenfell Options",
	DAS_MENU_CB_M_RELC		= "Cendrais : les reliques",
	DAS_MENU_CB_M_RELC_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Ald'ruhn\nRequires completing the following prerequisite quests:\n• <<2>>\n• <<3>>", -- 1 is DAS_QUEST_M_NUMANI
	DAS_MENU_CB_M_HUNT		= "Cendrais : la chasse",
	DAS_MENU_CB_M_HUNT_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Ald'ruhn\nRequires completing the following prerequisite quests:\n• <<2>>\n• <<3>>", -- 1 is DAS_QUEST_M_ASHLANDER
	DAS_MENU_CB_M_DELV		= "Vivec : les antres",
	DAS_MENU_CB_M_DELV_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Vivec's Hall of Justice\nRequires completing the following prerequisite quest:\n• <<2>>", -- 1 is DAS_QUEST_M_TRAYLAN
	DAS_MENU_CB_M_BOSS		= "Vivec : boss sauvages",
	DAS_MENU_CB_M_BOSS_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Vivec's Hall of Justice\nRequires completing the following prerequisite quest:\n• <<2>>", -- 1 is DAS_QUEST_M_BELERU
	DAS_MENU_CB_ORCS		= "Wrothgar",
	DAS_MENU_H_GUILDS		= "les activités des guildes :",
	DAS_MENU_CB_GUILD		= "Les guildes des mages / guerriers & Indomptables",
	DAS_MENU_SM_GUILD		= "Guild dailies options",
	DAS_MENU_CB_G_FG_HIDE	= "Hide Fighters Guild dailies in Capitals",
	DAS_MENU_CB_G_MG_HIDE	= "Hide Mages Guild dailies in Capitals",
	DAS_MENU_CB_G_UD_HIDE	= "Hide Undaunted dailies in Capitals",
	DAS_MENU_H_EVENTS		= "les festivals :",
	DAS_MENU_CB_E_NL		= "Nouvelle vie",
	DAS_MENU_CB_E_NL_TIP	= "Activer le Festival de la Nouvelle vie",
	-- invite menu
	DAS_MENU_SM_INVITE		= "Invitation text & behaviour",
	DAS_MENU_TB_QST			= "Quest Share text",
	DAS_MENU_TB_QST_TIP		= "Text to generate when you spam quest shares.\n<<1>> will be replaced with the quest names, <<2>> with the bingo codes.\nOmit either to remove parameter. Include neither and sound like a fool.",
	DAS_MENU_BTN_QSTRST		= "Reset",
	DAS_MENU_BTN_QSTRST_TIP	= "Reset Quest Share text to its default value",
	DAS_MENU_CB_WOMOD		= "Use Whisper-only Mode",
	DAS_MENU_CB_WOMOD_TIP	= "This will ignore bingo spam in the zone chat!",
	DAS_MENU_TB_WOT			= "Whisper-only text",
	DAS_MENU_TB_WOT_TIP		= "Will replace everything after <<1>> in the Quest Share text above",
	DAS_MENU_H_GLDAUTOINV	= "Auto-Invite from Guild Chat",
	DAS_MENU_DD_GAI			= "Auto-invite from the guild chat of...",
	DAS_MENU_DD_GAI_TIP		= "Which guild should the add-on listen to?",
	DAS_MENU_DD_GAI_NONE	= "(none)",
	DAS_MENU_TB_GAICODE		= "Auto-invite code",
	DAS_MENU_TB_GAICODE_TIP	= "Leave blank to disable.\nSet as |cFFFFFFblah|r to auto-invite on |cFFFFFF+blah|r and so on",
	DAS_MENU_CB_GCHAT		= "Listen for bingo codes in all guild chats",
	-- gui menu
	DAS_MENU_H_GUI			= "DAS Window's Look and Feel",
	DAS_MENU_CB_GUILOCK		= "Lock window position",
	DAS_MENU_CB_TTRIGHT		= "Draw tooltips and sublists on the right side",
	DAS_MENU_CB_TTRIGHT_TIP	= "Switch this off to display tooltips and sublists on the left instead",
	DAS_MENU_CB_GUIUP		= "DropUp instead of DropDown",
	DAS_MENU_CB_GUIUP_TIP	= "Check this if you want the questList to appear above the drag bar instead of below",
	DAS_MENU_CB_GUISM		= "Start up minimised",
	DAS_MENU_CB_GUISM_TIP	= "Always minimise the DAS Window on first startup",
	DAS_MENU_CB_HIDE_CQ		= "Auto-hide if all dailies are complete",
	DAS_MENU_CB_HIDE_CQ_TIP	= "Check this if you want the DAS Window to be hidden when you're done",
	DAS_MENU_CB_MINI_CQ		= "Auto-minimise if all dailies are complete",
	DAS_MENU_CB_MINI_CQ_TIP	= "Check this if you want the DAS Window to be minimised when you're done. Will obviously be overridden by hide.",
	DAS_MENU_CB_DEL_CQ		= "Hide the completed quests",
	DAS_MENU_CB_DEL_CQ_TIP	= "Usually the completed dailies are shown in the list. Check this to make them vanish.",
	DAS_MENU_CB_FSIZE		= "Font size",
	DAS_MENU_CB_FSIZE_TIP	= "Make the text bigger or smaller. 80 is a good starting point for zones like Vvardenfell.",
	-- automation options
	DAS_MENU_H_AUTOM		= "Automatically...",
	DAS_MENU_CB_ACCEPT		= "accept shared dailies",
	DAS_MENU_CB_ACCEPT_TIP	= "Accept repeatable quests when they are shared?",
	DAS_MENU_CB_DSKIP		= "accept dailies from questgivers",
	DAS_MENU_CB_DSKIP_TIP	= "Skip all dialogue for the daily quest NPCs?",
	DAS_MENU_CB_INVITE		= "invite from zone chat",
	DAS_MENU_CB_INVITE_TIP	= "Are you the active kind? Check this box to auto-invite\nDoes the same thing as the toggle button in DAS Window",
	DAS_MENU_CB_GLAIOFF		= "stop inviting when the group disbands",
	DAS_MENU_CB_GLAIOFF_TIP	= "Deactivate auto-invite when you leave the group?",
	DAS_MENU_CB_GLASHON		= "re-enable auto-share when the group disbands",
	DAS_MENU_CB_GLASHON_TIP	= "Reactivate quest auto-sharing when you leave the group?",
	DAS_MENU_CB_AGLSPAM		= "groupleave on a new search",
	DAS_MENU_CB_AGLSPAM_TIP = "Automatically leave the group when you ask for dailies while still grouped?",
	DAS_MENU_SL_AJBINGO		= "Accept auto-invite after +bingo in zone for ... seconds",
	DAS_MENU_SL_AJBINGO_TIP	= "After you've been looking for quest share, how long do you want to automatically accept group-invites?\nSet to 0 to disable",
	-- throttling options
	DAS_MENU_H_POLITE		= "Paramètres de limitation",
	DAS_MENU_SL_INVTIME		= "Group invite delay (in ms)",
	DAS_MENU_SL_INVTIME_TIP	= "Adjust this if you encounter disconnects when trying to create a group.\n1000 ms are one second.",
	DAS_MENU_CB_SHRTIME		= "Quest share delay (in ms)",
	DAS_MENU_CB_SHRTIME_TIP	= "Adjust this if you encounter disconnects when new group members join.\n1000 ms are one second.",
	-- misc options
	DAS_MENU_CB_H_STUFF		= "Divers",
	DAS_MENU_CB_DEBUG		= "Mode débogage",


	-- QUEST DATA

	-- Quest names are located in the table 52420949-0 of FR.lang
	-- NPC names are located in the table 8290981-0 of FR.lang
	-- Specify NPC names with all dynamic grammar pre-applied,
	-- e.g. "La justiciar Farowël", not "justiciar Farowël^fd"


	-- Northern Elsweyr
	-- Delve dailies : NPC = Nisuzi
	DAS_QUEST_NE_DELVE      = "Nisuzi",                        -- 88072
	DAS_KITTY_FLAME         = "Moucher la flamme daedrique",   -- 6356
	DAS_KITTY_WIND          = "La sagesse aux quatre vents",   -- 6359
	DAS_KITTY_RUINS         = "Fouilles dans les ruines",      -- 6360
	DAS_KITTY_HUNGRY        = "La Faveur du Chat affamé",      -- 6361
	DAS_KITTY_STAMPEDE      = "La cavalcade du Serpent",       -- 6362
	DAS_KITTY_TEA           = "Feuilles de thé emmêlées",      -- 6363
	-- World Boss dailies : NPC = Ri'hirr
	DAS_QUEST_NE_BOSS       = "Ri'hirr",                       -- 88139
	DAS_KITTY_SWORD         = "Le sourire du serpent",         -- 6377
	DAS_KITTY_WILY          = "La terreur des travailleurs",   -- 6378
	DAS_KITTY_NIGHTMARE     = "Un cauchemar éveillé",          -- 6379
	DAS_KITTY_DEATH         = "À chaque jour son cadavre",     -- 6380
	DAS_KITTY_DUO           = "Un duo déterminé",              -- 6381
	DAS_KITTY_SENCHE        = "Le senche des convenances",     -- 6382
	-- Dragon Hunt dailies : NPC = Battlereeve Tanerline
	DAS_QUEST_TANERLIN      = "Le haut commissaire Tanerline", -- 88741
	DAS_KITTY_DRAGON        = "Chasse au dragon",              -- 6357


	-- Murkmire
	-- World Boss dailies : NPC = Bolu
	DAS_SLAVES_QUEST3       = "Bolu",                            -- 85085
	DAS_SLAVES_BOSS_1       = "Graves circonstances",            -- 6233
	DAS_SLAVES_BOSS_5       = "Vieille croissance",              -- 6234
	DAS_SLAVES_BOSS_3       = "Vieilles babioles",               -- 6235
	DAS_SLAVES_BOSS_2       = "Funestes attentes",               -- 6236
	DAS_SLAVES_BOSS_6       = "Mémentos",                        -- 6237
	DAS_SLAVES_BOSS_4       = "Vieux ennemis",                   -- 6238
	-- Delve dailies : NPC = Varo Hosidias
	DAS_SLAVES_QUEST1       = "Varo Hosidias",                   -- 85212
	DAS_SLAVES_DELVE_6      = "Le poids des mots",               -- 6247
	DAS_SLAVES_DELVE_3      = "Vieux parchemins",                -- 6248
	DAS_SLAVES_DELVE_1      = "Armure antique",                  -- 6253
	DAS_SLAVES_DELVE_4      = "Bougies sacrées",                 -- 6264
	DAS_SLAVES_DELVE_5      = "Les outils du massacre",          -- 6267
	DAS_SLAVES_DELVE_2      = "Le silence tombe",                -- 6268
	-- Root-Whisper dailies : NPC = Tuwul
	DAS_SLAVES_QUEST2       = "Tuwul",                           -- 86275
	DAS_SLAVES_ROOT_1       = "L'aloès qui soigne",              -- 6286
	DAS_SLAVES_ROOT_4       = "Les champignons qui nourrissent", -- 6287
	DAS_SLAVES_ROOT_2       = "Les émissaires qui hésitent",     -- 6288
	DAS_SLAVES_ROOT_5       = "Les offrandes qui cachent",       -- 6289
	DAS_SLAVES_ROOT_3       = "Le cuir qui protège",             -- 6290


	-- Summerset
	-- Delve dailies : NPC = Justiciar Tanorian
	DAS_ELF_PILGR           = "Fin du pèlerinage",             -- 6152
	DAS_ELF_LIGHT           = "Souffler la lumière",           -- 6156
	DAS_ELF_ROSE            = "La beauté d'une rose",          -- 6157
	DAS_ELF_RELIC           = "La course aux reliques",        -- 6158
	DAS_ELF_SERPE           = "Abattage de serpents",          -- 6159
	DAS_ELF_MEMO            = "Qu'on oublie jusqu'à leur nom", -- 6160
	-- World Boss dailies : NPC = Justiciar Farowel
	DAS_ELF_QUEEN           = "La mer maladive",               -- 6082
	DAS_ELF_WILD            = "Dompter la nature",             -- 6083
	DAS_ELF_ALCHE           = "L'Alchimiste abyssal",          -- 6084
	DAS_ELF_GRIFFIN         = "Qui se ressemble…",             -- 6085
	DAS_ELF_GRAVE           = "Inoubliable",                   -- 6086
	DAS_ELF_SNAKE           = "Naufragé",                      -- 6087
	-- Geyser dailies : NPC = Battlereeve Tanerline
	DAS_ELF_GEYSER          = "Le naufrage du Couchant",       -- 6166


	-- Clockwork City
	-- Brass Fortress dailies : NPC = Clockwork Facilitator
	DAS_CLOCK_IMP           = "Attirer l'Imparfait",           -- 6076
	DAS_CLOCK_FOE           = "Un si beau plumage",            -- 6077
	-- Slag Town dailies : NPC = Razgurug
	DAS_CLOCK_CRAFT_WOOD    = "Ce qui alimente nos feux",      -- 6037
	DAS_CLOCK_CRAFT_SMITH   = "Chaque jour sur le métier",     -- 6038
	DAS_CLOCK_CRAFT_CLOTH   = "Détails à régler",              -- 6039
	DAS_CLOCK_CRAFT_WATER   = "La poisse",                     -- 6040
	DAS_CLOCK_CRAFT_RUNE    = "Accumulation enchantée",        -- 6041
	DAS_CLOCK_CRAFT_ALCH    = "Pilule amère",                  -- 6042
	-- Apostle dailies : NPC = Novice Holli
	DAS_CLOCK_DELVE_MISP    = "Une ombre égarée",              -- 6073
	DAS_CLOCK_DELVE_AGAI    = "Retour dans les ombres vertes", -- 6079
	DAS_CLOCK_DELVE_MALF    = "Une avarie d'ombre",            -- 6080
	DAS_CLOCK_DELVE_FANS    = "Graisser les ventilateurs",     -- 6081
	DAS_CLOCK_DELVE_FILT    = "Changer les filtres",           -- 6088
	DAS_CLOCK_DELVE_COMM    = "Remplacer les commutateurs",    -- 6089
	-- Blackfeather Court dailies : NPC = Bursar of Tributes
	DAS_CLOCK_CROW_NIBB     = "Petites bouchées",              -- 6070
	DAS_CLOCK_CROW_MORS     = "Morceaux de choix",             -- 6071
	DAS_CLOCK_CROW_RESP     = "Une histoire de respect",       -- 6072
	DAS_CLOCK_CROW_TRIB     = "Une affaire de tributs",        -- 6106
	DAS_CLOCK_CROW_LEIS     = "Une affaire de loisirs",        -- 6107
	DAS_CLOCK_CROW_GLIT     = "Lueur et Chatoiement",          -- 6110


	-- Vvardenfell / Morrowind
	-- Ashlander relic dailies : NPC = Numani-Rasi
	DAS_LIST_M_RELIC        = "Reliques de ",
	DAS_M_REL_YASAM         = "Reliques de Yasammidan",       -- 5924
	DAS_M_REL_ASSAR         = "Reliques d'Assarnatamat",      -- 5925
	DAS_M_REL_MAELK         = "Reliques de Maelkashishi",     -- 5926
	DAS_M_REL_ASHUR         = "Reliques d'Ashurnabitashpi",   -- 5927
	DAS_M_REL_EBERN         = "Reliques d'Ebernanit",         -- 5928
	DAS_M_REL_DUSHA         = "Reliques de Dushariran",       -- 5929
	DAS_M_REL_ASHAL         = "Reliques d'Ashalmawia",        -- 5930
	-- Ashlander hunt dailies : NPC = Huntmaster Sorim-Nakar
	DAS_M_HUNT_ZEXXI        = "Chasse au Grand Zexxin",       -- 5907
	DAS_M_HUNT_TARRA        = "Chasse de Tarra-Suj",          -- 5908
	DAS_M_HUNT_SVEET        = "Chasse au sveeth ondulant",    -- 5909
	DAS_M_HUNT_JAGGE        = "Mère Griffe-dentelée",         -- 5910
	DAS_M_HUNT_EATER        = "Chasse à Gobe-cendre",         -- 5911
	DAS_M_HUNT_STOMP        = "Chasse au vieux piétineur",    -- 5912
	DAS_M_HUNT_RAZOR        = "Chasse au Roi Défense-rasoir", -- 5913
	-- World Boss dailies : NPC = Beleru Omoril
	DAS_M_BOSS_SWARM        = "Réduire le troupeau",          -- 5865
	DAS_M_BOSS_NILTH        = "Garanti sans bœuf",            -- 5866
	DAS_M_BOSS_SALOT        = "Malédiction de Salothan",      -- 5904
	DAS_M_BOSS_SIREN        = "Chant de la sirène",           -- 5906
	DAS_M_BOSS_APPRE        = "L'Apprenti anxieux",           -- 5916
	DAS_M_BOSS_WUYWU        = "Une faim dévorante",           -- 5918
	-- Delve dailies : NPC = Traylan Omoril
	DAS_M_DELVE_TRIBA       = "Tribus troublées",             -- 5915
	DAS_M_DELVE_TAXES       = "Déduction fiscale",            -- 5934
	DAS_M_DELVE_DAEDR       = "Perturbations daedriques",     -- 5956
	DAS_M_DELVE_SYNDI       = "Mouvement syndical",           -- 5958
	DAS_M_DELVE_MISIN       = "Plantage à la plantation",     -- 5961
	DAS_M_DELVE_KWAMA       = "L'équation kwama",             -- 5962


	-- Wrothgar / Orsinium
	-- Delve dailies : NPC = Guruzug
	DAS_W_WEREWOLVES        = "Commerce de peaux",           -- 5504
	DAS_W_THAT_OTHER        = "Incendie au fort",            -- 5505
	DAS_W_HARPIES           = "Petit-déjeuner de l'étrange", -- 5507
	DAS_W_DWEMER            = "Parties du tout",             -- 5509
	DAS_W_DURZOGS           = "Plein la panse !",            -- 5514
	DAS_W_SPIRITS           = "Esprits libres",              -- 5515
	-- World Boss dailies : NPC = Arzorag
	DAS_W_POACHERS          = "Nourrir les foules",          -- 5518
	DAS_W_OGRE              = "Sauvetage académique",        -- 5519
	DAS_W_CORI              = "Abondance de la nature",      -- 5521
	DAS_W_DOLMEN            = "Hérésie par l'ignorance",     -- 5522
	DAS_W_NYZ               = "Neige et vapeur",             -- 5523
	DAS_W_EDU               = "L'odeur du crime",            -- 5524


	-- Gold coast / Dark Brotherhood
	-- Delve dailies : NPC = Bounty Board
	DAS_DB_EVIL             = "Mal enfoui",              -- 5603
	DAS_DB_GOOD             = "Le bien commun",          -- 5604
	-- World Boss dailies : NPC = Bounty Board
	DAS_DB_MINO             = "Ombres menaçantes",       -- 5605
	DAS_DB_ARENA            = "Le hurlement des foules", -- 5606


	-- Hew's Bane / Thieves Guild
	-- Heists
	DAS_HEWS_HDEAD          = "Casse : Salles du Sépulcre",     -- 5536
	DAS_HEWS_HHIDE          = "Casse : la Cachette",            -- 5572
	DAS_HEWS_HUNDE          = "Casse : sépulcre souterrain",    -- 5573
	DAS_HEWS_HGLIT          = "Casse : la grotte scintillante", -- 5575
	DAS_HEWS_HSECL          = "Casse : égouts reculés",         -- 5577
	-- World Boss dailies
	DAS_HEWS_KOEST          = "Les perles disparues",           -- 5586
	DAS_HEWS_THRAL          = "Crique des esclaves",            -- 5587
	-- Delve dailies
	DAS_HEWS_BAHRA          = "Souvenirs d'enfance",            -- 5588
	DAS_HEWS_SHARK          = "La pipe de marin",               -- 5589
	DAS_QUEST_TG_HEIST      = "Affichage des casses",           -- 87370069-0-20019
	DAS_QUEST_TG_REACQ      = "Tableau de réacquisition",       -- 87370069-0-20116
	DAS_QUEST_TG_FAREN      = "Fa'ren-dar",                     -- 69599
	DAS_QUEST_TG_SPENC      = "Spencer Rye",                    -- 69854


	-- New Life Festival
	DAS_NL_EASTMARCH        = "Le plongeon de l'ours des neiges",    -- 5811
	DAS_NL_REAPERSMARCH     = "L'Épreuve de la Ruse à cinq griffes", -- 5834
	DAS_NL_STONEFALLS       = "Danser Lave-alse",                    -- 5837
	DAS_NL_AURIDON          = "Boules de boue et bonne humeur",      -- 5838
	DAS_NL_ALIKR            = "La course des fanaux",                -- 5839
	DAS_NL_STORMHAVEN       = "Le défi de la vie de château",        -- 5845
	DAS_NL_GRAHTWOOD        = "Le séjour des orphelins de guerre",   -- 5852
	DAS_NL_SHADOWFEN        = "Festin de la Manne poissonneuse",     -- 5855
	DAS_NL_BETNIKH          = "La bringue à Pierrecroc",             -- 5856
	-- Quest NPCs
	DAS_QUEST_NL_BREDA      = "Bréda",                               -- 73855
	DAS_QUEST_NL_LIZARD     = "Cœur-Tendre",                         -- 74198
	DAS_QUEST_NL_ORC        = "La matronne Borbuga",                 -- 74207
	DAS_QUEST_NL_CAT        = "Tumira",                              -- 74066


	-- Guild dailies
	DAS_GUILD_ANCHORS       = "Ancres noires à ",
	DAS_GUILD_MADNESS       = "La folie à ",
	DAS_FG_ALIKR            = "Ancres noires au désert d'Alik'r",          -- 5786
	DAS_FG_AURID            = "Ancres noires à Auridia",                   -- 5793
	DAS_FG_BANGK            = "Ancres noires à Bangkoraï",                 -- 5787
	DAS_FG_DESHA            = "Ancres noires à Deshaan",                   -- 5789
	DAS_FG_EASTM            = "Ancres noires en Estemarche",               -- 5791
	DAS_FG_GLENU            = "Ancres noires en Glénumbrie",               -- 5833
	DAS_FG_GRAHT            = "Ancres noires au bois de Graht",            -- 5794
	DAS_FG_GREEN            = "Ancres noires à Prasin",                    -- 5796
	DAS_FG_MALAB            = "Ancres noires à Malabal Tor",               -- 5795
	DAS_FG_REAPE            = "Ancres noires à la marche de la Camarde",   -- 5797
	DAS_FG_RIFT             = "Ancres noires à la Brèche",                 -- 5792
	DAS_FG_RIVEN            = "Ancres noires à Fendretour",                -- 5785
	DAS_FG_SHADO            = "Ancres noires à Fangeombre",                -- 5790
	DAS_FG_STONE            = "Ancres noires aux Éboulis",                 -- 5788
	DAS_FG_STORM            = "Ancres noires à Havre-tempête",             -- 5784
	DAS_MG_ALIKR            = "Folie au désert d'Alik'r",                  -- 5814
	DAS_MG_AURID            = "Folie à Auridia",                           -- 5816
	DAS_MG_BANGK            = "Folie à Bangkoraï",                         -- 5818
	DAS_MG_DESHA            = "La folie à Deshaan",                        -- 5819
	DAS_MG_EASTM            = "Folie en Estemarche",                       -- 5820
	DAS_MG_GLENU            = "Folie en Glénumbrie",                       -- 5822
	DAS_MG_GRAHT            = "Folie au bois de Graht",                    -- 5823
	DAS_MG_GREEN            = "Folie à Prasin",                            -- 5824
	DAS_MG_MALAB            = "Folie à Malabal Tor",                       -- 5825
	DAS_MG_REAPE            = "Folie à la marche de la Camarde",           -- 5826
	DAS_MG_RIFT             = "Folie à la Brèche",                         -- 5831
	DAS_MG_RIVEN            = "Folie à Fendretour",                        -- 5827
	DAS_MG_SHADO            = "Folie à Fangeombre",                        -- 5828
	DAS_MG_STONE            = "Folie aux Éboulis",                         -- 5829
	DAS_MG_STORM            = "La folie d'Havre-tempête",                  -- 5830
	DAS_UD_ALIKR            = "Perles fondues du désert d'Alik'r",         -- 5745
	DAS_UD_AURID            = "Ténèbres voilées à Auridia",                -- 5798
	DAS_UD_BANGK            = "Anciens armements de Bangkoraï",            -- 5733
	DAS_UD_DESHA            = "Protection des ancêtres à Deshaan",         -- 5735
	DAS_UD_EASTM            = "Intrigue glacée en Estemarche",             -- 5779
	DAS_UD_GLENU            = "Sac des Freux écarlates en Glénumbrie",     -- 5739
	DAS_UD_GRAHT            = "Babioles ayléides au bois de Graht",        -- 5738
	DAS_UD_GREEN            = "Justice culinaire à Prasin",                -- 5853
	DAS_UD_MALAB            = "Le piège aux esprits de Malabal Tor",       -- 5734
	DAS_UD_REAPE            = "Vol de mascotte à la Marche de la camarde", -- 5744
	DAS_UD_RIFT             = "Brasiers enflammés de la Brèche",           -- 5802
	DAS_UD_RIVEN            = "Les ténèbres éclatent à Fendretour",        -- 5808
	DAS_UD_SHADO            = "Donnant, donnant à Fangeombre",             -- 5778
	DAS_UD_STONE            = "Reliques dwemers des Éboulis",              -- 5737
	DAS_UD_STORM            = "Babioles maudites d'Havre-tempête",         -- 5800


	-- Craglorn
	-- lower
	DAS_CRAG_HERMY          = "L'Archive des Sourciers",  -- 5749
	DAS_CRAG_SHADA          = "La cité perdue de Shada",  -- 5750
	DAS_CRAG_TUWHACCA       = "Les épreuves de Rahni'Za", -- 5751
	DAS_CRAG_NEREID         = "Les eaux se troublent",    -- 5754
	DAS_CRAG_ELINHIR        = "Puissance supérieure",     -- 5755
	DAS_CRAG_SARA           = "Masse critique",           -- 5756
	DAS_CRAG_NEDE           = "Notre cause",              -- 5762
	-- upper
	DAS_CRAG_HITMAN         = "Les crocs ajustés",        -- 5764
	DAS_CRAG_KIDNAP         = "Capturés vivants",         -- 5765
	DAS_CRAG_SCALES         = "Fer et écailles",          -- 5766
	DAS_CRAG_NIRNCRUX       = "Le sang de Nirn",          -- 5767
	DAS_CRAG_NECRO          = "Les âmes des trahis",      -- 5770
	DAS_CRAG_DUNGEON        = "Libéré",                   -- 5772
	DAS_CRAG_WORLDTRIP      = "Passage gris",             -- 5777
	-- quest npcs
	DAS_QUEST_CRA_SARA      = "Sara Bénèle",              -- 72619
	DAS_QUEST_CRA_GREBA     = "Greban",                   -- 72367
	DAS_QUEST_CRA_NHALA     = "Nhalan",                   -- 72629
	DAS_QUEST_CRA_RALAI     = "Ralai",                    -- 72554
	DAS_QUEST_CRA_IBRUL     = "Ibrula",                   -- 72469
	DAS_QUEST_CRA_FIGHT     = "Combat-avec-la-Queue",     -- 72582
	DAS_QUEST_CRA_FADA      = "Fada at-Glina",            -- 72436
	DAS_QUEST_CRA_NENDI     = "Nendirumë",                -- 73118
	DAS_QUEST_CRA_GRAYP     = "Passage gris",             -- 87370069-0-21018
	DAS_QUEST_CRA_LASHB     = "Cingleronce Brise-dents",  -- 72963
	DAS_QUEST_CRA_CRUSA     = "Le croisé Dalamar",        -- 73366
	DAS_QUEST_CRA_SCATT     = "Feuilles-au-Vent",         -- 72962
	DAS_QUEST_CRA_SAFA      = "Safa al-Satakalaam",       -- 72961
	DAS_QUEST_CRA_MERED     = "Médéric Vyger",            -- 73444
	DAS_QUEST_CRA_SALIM     = "Sali'ma",                  -- 72541
	DAS_QUEST_CRA_TISHI     = "Tishi",                    -- 72539
	DAS_QUEST_CRA_MINER     = "Minerva Lauzon",           -- 72581
	DAS_QUEST_CRA_MASTE     = "Le maître Timen",          -- 72267
	DAS_QUEST_CRA_GRAYM     = "Menhir gris",              -- 87370069-0-21024


	-- Quest NPC names
	DAS_QUEST_M_ASHLANDER   = "Le maître veneur Sorim-Nakar",          -- 76010
	DAS_QUEST_M_RIVYN       = "Le maître de guerre Rivyn",             -- 76622
	DAS_QUEST_CC_ROBOT      = "Facilitatrice mécanique",               -- 79225
	DAS_QUEST_CC_CROW       = "Boursier des tributs",                  -- 79171
	DAS_QUEST_CC_NOVICE     = "La novice Holli",                       -- 79220
	DAS_QUEST_CC_THISTLE    = "Enjambe-le-Chardon",                    -- 78637
	DAS_QUEST_CC_DARO       = "Le adjoint Daro",                       -- 78653
	DAS_QUEST_CC_TILELLE    = "La initiée Tilelle",                    -- 79379
	DAS_QUEST_W_OUFA        = "Le sergent Oufa",                       -- 59290
	DAS_QUEST_W_USHANG      = "Ushang le sauvage",                     -- 67144
	DAS_QUEST_W_BIRKHU      = "Birkhu l'audacieux",                    -- 67184
	DAS_QUEST_DB_ARVINA     = "Le prêtre Arvina",                      -- 70157
	DAS_QUEST_DB_BOUNTY     = "Panneau des primes",                    -- 87370069-0-20444
	DAS_QUEST_CAP_CARDEA    = "Cardea Gallus",                         -- 74040
	DAS_QUEST_CAP_ALVUR     = "Alvur Baren",                           -- 73953
	DAS_QUEST_CAP_BOLGRUL   = "Bolgrul",                               -- 71827
	DAS_QUEST_SS_TANO       = "Le justiciar Tanorian",                 -- 82013
	DAS_QUEST_SS_FARO       = "La justiciar Farowël",                  -- 82121
	DAS_QUEST_SS_TANE       = "Le haut commissaire Tanerline",         -- 82289
	DAS_QUEST_CRY_BATTLE    = "Tableau de missions de bataille",       -- 87370069-0-11718
	DAS_QUEST_CRY_BOUNTY    = "Tableau de missions à primes",          -- 87370069-0-11727
	DAS_QUEST_CRY_SCOUT     = "Tableau de missions de reconnaissance", -- 87370069-0-10045
	DAS_QUEST_CRY_WARFR     = "Tableau de missions du front",          -- 87370069-0-11719
	DAS_QUEST_DB_LARONEN    = "Laronen",                               -- 70175
	DAS_QUEST_DB_FINIA      = "Finia Sele",                            -- 70185
	DAS_QUEST_DB_CODUS      = "Codus ap Dugal",                        -- 70197
	DAS_QUEST_W_NEDNOR      = "Nednor",                                -- 59374
	DAS_QUEST_W_THAZEK      = "Thazeg",                                -- 67076
	DAS_QUEST_W_ARUSHNA     = "Arushna",                               -- 59532
	DAS_QUEST_W_LILYAMEH    = "Lilyameh",                              -- 67178
	DAS_QUEST_W_BAGRUBESH   = "Bagrugbesh",                            -- 67119
	DAS_QUEST_W_CIRANTILLE  = "Cirantillë",                            -- 67123
	DAS_QUEST_W_MENNINIA    = "Menninia",                              -- 67021
	DAS_QUEST_W_SONOLIA     = "Sonolia Muspidius",                     -- 67193
	DAS_QUEST_W_RAYNOR      = "Raynor Vanos",                          -- 65557
	DAS_QUEST_M_TRAYLAN     = "Traylan Omoril",                        -- 74468
	DAS_QUEST_M_BELERU      = "Beleru Omoril",                         -- 74469
	DAS_QUEST_M_NUMANI      = "Numani-Rasi",                           -- 76157
	DAS_QUEST_M_NARA        = "Nara Varam",                            -- 76059
	DAS_QUEST_M_TIRVINA     = "Tirvina Avani",                         -- 76077
	DAS_QUEST_M_DINOR       = "Dinor Salvi",                           -- 74475
	DAS_QUEST_M_BRAVOSI     = "Bravosi Felder",                        -- 74513
	DAS_QUEST_M_IVULEN      = "Ivulen Andromo",                        -- 75960
	DAS_QUEST_M_SAVILE      = "Savile Alam",                           -- 76726
	DAS_QUEST_M_KYLIA       = "Kylia Thando",                          -- 76765
	DAS_QUEST_M_EVOS        = "Evos Hledas",                           -- 76747
	DAS_QUEST_M_ALVES       = "Alves Droth",                           -- 76382
	DAS_QUEST_M_DREDASE     = "Dredase-Hlarar",                        -- 76024
	DAS_QUEST_M_VORAR       = "Vorar Vendu",                           -- 76730
	DAS_QUEST_M_VALGA       = "Valga Celatus",                         -- 75969
	DAS_QUEST_CC_ORC        = "Razgurug",                              -- 78634
	DAS_QUEST_CC_COOK       = "Aveberl Trémouille",                    -- 78643
	DAS_QUEST_CC_MINDORA    = "Mindora",                               -- 78642
	DAS_QUEST_CC_NJORD      = "Njordemar",                             -- 78641
	DAS_QUEST_CC_IGMUND     = "Igmund",                                -- 78905
	DAS_QUEST_W_GURUZUG     = "Guruzug",                               -- 67019
	DAS_QUEST_W_ARZORAG     = "Arzorag",                               -- 67018


	-- Blackwood
	-- World Boss dailies : NPC = Brita Silanus
	DAS_QUEST_BW_BOSS       = "Britta Silanus",                 -- 100913
	DAS_BLACKWD_EXCAV       = "La légende de l'homme-taureau",  -- 6645
	DAS_BLACKWD_TOAD        = "Recherches gobelines",           -- 6649
	DAS_BLACKWD_RITUAL      = "Les rites des Sul-Xan",          -- 6650
	DAS_BLACKWD_FROG        = "Grenouille de l'héritier",       -- 6651
	DAS_BLACKWD_LAGOON      = "Le collectionneur de trophées.", -- 6652
	DAS_BLACKWD_XANMEER     = "L'appel du ruinarque",           -- 6653
	-- Delve dailies : NPC = Deetum-Jas
	DAS_QUEST_BW_DELVE      = "Deetum-Jas",                     -- 100912
	DAS_BLACKWD_BLESS       = "La bonne bénédiction",           -- 6644
	DAS_BLACKWD_BLOODRUN    = "Tactiques clandestines",         -- 6665
	DAS_BLACKWD_BEAUTY      = "La beauté au milieu du danger",  -- 6668
	DAS_BLACKWD_CONFLICT    = "Conflit d'intérêts",             -- 6673
	DAS_BLACKWD_CHAIN       = "Briser la chaîne",               -- 6674
	DAS_BLACKWD_INSECT      = "Sauvez les insectes !",          -- 6675


	-- Southern Elsweyr
	-- World Boss dailies : NPC = Bruccius Baenius
	DAS_QUEST_SE_BOSS       = "Bruccius Baenius",               -- 91767
	DAS_SE_PARIAH           = "Paria de Gouttecroc",            -- 6376
	DAS_SE_HEAL             = "Aider les guérisseurs",          -- 6421
	DAS_SE_RICE             = "Un renégat et son riz",          -- 6422
	DAS_SE_DUST             = "De la poussière à la poussière", -- 6423
	DAS_SE_SCHOL            = "Observations érudites",          -- 6424
	DAS_SE_FLETCH           = "Suivez la flèche",               -- 6425
	-- Delve dailies : NPC = Guybert Flaubert
	DAS_QUEST_SE_DELVE      = "Guybert Flaubert",               -- 91769
	DAS_SE_TOMES            = "Les volumes des Tsaesci",        -- 6419
	DAS_SE_SWORD            = "Sources ensorcelées",            -- 6431
	DAS_SE_CANDLE           = "Consolation au clair de lune",   -- 6432
	DAS_SE_LILY             = "Les lis du souvenir",            -- 6436
	DAS_SE_MUSH             = "Champignons lunaires",           -- 6437
	DAS_SE_BLOOD            = "Une réponse de sang",            -- 6438
	-- Dragon Hunt dailies : NPC = Chizbari the Chipper
	DAS_QUEST_SE_DRAGONS    = "Chizbari l'égayée",              -- 91289
	DAS_SE_DRAGON2          = "La proie de la Garde du dragon", -- 6434
	DAS_SE_DRAGON1          = "L'Aube de la Garde du dragon",   -- 6444
	-- Dragonguard dailies : NPC = Dirge Truptor
	DAS_QUEST_SE_DELVE2     = "Oraison Truptor",                -- 91226
	DAS_SE_TUSK             = "Défense et défenses",            -- 6405
	DAS_SE_GRAVE            = "La solitude est un tombeau",     -- 6406
	DAS_SE_BONES            = "La montée des os",               -- 6428
	DAS_SE_GARD             = "À la pelle",                     -- 6429
	DAS_SE_FILE             = "File Under D",                   -- 6430
	DAS_SE_AWAK             = "Éveil brutal",                   -- 6433
}
DAS_STRINGS_LOCALE.fr = strings
for stringId, stringValue in pairs(strings) do
	ZO_CreateStringId(stringId, stringValue)
	SafeAddVersion(stringId, 2)
end
