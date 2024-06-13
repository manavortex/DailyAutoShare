DAS_STRINGS_LOCALE = DAS_STRINGS_LOCALE or {}
local strings  = {
	-- Key bindings
	DAS_SI_TOGGLE			= "Toggle hidden", --TRANSLATEME
	DAS_SI_MINIMISE			= "Toggle minimised", --TRANSLATEME

	-- GUI
	-- Drag bar button tooltips
	DAS_GUI_BTN_LOCK		= "Bloquear ventana", --TRANSLATEME
	DAS_GUI_BTN_UNLOCK		= "Desbloquear ventana", --TRANSLATEME
	DAS_GUI_BTN_HIDE		= "Ocultar DailyAutoShare", --TRANSLATEME
	DAS_GUI_BTN_REFRESH		= "Actualizar", --TRANSLATEME
	DAS_GUI_BTN_MINIMISE	= "Minimizar ventana", --TRANSLATEME
	DAS_GUI_BTN_MAXIMISE	= "Maximizar ventana", --TRANSLATEME

	-- QuestList button tooltips
	DAS_GUI_INVITE_TRUE		= "La autoinvitación está |c89FFE3activada|r", --TRANSLATEME
	DAS_GUI_INVITE_FALSE	= "La autoinvitación está |cDF6C00desactivada|r", --TRANSLATEME
	DAS_GUI_ACCEPT_TRUE		= "|c89FFE3Automatically accepting|r quest shares for dailies", --TRANSLATEME
	DAS_GUI_ACCEPT_FALSE	= "|cDF6C00Not automatically accepting|r dailies", --TRANSLATEME
	DAS_GUI_SHARE_TRUE		= "|c89FFE3Automatically sharing|r your active dailies on group member join or 'share' in group chat.\n\nRight-click to share your active quests now", --TRANSLATEME
	DAS_GUI_SHARE_FALSE		= "|cDF6C00Not automatically sharing|r your active dailies.\n\nRight-click to share anyway", --TRANSLATEME
	DAS_GUI_BTN_SPAM		= "Haz clic para publicar un anuncio en el chat de la zona", --TRANSLATEME
	DAS_GUI_BTN_SPAM_ASK	= "Haz clic para pedir sus misiones diarias abiertas o activas", --TRANSLATEME
	DAS_GUI_BTN_DONATE		= "Visit the GitHub page to voice your concerns, wishes and thanks!\n|c89FFE3— <3 manavortex and the team|r", --TRANSLATEME

	-- Quest tooltips
	DAS_GUI_SUBLIST_OPEN	= "Haz clic para abrir la lista de misiones", --TRANSLATEME
	DAS_GUI_Q_IS_DONE		= "se ha completado hoy", -- quest state 0 --TRANSLATEME
	DAS_GUI_Q_IS_OPEN		= "esta pendiente", -- quest state 1 --TRANSLATEME
	DAS_GUI_Q_IS_ACTIVE		= "esta iniciada", -- quest state 2 --TRANSLATEME
	DAS_GUI_Q_BINGO			= "\nThe bingo code is <<1>>", -- 1 is the bingo code --TRANSLATEME
	DAS_GUI_Q_TIP			= "<<1>> |c<<2>><<3>>|r<<4>>", -- 1 is Quest Name, 2 is colour, 3 is the quest state, 4 is either DAS_GUI_Q_BINGO or nothing --TRANSLATEME
	DAS_GUI_Q_PREREQ		= "|c<<2>>You need a prerequisite quest:|r\n• <<1>>", -- 1 is Quest Name, 2 is colour --TRANSLATEME
	DAS_GUI_Q_RMB_TIP		= "Haz clic con el botón derecho para ver las opciones", --TRANSLATEME

	-- Quest context menu
	DAS_GUI_CTX_SUBLIST		= "Toggle the quest list", --TRANSLATEME
	DAS_GUI_CTX_SPAM		= "Anunciar", --TRANSLATEME
	DAS_GUI_CTX_SHARE		= "Compartir", --TRANSLATEME
	DAS_GUI_CTX_TRACK		= "→ Seguir", --TRANSLATEME
	DAS_GUI_CTX_ABANDON		= "|cFF0000Abandonar|r", --TRANSLATEME
	DAS_GUI_CTX_OPEN_TRUE	= "Fijar como completada", --TRANSLATEME
	DAS_GUI_CTX_OPEN_FALSE	= "Fijar como pendiente", --TRANSLATEME

	-- Settings panel
	DAS_MENU_URI_LOC		= "https://github.com/manavortex/DailyAutoShare/issues",
	DAS_MENU_H_GENERAL		= "Configuración general",
	DAS_MENU_CB_GLOBAL		= "Configuración de toda la cuenta",
	DAS_MENU_CB_GLOBAL_TIP	= "Use the same settings for all characters?",
	DAS_MENU_CB_HIDE		= "Ocultar ventana de IU",
	DAS_MENU_CB_HIDE_NA		= "Hide in non-active zones",
	DAS_MENU_CB_HIDE_NA_TIP	= "Usually the completed dailies will be shown in the list. Check this to make them vanish.",
	-- activate menu
	DAS_MENU_CB_SUB_ENABLE	= "Activar",
	DAS_MENU_CB_SUB_HIDE	= "Ocultar",
	DAS_MENU_CB_SUB_HIDE_T	= "Hide the quests from UI List but keep sharing them",
	DAS_MENU_SM_ACT			= "Activar DailyAutoShare en...",
	DAS_MENU_SM_ACT_TIP		= "Activate or deactivate the add-on for the listed zones and activities.",
	DAS_MENU_H_ZONES		= "zonas:",
	DAS_MENU_CB_BWOOD		= "Blackwood / Bosque Negro",
	DAS_MENU_CB_CCITY		= "Clockwork City / Ciudad Mecánica",
	DAS_MENU_SM_CCITY		= "Clockwork City Options",
	DAS_MENU_CB_CC_DELV		= "La Fortaleza de Latón: cuevas",
	DAS_MENU_CB_CC_DELV_TIP	= "Quest giver is |cFFFFFF<<1>>|r in the Brass Fortress\nRequires completing the following prerequisite quests (either of):\n• <<2>>\n• <<3>>", -- 1 is DAS_QUEST_CC_NOVICE
	DAS_MENU_CB_CC_BOSS		= "La Fortaleza de Latón: jefes de mundo",
	DAS_MENU_CB_CC_BOSS_TIP	= "Quest giver is |cFFFFFF<<1>>|r in the Brass Fortress", -- 1 is DAS_QUEST_CC_ROBOT
	DAS_MENU_CB_CC_SLAG		= "El Escorial: Gathering dailies",
	DAS_MENU_CB_CC_SLAG_TIP	= "Quest giver is |cFFFFFF<<1>>|r in the Brass Fortress", -- 1 is DAS_QUEST_CC_ORC
	DAS_MENU_CB_CC_CROW		= "El Escorial: la Corte de las Plumas Negras",
	DAS_MENU_CB_CC_CROW_TIP	= "Quest giver is |cFFFFFF<<1>>|r in the Brass Fortress\nRequires progressing the zone story past the following quest:\n• <<2>>", -- 1 is DAS_QUEST_CC_CROW
	DAS_MENU_CB_CRAG		= "Craglorn",
	DAS_MENU_CB_CYRO		= "Cyrodiil — base de la Alianza",
	DAS_MENU_CB_CYRO_TIP	= "Auto-accept and turn-in support only",
	DAS_MENU_CB_DEADL		= "Fargrave & The Deadlands / Cárcava y Tierras Muertas",
	DAS_MENU_CB_FRSNG		= "Galen e Y'ffelon",
	DAS_MENU_CB_DARKB		= "Gold Coast / Costa de Oro",
	DAS_MENU_CB_THGLD		= "Hew's Bane / Perdición de Hew",
	DAS_MENU_CB_HIILE		= "High Isle & Amenos / Isla Alta y Amenos",
	DAS_MENU_CB_MURK		= "Murkmire / Lodazal Lóbrego",
	DAS_MENU_SM_MURK		= "Murkmire Options",
	DAS_MENU_CB_MM_DELV		= "Lilmoth: cuevas",
	DAS_MENU_CB_MM_DELV_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Lilmoth\nRequires completing the following prerequisite quest:\n• <<2>>", -- 1 is DAS_SLAVES_QUEST1
	DAS_MENU_CB_MM_BOSS		= "Lilmoth: jefes de mundo",
	DAS_MENU_CB_MM_BOSS_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Lilmoth\nRequires completing the following prerequisite quest:\n• <<2>>", -- 1 is DAS_SLAVES_QUEST3
	DAS_MENU_CB_MM_ROOT		= "La aldea de Susurra Raíces",
	DAS_MENU_CB_MM_ROOT_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Root-Whisper Village\nRequires completing the zone story", -- 1 is DAS_SLAVES_QUEST2
	DAS_MENU_CB_NELWR		= "Northern Elsweyr / Elsweyr Septentrional",
	DAS_MENU_CB_PIKEYS		= "The Reach / La Cuenca",
	DAS_MENU_CB_SELWR		= "Southern Elsweyr / Elsweyr Meridional",
	DAS_MENU_SM_SELWR		= "Southern Elsweyr Options",
	DAS_MENU_CB_SE_DELV		= "Senchal: cuevas",
	DAS_MENU_CB_SE_DELV_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Senchal", -- 1 is DAS_QUEST_SE_DELVE
	DAS_MENU_CB_SE_BOSS		= "Senchal: jefes de mundo",
	DAS_MENU_CB_SE_BOSS_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Senchal", -- 1 is DAS_QUEST_SE_BOSS
	DAS_MENU_CB_SE_MOON		= "Tideholm: la Nouvelle Lune",
	DAS_MENU_CB_SE_MOON_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Dragonguard Sanctum\nRequires progressing the zone story past the following quest:\n• <<2>>", -- 1 is DAS_QUEST_SE_DELVE2
	DAS_MENU_CB_ELVES		= "Summerset / Estivalia",
	DAS_MENU_CB_NECROM		= "La península Telvanni y Apocrypha",
	DAS_MENU_CB_MWIND		= "Vvardenfell / Páramo de Vvarden",
	DAS_MENU_SM_MWIND		= "Vvardenfell Options",
	DAS_MENU_CB_M_RELC		= "Los cenicios: reliquias",
	DAS_MENU_CB_M_RELC_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Ald'ruhn\nRequires completing the following prerequisite quests:\n• <<2>>\n• <<3>>", -- 1 is DAS_QUEST_M_NUMANI
	DAS_MENU_CB_M_HUNT		= "Los cenicios: cazas",
	DAS_MENU_CB_M_HUNT_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Ald'ruhn\nRequires completing the following prerequisite quests:\n• <<2>>\n• <<3>>", -- 1 is DAS_QUEST_M_ASHLANDER
	DAS_MENU_CB_M_DELV		= "Vivec: cuevas",
	DAS_MENU_CB_M_DELV_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Vivec's Hall of Justice", -- 1 is DAS_QUEST_M_TRAYLAN
	DAS_MENU_CB_M_BOSS		= "Vivec: jefes de mundo",
	DAS_MENU_CB_M_BOSS_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Vivec's Hall of Justice", -- 1 is DAS_QUEST_M_BELERU
	DAS_MENU_CB_GOTHS		= "Western Skyrim / Skyrim Occidental",
	DAS_MENU_CB_ORCS		= "Wrothgar",
	DAS_MENU_H_GUILDS		= "actividades de los gremios:",
	DAS_MENU_CB_GUILD		= "El gremio de luchadores / magos y los Intrépidos",
	DAS_MENU_SM_GUILD		= "Guild dailies options",
	DAS_MENU_CB_G_FG		= "El gremio de luchadores",
	DAS_MENU_CB_G_FG_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Alliance Capitals, inside the Fighters Guild hall",
	DAS_MENU_CB_G_FG_HIDE	= "Hide in Capitals",
	DAS_MENU_CB_G_MG		= "El gremio de magos",
	DAS_MENU_CB_G_MG_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Alliance Capitals, inside the Mages Guild hall",
	DAS_MENU_CB_G_MG_HIDE	= "Hide in Capitals",
	DAS_MENU_CB_G_UD		= "Los Intrépidos",
	DAS_MENU_CB_G_UD_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Alliance Capitals, at the Undaunted enclave",
	DAS_MENU_CB_G_UD_HIDE	= "Hide in Capitals",
	DAS_MENU_H_EVENTS		= "festivales:",
	DAS_MENU_CB_E_NL		= "La Nueva Vida",
	DAS_MENU_CB_E_NL_TIP	= "Enable New Life festival",
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
	DAS_MENU_H_POLITE		= "Throttle",
	DAS_MENU_SL_INVTIME		= "Group invite delay (in ms)",
	DAS_MENU_SL_INVTIME_TIP	= "Adjust this if you encounter disconnects when trying to create a group.\n1000 ms are one second.",
	DAS_MENU_CB_SHRTIME		= "Quest share delay (in ms)",
	DAS_MENU_CB_SHRTIME_TIP	= "Adjust this if you encounter disconnects when new group members join.\n1000 ms are one second.",
	-- misc options
	DAS_MENU_CB_H_STUFF		= "Varios",
	DAS_MENU_CB_DEBUG		= "Modo de depuración",


	-- QUEST DATA

	-- Quest names are located in the table 52420949-0 of FR.lang
	-- NPC names are located in the table 8290981-0 of FR.lang
	-- Specify NPC names with all dynamic grammar pre-applied,
	-- e.g. "La justiciar Farowël", not "justiciar Farowël^fd"


	-- Northern Elsweyr
	-- Delve dailies : NPC = Nisuzi
	DAS_QUEST_NE_DELVE      = "Nisuzi",							-- 88072
	DAS_KITTY_FLAME         = "Apagando la llama daédrica",		-- 6356
	DAS_KITTY_WIND          = "Sabiduría a los cuatro vientos",	-- 6359
	DAS_KITTY_RUINS         = "Hurgando entre las ruinas",		-- 6360
	DAS_KITTY_HUNGRY        = "El favor del Gato Hambriento",	-- 6361
	DAS_KITTY_STAMPEDE      = "La estampida de la serpiente",	-- 6362
	DAS_KITTY_TEA           = "Hojas de té enredadas",			-- 6363
	-- World Boss dailies : NPC = Ri'hirr
	DAS_QUEST_NE_BOSS       = "Ri'hirr",						-- 88139
	DAS_KITTY_SWORD         = "La espada de la serpiente",		-- 6377
	DAS_KITTY_WILY          = "El terror de los comerciantes",	-- 6378
	DAS_KITTY_NIGHTMARE     = "Una auténtica pesadilla",		-- 6379
	DAS_KITTY_DEATH         = "Otro día, otra muerte",			-- 6380
	DAS_KITTY_DUO           = "Dúo criminal",					-- 6381
	DAS_KITTY_SENCHE        = "El senche de la decadencia",		-- 6382
	-- Dragon Hunt dailies : NPC = Battlereeve Tanerline
	DAS_QUEST_TANERLIN      = "Alta oficial Tanerline",			-- 88741
	DAS_KITTY_DRAGON        = "Cacería de dragones",			-- 6357


	-- Murkmire
	-- World Boss dailies : NPC = Bolu
	DAS_SLAVES_QUEST3       = "Bolu",						-- 85085
	DAS_SLAVES_BOSS_1       = "Macabras circunstancias",	-- 6233
	DAS_SLAVES_BOSS_5       = "Viejas planta",				-- 6234
	DAS_SLAVES_BOSS_3       = "Baratijas antiguas",			-- 6235
	DAS_SLAVES_BOSS_2       = "Macabras expectativas",		-- 6236
	DAS_SLAVES_BOSS_6       = "Recuerdos de tumbas",		-- 6237
	DAS_SLAVES_BOSS_4       = "Viejos enemigos",			-- 6238
	-- Delve dailies : NPC = Varo Hosidias
	DAS_SLAVES_QUEST1       = "Varo Hosidias",				-- 85212
	DAS_SLAVES_DELVE_6      = "El peso de las palabras",	-- 6247
	DAS_SLAVES_DELVE_3      = "Viejos pergaminos",			-- 6248
	DAS_SLAVES_DELVE_1      = "Armaduras antiguas",			-- 6253
	DAS_SLAVES_DELVE_4      = "Velas sagradas",				-- 6264
	DAS_SLAVES_DELVE_5      = "Herramientas de la masacre",	-- 6267
	DAS_SLAVES_DELVE_2      = "Un silencio enterrado",		-- 6268
	-- Root-Whisper dailies : NPC = Tuwul
	DAS_SLAVES_QUEST2       = "Tuwul",						-- 86275
	DAS_SLAVES_ROOT_1       = "El aloe curativo",			-- 6286
	DAS_SLAVES_ROOT_4       = "Unos hongos nutritivos",		-- 6287
	DAS_SLAVES_ROOT_2       = "Emisarios cobardes",			-- 6288
	DAS_SLAVES_ROOT_5       = "Ofrendas escondidas",		-- 6289
	DAS_SLAVES_ROOT_3       = "Pieles protectoras",			-- 6290


	-- Summerset
	-- Delve dailies : NPC = Justiciar Tanorian
	DAS_ELF_PILGR           = "Fin de la peregrinación",		-- 6152
	DAS_ELF_LIGHT           = "Cuando se apaga la luz",			-- 6156
	DAS_ELF_ROSE            = "La belleza de una rosa",			-- 6157
	DAS_ELF_RELIC           = "La carrera de las reliquias",	-- 6158
	DAS_ELF_SERPE           = "Masacre de serpientes",			-- 6159
	DAS_ELF_MEMO            = "Pérdida de memoria",				-- 6160
	-- World Boss dailies : NPC = Justiciar Farowel
	DAS_ELF_QUEEN           = "El mar embravecido",				-- 6082
	DAS_ELF_WILD            = "Domando lo salvaje",				-- 6083
	DAS_ELF_ALCHE           = "El alquimista abisal",			-- 6084
	DAS_ELF_GRIFFIN         = "Aves del mismo corral",			-- 6085
	DAS_ELF_GRAVE           = "Nunca olvidado",					-- 6086
	DAS_ELF_SNAKE           = "Encallado",						-- 6087
	-- Geyser dailies : NPC = Battlereeve Tanerline
	DAS_ELF_GEYSER          = "El hundimiento de Estivalia",	-- 6166


	-- Clockwork City
	-- Brass Fortress dailies : NPC = Clockwork Facilitator
	DAS_CLOCK_IMP           = "Incitando al Imperfecto",			-- 6076
	DAS_CLOCK_FOE           = "Un enemigo de finas plumas",			-- 6077
	-- Slag Town dailies : NPC = Razgurug
	DAS_CLOCK_CRAFT_WOOD    = "Combustible para nuestros fuegos",	-- 6037
	DAS_CLOCK_CRAFT_SMITH   = "Pulverización diaria",				-- 6038
	DAS_CLOCK_CRAFT_CLOTH   = "Cabos sueltos",						-- 6039
	DAS_CLOCK_CRAFT_WATER   = "Una solución pegajosa",				-- 6040
	DAS_CLOCK_CRAFT_RUNE    = "Acumulación encantada",				-- 6041
	DAS_CLOCK_CRAFT_ALCH    = "Un trago amargo",					-- 6042
	-- Apostle dailies : NPC = Novice Holli
	DAS_CLOCK_DELVE_MISP    = "Una sombra perdida",					-- 6073
	DAS_CLOCK_DELVE_AGAI    = "De nuevo en las sombras",			-- 6079
	DAS_CLOCK_DELVE_MALF    = "Una avería sombría",					-- 6080
	DAS_CLOCK_DELVE_FANS    = "Engrasado de ventiladores",			-- 6081
	DAS_CLOCK_DELVE_FILT    = "Cambio de filtros",					-- 6088
	DAS_CLOCK_DELVE_COMM    = "Reemplazamiento de conmutadores",	-- 6089
	-- Blackfeather Court dailies : NPC = Bursar of Tributes
	DAS_CLOCK_CROW_NIBB     = "Bocaditos y piquitos",				-- 6070
	DAS_CLOCK_CROW_MORS     = "Algo de picoteo",					-- 6071
	DAS_CLOCK_CROW_RESP     = "Una cuestión de respeto",			-- 6072
	DAS_CLOCK_CROW_TRIB     = "Una cuestión de tributos",			-- 6106
	DAS_CLOCK_CROW_LEIS     = "Una cuestión de ocio",				-- 6107
	DAS_CLOCK_CROW_GLIT     = "Brillos y destellos",				-- 6110


	-- Vvardenfell / Morrowind
	-- Ashlander relic dailies : NPC = Numani-Rasi
	DAS_LIST_M_RELIC        = "Reliquias de ",
	DAS_M_REL_YASAM         = "Reliquias de Yasammidan",		-- 5924
	DAS_M_REL_ASSAR         = "Reliquias de Assarnatamat",      -- 5925
	DAS_M_REL_MAELK         = "Reliquias de Maelkashishi",		-- 5926
	DAS_M_REL_ASHUR         = "Reliquias de Ashurnabitashpi",	-- 5927
	DAS_M_REL_EBERN         = "Reliquias de Ebernanit",			-- 5928
	DAS_M_REL_DUSHA         = "Reliquias de Dushariran",		-- 5929
	DAS_M_REL_ASHAL         = "Reliquias de Ashalmawia",		-- 5930
	-- Ashlander hunt dailies : NPC = Huntmaster Sorim-Nakar
	DAS_M_HUNT_ZEXXI        = "Caza del Gran Zexxin",			-- 5907
	DAS_M_HUNT_TARRA        = "Caza de Tarra-Suj",				-- 5908
	DAS_M_HUNT_SVEET        = "Caza de Sveeth el Doblado",		-- 5909
	DAS_M_HUNT_JAGGE        = "Caza de la Madre Pinzafilada.",	-- 5910
	DAS_M_HUNT_EATER        = "Caza de Come Cenizas",			-- 5911
	DAS_M_HUNT_STOMP        = "Caza del Viejo Pisotones",		-- 5912
	DAS_M_HUNT_RAZOR        = "Caza del Rey Colmillo Cortante",	-- 5913
	-- World Boss dailies : NPC = Beleru Omoril
	DAS_M_BOSS_SWARM        = "Reduciendo el enjambre",			-- 5865
	DAS_M_BOSS_NILTH        = "Libre de bueyes",				-- 5866
	DAS_M_BOSS_SALOT        = "La maldición de los Salothan",	-- 5904
	DAS_M_BOSS_SIREN        = "Cantos de sirena",				-- 5906
	DAS_M_BOSS_APPRE        = "La aprendiz ansiosa",			-- 5916
	DAS_M_BOSS_WUYWU        = "Hambre devoradora",				-- 5918
	-- Delve dailies : NPC = Traylan Omoril
	DAS_M_DELVE_TRIBA       = "Problemas tribales",				-- 5915
	DAS_M_DELVE_TAXES       = "Deducción de impuestos",			-- 5934
	DAS_M_DELVE_DAEDR       = "Perturbaciones daédricas",		-- 5956
	DAS_M_DELVE_SYNDI       = "Sindicato inquieto",				-- 5958
	DAS_M_DELVE_MISIN       = "Replantando información",		-- 5961
	DAS_M_DELVE_KWAMA       = "Problema de kwama",				-- 5962


	-- Wrothgar / Orsinium
	-- Delve dailies : NPC = Guruzug
	DAS_W_WEREWOLVES        = "Negocio de pieles",				-- 5504
	DAS_W_THAT_OTHER        = "Fuego en el fuerte",				-- 5505
	DAS_W_HARPIES           = "Un desayuno muy raro",			-- 5507
	DAS_W_DWEMER            = "Partes del todo",				-- 5509
	DAS_W_DURZOGS           = "Llenar la panza",				-- 5514
	DAS_W_SPIRITS           = "Espíritus libres",				-- 5515
	-- World Boss dailies : NPC = Arzorag
	DAS_W_POACHERS          = "Carne para las masas",			-- 5518
	DAS_W_OGRE              = "Rescate académico",				-- 5519
	DAS_W_CORI              = "Regalos de la naturaleza",		-- 5521
	DAS_W_DOLMEN            = "La herejía de la ignorancia",	-- 5522
	DAS_W_NYZ               = "Nieve y vapor",					-- 5523
	DAS_W_EDU               = "Hedor a juego sucio",			-- 5524


	-- Gold coast / Dark Brotherhood
	-- Delve dailies : NPC = Bounty Board
	DAS_DB_EVIL             = "Un mal enterrado",			-- 5603
	DAS_DB_GOOD             = "El bien común",				-- 5604
	-- World Boss dailies : NPC = Bounty Board
	DAS_DB_MINO             = "Sombras amenazantes",		-- 5605
	DAS_DB_ARENA            = "El rugido de la multitud",	-- 5606


	-- Hew's Bane / Thieves Guild
	-- Heists
	DAS_HEWS_HDEAD          = "Atraco: Salas del Sepulcro",	-- 5536
	DAS_HEWS_HHIDE          = "Atraco: El Escondite",		-- 5572
	DAS_HEWS_HUNDE          = "Atraco: Sepulcro Soterrado",	-- 5573
	DAS_HEWS_HGLIT          = "Atraco: Gruta Destellante",	-- 5575
	DAS_HEWS_HSECL          = "Atraco: Cloacas Recónditas",	-- 5577
	-- World Boss dailies
	DAS_HEWS_KOEST          = "Las perlas perdidas",		-- 5586
	DAS_HEWS_THRAL          = "Cala de los Esclavos",		-- 5587
	-- Delve dailies
	DAS_HEWS_BAHRA          = "Recuerdos de la infancia",	-- 5588
	DAS_HEWS_SHARK          = "La pipa del marinero",		-- 5589
	DAS_QUEST_TG_HEIST      = "Tablón de atracos",			-- 87370069-0-20019
	DAS_QUEST_TG_REACQ      = "Tablón de readquisiciones",	-- 87370069-0-20116
	DAS_QUEST_TG_FAREN      = "Fa'ren-dar",					-- 69599
	DAS_QUEST_TG_SPENC      = "Spencer Rye",				-- 69854


	-- New Life Festival
	DAS_NL_EASTMARCH        = "Zambullida del Oso de las Nieves",			-- 5811
	DAS_NL_REAPERSMARCH     = "La prueba de la astucia de cinco garras",	-- 5834
	DAS_NL_STONEFALLS       = "Danza paso de lava",							-- 5837
	DAS_NL_AURIDON          = "Alegría y Bolas de Barro",					-- 5838
	DAS_NL_ALIKR            = "Carrera de las Almenaras",					-- 5839
	DAS_NL_STORMHAVEN       = "Desafío del Encanto del Palacio",			-- 5845
	DAS_NL_GRAHTWOOD        = "Peregrinaje de los huérfanos de guerra",		-- 5852
	DAS_NL_SHADOWFEN        = "Festín de la Profusa Pesca",					-- 5855
	DAS_NL_BETNIKH          = "Juerga de Diente de Piedra",					-- 5856
	-- Quest NPCs
	DAS_QUEST_NL_BREDA      = "Breda",										-- 73855
	DAS_QUEST_NL_LIZARD     = "Corazón Amable",								-- 74198
	DAS_QUEST_NL_ORC        = "La matriarca Borbuga",						-- 74207
	DAS_QUEST_NL_CAT        = "Tumira",										-- 74066


	-- Guild dailies
	DAS_GUILD_ANCHORS       = "Áncoras oscuras en ",
	DAS_GUILD_MADNESS       = "Locura en ",
	DAS_FG_ALIKR            = "Áncoras oscuras en el desierto de Alik'r",		-- 5786
	DAS_FG_AURID            = "Áncoras oscuras en Auridon",						-- 5793
	DAS_FG_BANGK            = "Áncoras oscuras en Bangkorai",					-- 5787
	DAS_FG_DESHA            = "Áncoras oscuras en Deshaan",						-- 5789
	DAS_FG_EASTM            = "Áncoras oscuras en la Marca Oriental",			-- 5791
	DAS_FG_GLENU            = "Áncoras oscuras en Glenumbra",					-- 5833
	DAS_FG_GRAHT            = "Áncoras oscuras en Bosque Graht",				-- 5794
	DAS_FG_GREEN            = "Áncoras oscuras en Sombra Verde",				-- 5796
	DAS_FG_MALAB            = "Áncoras oscuras en Malabal Tor",					-- 5795
	DAS_FG_REAPE            = "Áncoras oscuras en la Marca del Segador",		-- 5797
	DAS_FG_RIFT             = "Áncoras oscuras en La Grieta",					-- 5792
	DAS_FG_RIVEN            = "Áncoras oscuras en Cima Rasgada",				-- 5785
	DAS_FG_SHADO            = "Áncoras oscuras en el Pantano de las Sombras",	-- 5790
	DAS_FG_STONE            = "Áncoras oscuras en Páramo de Piedra",			-- 5788
	DAS_FG_STORM            = "Áncoras oscuras en Refugio de la Tormenta",		-- 5784
	DAS_MG_ALIKR            = "Locura en el desierto de Alik'r",				-- 5814
	DAS_MG_AURID            = "Locura en Auridon",								-- 5816
	DAS_MG_BANGK            = "Locura en Bangkorai",							-- 5818
	DAS_MG_DESHA            = "Locura en Deshaan",								-- 5819
	DAS_MG_EASTM            = "Locura en la Marca Oriental",					-- 5820
	DAS_MG_GLENU            = "Locura en Glenumbra",							-- 5822
	DAS_MG_GRAHT            = "Locura en Bosque Graht",							-- 5823
	DAS_MG_GREEN            = "Locura en Sombra Verde",							-- 5824
	DAS_MG_MALAB            = "Locura en Malabal Tor",							-- 5825
	DAS_MG_REAPE            = "Locura en la Marca del Segador",					-- 5826
	DAS_MG_RIFT             = "Locura en La Grieta",							-- 5831
	DAS_MG_RIVEN            = "Locura en Cima Rasgada",							-- 5827
	DAS_MG_SHADO            = "Locura en el Pantano de las Sombras",			-- 5828
	DAS_MG_STONE            = "Locura en Páramo de Piedra",						-- 5829
	DAS_MG_STORM            = "Locura en Refugio de la Tormenta",				-- 5830
	DAS_UD_ALIKR            = "Perlas fundidas del desierto de Alik'r",         -- 5745
	DAS_UD_AURID            = "Oscuridad velada en Auridon",					-- 5798
	DAS_UD_BANGK            = "Arsenal antiguo en Bangkorai",					-- 5733
	DAS_UD_DESHA            = "Protectores ancestrales en Deshaan",				-- 5735
	DAS_UD_EASTM            = "Intriga glacial en la Marca Oriental",			-- 5779
	DAS_UD_GLENU            = "Saqueo de los Grajos Rojos en Glenumbra",		-- 5739
	DAS_UD_GRAHT            = "Baratijas ayleid en Bosque Graht",				-- 5738
	DAS_UD_GREEN            = "Justicia culinaria en Sombra Verde",				-- 5853
	DAS_UD_MALAB            = "Trampas espirituales en Malabal Tor",			-- 5734
	DAS_UD_REAPE            = "Robo de mascotas en la Marca del Segador",		-- 5744
	DAS_UD_RIFT             = "Piras encendidas en La Grieta",					-- 5802
	DAS_UD_RIVEN            = "La oscuridad florece en Cima Rasgada",			-- 5808
	DAS_UD_SHADO            = "Intercambio en el Pantano de las Sombras",		-- 5778
	DAS_UD_STONE            = "Reliquias enanas en Páramo de Piedra",			-- 5737
	DAS_UD_STORM            = "Baratijas malditas en Refugio de la Tormenta",	-- 5800


	-- Craglorn
	-- lower
	DAS_CRAG_HERMY          = "El Archivo del Buscador",		-- 5749
	DAS_CRAG_SHADA          = "La ciudad caída de Shada",		-- 5750
	DAS_CRAG_TUWHACCA       = "Las pruebas de Rahni'Za",		-- 5751
	DAS_CRAG_NEREID         = "Aguas turbias",					-- 5754
	DAS_CRAG_ELINHIR        = "Poder supremo",					-- 5755
	DAS_CRAG_SARA           = "Masa crítica",					-- 5756
	DAS_CRAG_NEDE           = "El motivo por el que luchamos",	-- 5762
	-- upper
	DAS_CRAG_HITMAN         = "Los verdaderos colmillos",		-- 5764
	DAS_CRAG_KIDNAP         = "Capturados vivos",				-- 5765
	DAS_CRAG_SCALES         = "Hierro y escamas",				-- 5766
	DAS_CRAG_NIRNCRUX       = "La sangre de Nirn",				-- 5767
	DAS_CRAG_NECRO          = "Las almas de los traicionados",	-- 5770
	DAS_CRAG_DUNGEON        = "En libertad",					-- 5772
	DAS_CRAG_WORLDTRIP      = "El pasaje gris",					-- 5777
	-- quest npcs
	DAS_QUEST_CRA_SARA      = "Sara Benele",					-- 72619
	DAS_QUEST_CRA_GREBA     = "Greban",							-- 72367
	DAS_QUEST_CRA_NHALA     = "Nhalan",							-- 72629
	DAS_QUEST_CRA_RALAI     = "Ralai",							-- 72554
	DAS_QUEST_CRA_IBRUL     = "Ibrula",							-- 72469
	DAS_QUEST_CRA_FIGHT     = "Pelea Con La Cola",				-- 72582
	DAS_QUEST_CRA_FADA      = "Fada at-Glina",					-- 72436
	DAS_QUEST_CRA_NENDI     = "Nendirume",						-- 73118
	DAS_QUEST_CRA_GRAYP     = "El pasaje gris",					-- 87370069-0-21018
	DAS_QUEST_CRA_LASHB     = "Lashburr Rompedientes",			-- 72963
	DAS_QUEST_CRA_CRUSA     = "Cruzado Dalamar",				-- 73366
	DAS_QUEST_CRA_SCATT     = "Hojas Dispersas",				-- 72962
	DAS_QUEST_CRA_SAFA      = "Safa al-Satakalaam",				-- 72961
	DAS_QUEST_CRA_MERED     = "Mederic Vyger",					-- 73444
	DAS_QUEST_CRA_SALIM     = "Sali'ma",						-- 72541
	DAS_QUEST_CRA_TISHI     = "Tishi",							-- 72539
	DAS_QUEST_CRA_MINER     = "Minerva Lauzon",					-- 72581
	DAS_QUEST_CRA_MASTE     = "El maestro Timen",				-- 72267
	DAS_QUEST_CRA_GRAYM     = "El menhir gris",					-- 87370069-0-21024


	-- Quest NPC names
	DAS_QUEST_M_ASHLANDER   = "El maestro cazador Sorim Nakar",				-- 76010
	DAS_QUEST_M_RIVYN       = "El maestro de batalla Rivyn",				-- 76622
	DAS_QUEST_CC_ROBOT      = "Facilitadora mecánica",						-- 79225
	DAS_QUEST_CC_CROW       = "Tesorero de los Tributos",					-- 79171
	DAS_QUEST_CC_NOVICE     = "Principiante Holli",							-- 79220
	DAS_QUEST_CC_THISTLE    = "Saltadora de Cardos",						-- 78637
	DAS_QUEST_CC_DARO       = "Adjunto Daro",								-- 78653
	DAS_QUEST_CC_TILELLE    = "Iniciada Tilelle",							-- 79379
	DAS_QUEST_W_OUFA        = "La sargento Oufa",							-- 59290
	DAS_QUEST_W_USHANG      = "Ushang el Indomable",						-- 67144
	DAS_QUEST_W_BIRKHU      = "Birkhu el Audaz",							-- 67184
	DAS_QUEST_DB_ARVINA     = "Clérigo Arvinia",							-- 70157
	DAS_QUEST_DB_BOUNTY     = "Tablón de misiones de cazarrecompensas",		-- 87370069-0-20444
	DAS_QUEST_CAP_CARDEA    = "Cardea Galo",								-- 74040
	DAS_QUEST_CAP_ALVUR     = "Alvur Baren",								-- 73953
	DAS_QUEST_CAP_BOLGRUL   = "Bolgrul",									-- 71827
	DAS_QUEST_SS_TANO       = "Justicial Tanorian",							-- 82013
	DAS_QUEST_SS_FARO       = "Justicial Farowel",							-- 82121
	DAS_QUEST_SS_TANE       = "Alta oficial Tanerline",						-- 82289
	DAS_QUEST_CRY_BATTLE    = "Tablón de misiones de batalla",				-- 87370069-0-11718
	DAS_QUEST_CRY_BOUNTY    = "Tablón de misiones de cazarrecompensas",		-- 87370069-0-11727
	DAS_QUEST_CRY_SCOUT     = "Tablón de misiones de exploración",			-- 87370069-0-10045
	DAS_QUEST_CRY_WARFR     = "Tablón de misiones del frente de batalla",	-- 87370069-0-11719
	DAS_QUEST_DB_LARONEN    = "Laronen",									-- 70175
	DAS_QUEST_DB_FINIA      = "Finia Sele",									-- 70185
	DAS_QUEST_DB_CODUS      = "Codo ap Dugal",								-- 70197
	DAS_QUEST_W_NEDNOR      = "Nednor",										-- 59374
	DAS_QUEST_W_THAZEK      = "Thazeg",										-- 67076
	DAS_QUEST_W_ARUSHNA     = "Arushna",									-- 59532
	DAS_QUEST_W_LILYAMEH    = "Lilyameh",									-- 67178
	DAS_QUEST_W_BAGRUBESH   = "Bagrugbesh",									-- 67119
	DAS_QUEST_W_CIRANTILLE  = "Cirantille",									-- 67123
	DAS_QUEST_W_MENNINIA    = "Menninia",									-- 67021
	DAS_QUEST_W_SONOLIA     = "Sonolia Muspidius",							-- 67193
	DAS_QUEST_W_RAYNOR      = "Raynor Vanos",								-- 65557
	DAS_QUEST_M_TRAYLAN     = "Traylan Omoril",								-- 74468
	DAS_QUEST_M_BELERU      = "Beleru Omoril",								-- 74469
	DAS_QUEST_M_NUMANI      = "Numani-Rasi",								-- 76157
	DAS_QUEST_M_NARA        = "Nara Varam",									-- 76059
	DAS_QUEST_M_TIRVINA     = "Tirvina Avani",								-- 76077
	DAS_QUEST_M_DINOR       = "Dinor Salvi",								-- 74475
	DAS_QUEST_M_BRAVOSI     = "Bravosi Felder",								-- 74513
	DAS_QUEST_M_IVULEN      = "Ivulen Andromo",								-- 75960
	DAS_QUEST_M_SAVILE      = "Savile Alam",								-- 76726
	DAS_QUEST_M_KYLIA       = "Kylia Thando",								-- 76765
	DAS_QUEST_M_EVOS        = "Evos Hledas",								-- 76747
	DAS_QUEST_M_ALVES       = "Alves Droth",								-- 76382
	DAS_QUEST_M_DREDASE     = "Dredase-Hlarar",								-- 76024
	DAS_QUEST_M_VORAR       = "Vorar Vendu",								-- 76730
	DAS_QUEST_M_VALGA       = "Valga Celado",								-- 75969
	DAS_QUEST_CC_ORC        = "Razgurug",									-- 78634
	DAS_QUEST_CC_COOK       = "Aveberl Tremouille",							-- 78643
	DAS_QUEST_CC_MINDORA    = "Mindora",									-- 78642
	DAS_QUEST_CC_NJORD      = "Njordemar",									-- 78641
	DAS_QUEST_CC_IGMUND     = "Igmund",										-- 78905
	DAS_QUEST_W_GURUZUG     = "Guruzug",									-- 67019
	DAS_QUEST_W_ARZORAG     = "Arzorag",									-- 67018


	-- Telvanni Peninsula
	-- World Boss dailies, NPC = Ordinator Nelyn
	DAS_QUEST_TP_BOSS		= "Ordenante Nelyn",			-- 113595
	DAS_NECROM_REENA		= "Recreación fallida",			-- 7039
	DAS_NECROM_TRACK		= "Tras una pesadilla",			-- 7040
	DAS_NECROM_DEVOU		= "El devorador de sueños",		-- 7041
	DAS_NECROM_ANCIE		= "Omnisciencia antigua",		-- 7042
	DAS_NECROM_KNOWL		= "El conocimiento es poder",	-- 7043
	DAS_NECROM_BREAK		= "Rompiendo cadenas",			-- 7044
	-- Exploration dailies, NPC = Ordinator Tilena
	DAS_QUEST_TP_EXPL		= "Ordenante Tilena",		-- 113454
	DAS_NECROM_EGGRA		= "Saqueador de huevos",		-- 7033
	DAS_NECROM_SNATC		= "Robo con fuga",				-- 7034
	DAS_NECROM_BOUND		= "Encuadernado en secreto",	-- 7035
	DAS_NECROM_SECRR		= "Secretos recuperados",		-- 7036
	DAS_NECROM_SECRP		= "Protección de secretos",		-- 7037
	DAS_NECROM_MANIF		= "Manifiesto de esperanza",	-- 7038
	-- Bastion Nymic dailies : NPC = Ordinator Tandasea
	DAS_QUEST_TP_WEVT		= "Ordenante Tandasea",		-- 114895 & 116442
	DAS_NECROM_NYMIC		= "Bastión Nímico",				-- 7013 & 7056 & 7057 & 7058


	-- Galen
	-- World Boss dailies, NPC = Druid Gastoc
	DAS_QUEST_FS_BOSS		= "El druida Gastoc", -- 111155
	DAS_MNRCA_RECOV			= "Reliquias recuperadas", -- 6890
	DAS_MNRCA_THREE			= "Enfoque a tres bandas", -- 6891
	DAS_MNRCA_SHRIN			= "Santuarios en terreno inestable", -- 6892
	DAS_MNRCA_SUNFL			= "Aguante de girasol", -- 6878
	DAS_MNRCA_WAILI			= "Los lamentos del bosque", -- 6881
	DAS_MNRCA_MOTHS			= "El estudio sobre la polilla", -- 6889
	-- Exploration dailies, NPC = Juline Courcelles
	DAS_QUEST_FS_EXPL		= "Juline Courcelles", -- 111153
	DAS_MNRCA_RADIA			= "Recuerdos radiantes", -- 6883
	DAS_MNRCA_VOLCA			= "Virtuosismo volcánico", -- 6884
	DAS_MNRCA_CRITT			= "Captura de criaturas", -- 6885
	DAS_MNRCA_FLOWE			= "Entusiasta de las flores", -- 6886
	DAS_MNRCA_HELPF			= "Carteles útiles", -- 6887
	DAS_MNRCA_MARKI			= "Señalizando el camino", -- 6888
	-- Volcanic Vent dailies, NPC = Druid Aishabeh
	DAS_QUEST_FS_VENT		= "La druida Aishabeh", -- 111621
	DAS_MNRCA_VENTS			= "Peligro inminente", -- 6899 & 6901


	-- High Isle
	-- World Boss dailies, NPC = Parisse Plouff
	DAS_QUEST_HI_BOSS		= "Parisse Plouff",					-- 106878
	DAS_IBIZA_AVARI			= "Avaricia de la Marea Ancestral",	-- 6803
	DAS_IBIZA_SABLE			= "El Caballero Sable",				-- 6807
	DAS_IBIZA_WILDH			= "Ira de Cuerno Salvaje",		-- 6808
	DAS_IBIZA_SERPE			= "La Invocadora de Serpientes",	-- 6816
	DAS_IBIZA_ASCEN			= "Sombras ascendentes",			-- 6821
	DAS_IBIZA_SPECI			= "Un reactivo especial",			-- 6822
	-- Exploration dailies, NPC = Wayllod
	DAS_QUEST_HI_EXPL		= "Wayllod",						-- 106879
	DAS_IBIZA_ARCAN			= "Investigación arcana",			-- 6809
	DAS_IBIZA_FINAL			= "Paz final",						-- 6805
	DAS_IBIZA_SEEKA			= "Buscar y destruir",				-- 6815
	DAS_IBIZA_PRISO			= "Problemas carcelarios",			-- 6818
	DAS_IBIZA_PIRAT			= "Problemas de piratas",			-- 6825
	DAS_IBIZA_DRUID			= "Investigación druídica",			-- 6826
	-- Volcanic Vent dailies : NPC = Druid Peeska
	DAS_QUEST_HI_VENT		= "La druida Peeska",				-- 108335
	DAS_IBIZA_VENTS			= "La amenaza del respiradero",		-- 6812 & 6813


	-- Fargrave
	-- World Boss dailies, NPC = Vaveli Indavel
	DAS_QUEST_DL_BOSS		= "Vaveli Indavel",								-- 104381
	DAS_MDAG_DANGE			= "Un asunto peligroso",						-- 6716
	DAS_MDAG_MINDS			= "El ojo de la mente",							-- 6717
	DAS_MDAG_UNMAK			= "El botín del Deshacedor",					-- 6718
	DAS_MDAG_CAREL			= "Contaminación descuidada",					-- 6719
	DAS_MDAG_RETRI			= "Recuperación fallida",						-- 6720
	DAS_MDAG_PARAL			= "Una lección paralizante",					-- 6721
	-- Exploration dailies, NPC = Luna Beriel
	DAS_QUEST_DL_EXPL		= "Luna Beriel",								-- 104378
	DAS_MDAG_PROPA			= "Erradicación de la propaganda",				-- 6710
	DAS_MDAG_BRAND			= "Las reliquias del Reformatorio del Fierro",	-- 6711
	DAS_MDAG_FORGO			= "Ajuar funerario olvidado",					-- 6712
	DAS_MDAG_FLOWE			= "Las flores de la Locura",					-- 6713
	DAS_MDAG_CLAND			= "Comunicaciones clandestinas",				-- 6714
	DAS_MDAG_DISCR			= "Una recogida discreta",						-- 6715


	-- Blackwood
	-- World Boss dailies : NPC = Brita Silanus
	DAS_QUEST_BW_BOSS       = "Britta Silano",                 -- 100913
	DAS_BLACKWD_EXCAV       = "La leyenda del hombre toro",  -- 6645
	DAS_BLACKWD_TOAD        = "Investigación de trasgos",           -- 6649
	DAS_BLACKWD_RITUAL      = "Ritos de los Sul-Xan",          -- 6650
	DAS_BLACKWD_FROG        = "Un reino de sapos",       -- 6651
	DAS_BLACKWD_LAGOON      = "El Coleccionista de Trofeos", -- 6652
	DAS_BLACKWD_XANMEER     = "Llamada del ruinach",           -- 6653
	-- Delve dailies : NPC = Deetum-Jas
	DAS_QUEST_BW_DELVE      = "Deetum-Jas",                     -- 100912
	DAS_BLACKWD_BLESS       = "La buena bendición",           -- 6644
	DAS_BLACKWD_BLOODRUN    = "Tácticas sombrías",         -- 6665
	DAS_BLACKWD_BEAUTY      = "Belleza entre el peligro",  -- 6668
	DAS_BLACKWD_CONFLICT    = "Conflicto de intereses",             -- 6673
	DAS_BLACKWD_CHAIN       = "Rompiendo cadenas",               -- 6674
	DAS_BLACKWD_INSECT      = "Salvar a los insectos",          -- 6675


	-- The Reach, aye
	-- World Boss dailies : NPC = Gwenyfe, aye
	DAS_QUEST_MK_BOSS		= "Gwenyfe",							-- 97856
	DAS_PIKEYS_NAMIR		= "Las perversiones de Namira",			-- 6556
	DAS_PIKEYS_NOTES		= "Notas del vacío",					-- 6581
	DAS_PIKEYS_RUPTU		= "Fisuras en la Cuenca",				-- 6582
	DAS_PIKEYS_SCHOL		= "La petición de un erudito",			-- 6583
	DAS_PIKEYS_GUIDE		= "Guías de las profundidades",			-- 6584
	DAS_PIKEYS_TREAS		= "Tesoros abandonados",				-- 6585
	-- Delve dailies : NPC = Bralthahawn, aye
	DAS_QUEST_MK_DELVE		= "Bralthahawn",						-- 97855
	DAS_PIKEYS_TALIS		= "Los talismanes salvajes",			-- 6557
	DAS_PIKEYS_TAINT		= "El corazón de espino corrompido",	-- 6567
	DAS_PIKEYS_WITCH		= "Lo suyo es nuestro",					-- 6569
	DAS_PIKEYS_MAGIC		= "Micología mágica",					-- 6571
	DAS_PIKEYS_CONTA		= "Una extraña contaminación",			-- 6572
	DAS_PIKEYS_MENAC		= "Amenaza sin eclosionar",				-- 6573
	-- Wayward Guardians dailies : NPC = Ardanir, aye
	DAS_QUEST_MK_COURIER	= "Ardanir",							-- 99601
	DAS_PIKEYS_REMNA		= "Remanentes de Pueblo Profundo",		-- 6600
	DAS_PIKEYS_BURNA		= "Quemar el mal",						-- 6601
	DAS_PIKEYS_LIGHT		= "La luz de Arkthzand",				-- 6602
	DAS_PIKEYS_ALONE		= "Solo en la oscuridad",				-- 6603
	DAS_PIKEYS_DEFEN		= "Defensores de la Cuenca",			-- 6604
	DAS_PIKEYS_NIGHT		= "El lenguaje de la noche",			-- 6605
	DAS_PIKEYS_SHRIN		= "El santuario perdido",				-- 6606
	-- Harrowstorm dailies : NPC = Nelldena, aye
	DAS_QUEST_MK_HRWSTMS	= "Nelldena",							-- 97901
	DAS_PIKEYS_STORM		= "Basta de tormentas segadoras",		-- 6558 & 6559


	-- Western Skyrim
	-- World Boss dailies : NPC = Hidaver
	DAS_QUEST_WS_BOSS		= "Hidaver",							-- 94736
	DAS_GOTHS_LOSTA			= "Perdido a lo largo de la orilla",	-- 6509
	DAS_GOTHS_MOONL			= "Rapto a la luz de la luna",			-- 6517
	DAS_GOTHS_CIRCL			= "Círculo de tramposos",				-- 6518
	DAS_GOTHS_MOTHE			= "La Madre de las Sombras",			-- 6519
	DAS_GOTHS_FEAST			= "Festín en las sombras",				-- 6526
	DAS_GOTHS_PROBL			= "Crecimiento problemático",			-- 6527
	-- Delve dailies : NPC = Tinzen
	DAS_QUEST_WS_DELVE		= "Tinzen",								-- 94414
	DAS_GOTHS_STREN			= "La fuerza de los gigantes",			-- 6493
	DAS_GOTHS_TRAIL			= "Una pista que se enfría",			-- 6494
	DAS_GOTHS_PRESE			= "La preservación de la vida",			-- 6495
	DAS_GOTHS_PRECI			= "Preciada corteza",					-- 6520
	DAS_GOTHS_DWEME			= "Desmontaje dwemeri",					-- 6523
	DAS_GOTHS_SPIRI			= "Liberación espiritual",				-- 6524
	-- Harrowstorm dailies : NPC = Swordthane Jylta
	DAS_QUEST_WS_HRWSTMS	= "Thane de espada Jylta",				-- 95442
	DAS_GOTHS_STORM			= "Alto a las tormentas",				-- 6512 & 6528

	-- West Weald
	-- World Boss dailies, NPC = Teniente Agrance
	DAS_QUEST_WW_BOSS		= "Teniente Agrance",		-- 117862
	DAS_WWEALD_SPINN		= "Spinning Out",       	-- 7109
	DAS_WWEALD_FATEE		= "Fate-Eater",         	-- 7116
	DAS_WWEALD_TRAIN		= "Campamento de adiestramiento",		-- 7117
	DAS_WWEALD_BALEF		= "Baleful Bluffs",     	-- 7118
	DAS_WWEALD_RECOL		= "Recollection Rendezvous",	-- 7119
	DAS_WWEALD_HAZAR		= "Hazardous Waters",   	-- 7120
	-- Exploration dailies, NPC = Comandante Salerius
	DAS_QUEST_WW_EXPL		= "Comandante Salerius",	-- 117861
	DAS_WWEALD_VENOM		= "Caza de veneno",		-- 7108
	DAS_WWEALD_LOANR		= "Loan Recall",		-- 7111
	DAS_WWEALD_TRINK		= "Trinkets from the Reach",	-- 7112
	DAS_WWEALD_CALAM		= "A Calamitous Error",		-- 7113
	DAS_WWEALD_STUDY		= "A Study in Tharriker",	-- 7114
	DAS_WWEALD_RUINO		= "Ruinous Evaluation",		-- 7115
	-- Bastion Nymic dailies : NPC = Legionaria Jaida
	DAS_QUEST_WW_INCUR		= "Legionaria Jaida",		-- 117863
	DAS_WWEALD_INCUR		= "Incursión del Páramo Espejado",	-- 7110 & 7182


	-- Southern Elsweyr
	-- World Boss dailies : NPC = Bruccius Baenius
	DAS_QUEST_SE_BOSS       = "Brucio Benio",							-- 91767
	DAS_SE_PARIAH           = "Paria del colmillo atronador",			-- 6376
	DAS_SE_HEAL             = "Ayudando a los sanadores",				-- 6421
	DAS_SE_RICE             = "Un pícaro y su arroz",					-- 6422
	DAS_SE_DUST             = "Del polvo al polvo",						-- 6423
	DAS_SE_SCHOL            = "Observaciones eruditas",					-- 6424
	DAS_SE_FLETCH           = "Sigue la flecha",						-- 6425
	-- Delve dailies : NPC = Guybert Flaubert
	DAS_QUEST_SE_DELVE      = "Guybert Flaubert",						-- 91769
	DAS_SE_TOMES            = "Tomos de los tsaesci",					-- 6419
	DAS_SE_SWORD            = "Fuentes embrujadas",						-- 6431
	DAS_SE_CANDLE           = "Consuelo a la luz de las velas",			-- 6432
	DAS_SE_LILY             = "Lirios para el recuerdo",				-- 6436
	DAS_SE_MUSH             = "Setas lunares",							-- 6437
	DAS_SE_BLOOD            = "Una respuesta sangrienta",				-- 6438
	-- Dragon Hunt dailies : NPC = Chizbari the Chipper
	DAS_QUEST_SE_DRAGONS    = "Chizbari la Alegre",						-- 91289
	DAS_SE_DRAGON2          = "La cantera de la Guardia del Dragón",	-- 6434
	DAS_SE_DRAGON1          = "La cantera de la Guardia del Dragón",	-- 6444
	-- Dragonguard dailies : NPC = Dirge Truptor
	DAS_QUEST_SE_DELVE2     = "Canto Fúnebre Truptor",					-- 91226
	DAS_SE_TUSK             = "De colmillos y defensas",				-- 6405
	DAS_SE_GRAVE            = "La soledad es una tumba",				-- 6406
	DAS_SE_BONES            = "Palos y huesos",							-- 6428
	DAS_SE_GARD             = "Cavando en el jardín",					-- 6429
	DAS_SE_FILE             = "Archivo en D",							-- 6430
	DAS_SE_AWAK             = "Brusco despertar",						-- 6433
}
DAS_STRINGS_LOCALE.es = strings
for stringId, stringValue in pairs(strings) do
	ZO_CreateStringId(stringId, stringValue)
	SafeAddVersion(stringId, 2)
end
