DAS_STRINGS_LOCALE = DAS_STRINGS_LOCALE or {}
local strings  = {
	-- Key bindings
	DAS_SI_TOGGLE			= "Toggle hidden", --TRANSLATEME
	DAS_SI_MINIMISE			= "Toggle minimised", --TRANSLATEME

	-- GUI
	-- Drag bar button tooltips
	DAS_GUI_BTN_LOCK		= "Fenster fixieren", --TRANSLATEME
	DAS_GUI_BTN_UNLOCK		= "Fenster freigeben", --TRANSLATEME
	DAS_GUI_BTN_HIDE		= "DailyAutoShare ausblenden",
	DAS_GUI_BTN_REFRESH		= "Aktualisieren",
	DAS_GUI_BTN_MINIMISE	= "Fenster minimieren", --TRANSLATEME
	DAS_GUI_BTN_MAXIMISE	= "Fenster maximieren", --TRANSLATEME

	-- QuestList button tooltips
	DAS_GUI_INVITE_TRUE		= "Automatisches Einladen: |c89FFE3Aktiviert|r",
	DAS_GUI_INVITE_FALSE	= "Automatisches Einladen: |cDF6C00Deaktiviert|r",
	DAS_GUI_ACCEPT_TRUE		= "Geteilte Quests werden |c89FFE3automatisch akzeptiert|r",
	DAS_GUI_ACCEPT_FALSE	= "Geteilte Quests werden |cDF6C00nicht automatisch akzeptiert|r",
	DAS_GUI_SHARE_TRUE		= "|c89FFE3Teilt deine aktiven Quests|r jedes Mal, wenn ein neues Gruppenmitglied dazukommt, oder wenn jemand „share“ oder „quest“ in den Gruppenchat schreibt.\n\nRechtsklick um alle Quests zu teilen",
	DAS_GUI_SHARE_FALSE		= "Automatisches Teilen |cDF6C00deaktiviert|r.\n\nRechtsklick um alle Quests zu teilen",
	DAS_GUI_BTN_SPAM		= "Klicken, um in den Chat zu spammen",
	DAS_GUI_BTN_SPAM_ASK	= "Klicken, um nach Quests zu fragen",
	DAS_GUI_BTN_DONATE		= "Visit the GitHub page to voice your concerns, wishes and thanks!\n|c89FFE3— <3 manavortex and the team|r", --TRANSLATEME

	-- Quest tooltips
	DAS_GUI_SUBLIST_OPEN	= "Klicken, um die Questliste zu öffnen", --TRANSLATEME
	DAS_GUI_Q_IS_DONE		= "heute abgeschlossen", -- quest state 0 --TRANSLATEME
	DAS_GUI_Q_IS_OPEN		= "noch nicht übernommen", -- quest state 1 --TRANSLATEME
	DAS_GUI_Q_IS_ACTIVE		= "angenommen", -- quest state 2 --TRANSLATEME
	DAS_GUI_Q_BINGO			= "\nThe bingo code is <<1>>", -- 1 is the bingo code --TRANSLATEME
	DAS_GUI_Q_TIP			= "Hast „<<1>>“ |c<<2>><<3>>|r<<4>>", -- 1 is Quest Name, 2 is colour, 3 is the quest state, 4 is either DAS_GUI_Q_BINGO or nothing --TRANSLATEME
	DAS_GUI_Q_PREREQ		= "|c<<2>>Brauchst die Vorab-Quest:|r\n• <<1>>", -- 1 is Quest Name, 2 is colour --TRANSLATEME
	DAS_GUI_Q_RMB_TIP		= "Rechtsklick für Optionen", --TRANSLATEME

	-- Quest context menu
	DAS_GUI_CTX_SUBLIST		= "Questliste ein/ausblenden", --TRANSLATEME
	DAS_GUI_CTX_SPAM		= "Spammen",
	DAS_GUI_CTX_SHARE		= "Teilen",
	DAS_GUI_CTX_TRACK		= "→ Verfolgen",
	DAS_GUI_CTX_ABANDON		= "|cFF0000Abbrechen|r",
	DAS_GUI_CTX_OPEN_TRUE	= "Als abgeschlossene markieren", --TRANSLATEME
	DAS_GUI_CTX_OPEN_FALSE	= "Als unerledigte markieren", --TRANSLATEME

	-- Settings panel
	DAS_MENU_URI_LOC		= "https://github.com/manavortex/DailyAutoShare/issues/39",
	DAS_MENU_H_GENERAL		= "Allgemeine Einstellungen",
	DAS_MENU_CB_GLOBAL		= "Kontoweite Einstellungen",
	DAS_MENU_CB_GLOBAL_TIP	= "Dieselben Einstellungen für alle Charaktere verwenden?",
	DAS_MENU_CB_HIDE		= "DAS Fenster ausblenden",
	DAS_MENU_CB_HIDE_NA		= "Ausblenden in inaktiven Gebieten",
	DAS_MENU_CB_HIDE_NA_TIP	= "Usually the completed dailies will be shown in the list. Check this to make them vanish.",
	-- activate menu
	DAS_MENU_CB_SUB_ENABLE	= "Aktivieren",
	DAS_MENU_CB_SUB_HIDE	= "Verbergen",
	DAS_MENU_CB_SUB_HIDE_T	= "Hide the quests from UI List but keep sharing them",
	DAS_MENU_SM_ACT			= "Activate DailyAutoShare in...",
	DAS_MENU_SM_ACT_TIP		= "Activate or deactivate the add-on for the listed zones and activities.",
	DAS_MENU_H_ZONES		= "Gebieten:",
	DAS_MENU_CB_BWOOD		= "Blackwood / Dunkelforst",
	DAS_MENU_CB_CCITY		= "Clockwork City / Stadt der Uhrwerke",
	DAS_MENU_SM_CCITY		= "Clockwork City Options",
	DAS_MENU_CB_CC_DELV		= "Messingfeste: Gewölbe",
	DAS_MENU_CB_CC_DELV_TIP	= "Quest giver is |cFFFFFF<<1>>|r in the Brass Fortress\nRequires completing the following prerequisite quests (either of):\n• <<2>>\n• <<3>>", -- 1 is DAS_QUEST_CC_NOVICE
	DAS_MENU_CB_CC_BOSS		= "Messingfeste: Anführer in der offenen Welt",
	DAS_MENU_CB_CC_BOSS_TIP	= "Quest giver is |cFFFFFF<<1>>|r in the Brass Fortress", -- 1 is DAS_QUEST_CC_ROBOT
	DAS_MENU_CB_CC_SLAG		= "Schlackenstadt: Gathering dailies",
	DAS_MENU_CB_CC_SLAG_TIP	= "Quest giver is |cFFFFFF<<1>>|r in the Brass Fortress", -- 1 is DAS_QUEST_CC_ORC
	DAS_MENU_CB_CC_CROW		= "Schlackenstadt: Schwarzfederhof",
	DAS_MENU_CB_CC_CROW_TIP	= "Quest giver is |cFFFFFF<<1>>|r in the Brass Fortress\nRequires progressing the zone story past the following quest:\n• <<2>>", -- 1 is DAS_QUEST_CC_CROW
	DAS_MENU_CB_CRAG		= "Craglorn / Kargstein",
	DAS_MENU_CB_CYRO		= "Cyrodiil — Stützpunkt der Allianz",
	DAS_MENU_CB_CYRO_TIP	= "Auto-accept and turn-in support only",
	DAS_MENU_CB_DEADL		= "Fargrave & The Deadlands / Ferngrab & Totenländer",
	DAS_MENU_CB_FRSNG		= "Galen & Y'ffelon",
	DAS_MENU_CB_DARKB		= "Gold Coast / Goldküste",
	DAS_MENU_CB_THGLD		= "Hew's Bane / Hews Fluch",
	DAS_MENU_CB_HIILE		= "High Isle & Amenos / Hochinsel & Amenos",
	DAS_MENU_CB_MURK		= "Murkmire / Trübmoor",
	DAS_MENU_SM_MURK		= "Murkmire Options",
	DAS_MENU_CB_MM_DELV		= "Lilmoth: Gewölbe",
	DAS_MENU_CB_MM_DELV_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Lilmoth\nRequires completing the following prerequisite quest:\n• <<2>>", -- 1 is DAS_SLAVES_QUEST1
	DAS_MENU_CB_MM_BOSS		= "Lilmoth: Anführer in der offenen Welt",
	DAS_MENU_CB_MM_BOSS_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Lilmoth\nRequires completing the following prerequisite quest:\n• <<2>>", -- 1 is DAS_SLAVES_QUEST3
	DAS_MENU_CB_MM_ROOT		= "Wurzelflüsterdorf",
	DAS_MENU_CB_MM_ROOT_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Root-Whisper Village\nRequires completing the zone story", -- 1 is DAS_SLAVES_QUEST2
	DAS_MENU_CB_NELWR		= "Northern Elsweyr / Nördliches Elsweyr",
	DAS_MENU_CB_PIKEYS		= "The Reach / Das Reik",
	DAS_MENU_CB_SELWR		= "Southern Elsweyr / Südliches Elsweyr",
	DAS_MENU_SM_SELWR		= "Southern Elsweyr Options",
	DAS_MENU_CB_SE_DELV		= "Senchal: Gewölbe",
	DAS_MENU_CB_SE_DELV_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Senchal", -- 1 is DAS_QUEST_SE_DELVE
	DAS_MENU_CB_SE_BOSS		= "Senchal: Anführer in der offenen Welt",
	DAS_MENU_CB_SE_BOSS_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Senchal", -- 1 is DAS_QUEST_SE_BOSS
	DAS_MENU_CB_SE_MOON		= "Gezeiteninsel: Neuer Mond",
	DAS_MENU_CB_SE_MOON_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Drachengarde-Refugium\nRequires progressing the zone story past the following quest:\n• <<2>>", -- 1 is DAS_QUEST_SE_DELVE2
	DAS_MENU_CB_ELVES		= "Summerset / Sommersend",
	DAS_MENU_CB_NECROM		= "Telvanni-Halbinsel & Apocrypha",
	DAS_MENU_CB_MWIND		= "Vvardenfell",
	DAS_MENU_SM_MWIND		= "Vvardenfell Options",
	DAS_MENU_CB_M_RELC		= "Aschländer: Relikte",
	DAS_MENU_CB_M_RELC_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Ald'ruhn\nRequires completing the following prerequisite quests:\n• <<2>>\n• <<3>>", -- 1 is DAS_QUEST_M_NUMANI
	DAS_MENU_CB_M_HUNT		= "Aschländer: Jagd",
	DAS_MENU_CB_M_HUNT_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Ald'ruhn\nRequires completing the following prerequisite quests:\n• <<2>>\n• <<3>>", -- 1 is DAS_QUEST_M_ASHLANDER
	DAS_MENU_CB_M_DELV		= "Vivec: Gewölbe",
	DAS_MENU_CB_M_DELV_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Vivec's Hall of Justice", -- 1 is DAS_QUEST_M_TRAYLAN
	DAS_MENU_CB_M_BOSS		= "Vivec: Anführer in der offenen Welt",
	DAS_MENU_CB_M_BOSS_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Vivec's Hall of Justice", -- 1 is DAS_QUEST_M_BELERU
	DAS_MENU_CB_GOTHS		= "Western Skyrim / Westliches Himmelsrand",
	DAS_MENU_CB_ORCS		= "Wrothgar",
	DAS_MENU_H_GUILDS		= "Gildenaktivitäten:",
	DAS_MENU_CB_GUILD		= "Die Krieger-/Magiergilde und Unerschrockenen",
	DAS_MENU_SM_GUILD		= "Guild dailies options",
	DAS_MENU_CB_G_FG		= "Kriegergilde",
	DAS_MENU_CB_G_FG_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Alliance Capitals, inside the Fighters Guild hall",
	DAS_MENU_CB_G_FG_HIDE	= "In Hauptstädten verbergen",
	DAS_MENU_CB_G_MG		= "Magiergilde",
	DAS_MENU_CB_G_MG_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Alliance Capitals, inside the Mages Guild hall",
	DAS_MENU_CB_G_MG_HIDE	= "In Hauptstädten verbergen",
	DAS_MENU_CB_G_UD		= "Unerschrockenen",
	DAS_MENU_CB_G_UD_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Alliance Capitals, at the Undaunted enclave",
	DAS_MENU_CB_G_UD_HIDE	= "In Hauptstädten verbergen",
	DAS_MENU_H_EVENTS		= "Festen:",
	DAS_MENU_CB_E_NL		= "Neujahr",
	DAS_MENU_CB_E_NL_TIP	= "Das Neujahrsfest aktivieren",
	-- invite menu
	DAS_MENU_SM_INVITE		= "Invitation text & behaviour",
	DAS_MENU_TB_QST			= "Quest Share text",
	DAS_MENU_TB_QST_TIP		= "Text to generate when you spam quest shares.\n<<1>> will be replaced with the quest names, <<2>> with the bingo codes.\nOmit either to remove parameter. Include neither and sound like a fool.",
	DAS_MENU_TB_QSTEO		= "'Either of' string",
	DAS_MENU_TB_QSTEO_TIP	= "If there is more than 1 quest to spam about, DAS will prepend this string to the list of bingo codes. Remove if you don't like your spam to be grammatically correct, or set to something else.",
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
	DAS_MENU_H_POLITE		= "Drosselungseinstellungen",
	DAS_MENU_SL_INVTIME		= "Group invite delay (in ms)",
	DAS_MENU_SL_INVTIME_TIP	= "Adjust this if you encounter disconnects when trying to create a group.\n1000 ms are one second.",
	DAS_MENU_CB_SHRTIME		= "Quest share delay (in ms)",
	DAS_MENU_CB_SHRTIME_TIP	= "Adjust this if you encounter disconnects when new group members join.\n1000 ms are one second.",
	-- misc options
	DAS_MENU_CB_H_STUFF		= "Verschiedenes",
	DAS_MENU_CB_DEBUG		= "Debugmodus",


	-- QUEST DATA

	-- Quest names are located in the table 52420949-0 of DE.lang
	-- NPC names are located in the table 8290981-0 of DE.lang
	-- Specify NPC names with all dynamic grammar pre-applied,
	-- e.g. "La justiciar Farowël", not "justiciar Farowël^fd"


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
	DAS_LIST_M_RELIC        = "Die Relikte von ",
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


	-- Hew's Bane / Thieves Guild
	-- Heists
	DAS_HEWS_HDEAD          = "Beutezug der Todkuhlenhallen",           -- 5536
	DAS_HEWS_HHIDE          = "Beutezug des Verstecks",                 -- 5572
	DAS_HEWS_HUNDE          = "Beutezug der unterirdischen Grabstätte", -- 5573
	DAS_HEWS_HGLIT          = "Beutezug der funkelnden Grotte",         -- 5575
	DAS_HEWS_HSECL          = "Beutezug der abgelegenen Kanalisation",  -- 5577
	-- World Boss dailies
	DAS_HEWS_KOEST          = "Die verschwundenen Perlen",              -- 5586
	DAS_HEWS_THRAL          = "Sklavenbucht",                           -- 5587
	-- Delve dailies
	DAS_HEWS_BAHRA          = "Erinnerungen an die Jugend",             -- 5588
	DAS_HEWS_SHARK          = "Die Seemannspfeife",                     -- 5589
	DAS_QUEST_TG_HEIST      = "Brett für Beutezüge",                    -- 87370069-0-20019
	DAS_QUEST_TG_REACQ      = "Brett für Rückbeschaffungen",            -- 87370069-0-20116
	DAS_QUEST_TG_FAREN      = "Fa'ren-dar",                             -- 69599
	DAS_QUEST_TG_SPENC      = "Spencer Rye",                            -- 69854


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


	-- Telvanni Peninsula
	-- World Boss dailies, NPC = Ordinator Nelyn
	DAS_QUEST_TP_BOSS		= "Ordinator Nelyn",				-- 113595
	DAS_NECROM_REENA		= "Schiefgelaufene Nachstellung",	-- 7039
	DAS_NECROM_TRACK		= "Albträumen auf der Spur",		-- 7040
	DAS_NECROM_DEVOU		= "Verschlinger der Träume",		-- 7041
	DAS_NECROM_ANCIE		= "Eine uralte Allwissenheit",		-- 7042
	DAS_NECROM_KNOWL		= "Wissen ist Macht",				-- 7043
	DAS_NECROM_BREAK		= "Das Sprengen der Ketten",		-- 7044
	-- Exploration dailies, NPC = Ordinator Tilena
	DAS_QUEST_TP_EXPL		= "Ordinatorin Tilena",				-- 113454
	DAS_NECROM_EGGRA		= "Eierräuber",						-- 7033
	DAS_NECROM_SNATC		= "Schnappen und Abhauen",			-- 7034
	DAS_NECROM_BOUND		= "Im Geheimen gebunden",			-- 7035
	DAS_NECROM_SECRR		= "Zurückerlangte Geheimnisse",		-- 7036
	DAS_NECROM_SECRP		= "Geheimer Schutz",				-- 7037
	DAS_NECROM_MANIF		= "Manifestierte Hoffnung",			-- 7038
	-- Bastion Nymic dailies : NPC = Ordinator Tandasea
	DAS_QUEST_TP_WEVT		= "Ordinatorin Tandasea",			-- 114895 & 116442
	DAS_NECROM_NYMIC		= "Bastion Nymon",					-- 7013 & 7056 & 7057 & 7058


	-- Galen
	-- World Boss dailies, NPC = Druid Gastoc
	DAS_QUEST_FS_BOSS		= "Druide Gastoc",						-- 111155
	DAS_MNRCA_RECOV			= "Geborgene Relikte",					-- 6890
	DAS_MNRCA_THREE			= "Dreizinkiges Vorgehen",				-- 6891
	DAS_MNRCA_SHRIN			= "Schreine auf schwankendem Grund",	-- 6892
	DAS_MNRCA_SUNFL			= "Sonnenblumen-Standfestigkeit",		-- 6878
	DAS_MNRCA_WAILI			= "Ein jammernder Wald",				-- 6881
	DAS_MNRCA_MOTHS			= "Die Mottenstudie",					-- 6889
	-- Exploration dailies, NPC = Juline Courcelles
	DAS_QUEST_FS_EXPL		= "Juline Courcelles",					-- 111153
	DAS_MNRCA_RADIA			= "Strahlende Andenken",				-- 6883
	DAS_MNRCA_VOLCA			= "Vulkanisches Virtuosentum",			-- 6884
	DAS_MNRCA_CRITT			= "Viecherfänger",						-- 6885
	DAS_MNRCA_FLOWE			= "Blumenfreuden",						-- 6886
	DAS_MNRCA_HELPF			= "Hilfreiche Handzettel",				-- 6887
	DAS_MNRCA_MARKI			= "Den Pfad markieren",					-- 6888
	-- Volcanic Vent dailies, NPC = Druid Aishabeh
	DAS_QUEST_FS_VENT		= "Druidin Aishabeh",					-- 111621
	DAS_MNRCA_VENTS			= "Unmittelbare Bedrohung",				-- 6899 & 6901


	-- High Isle
	-- World Boss dailies, NPC = Parisse Plouff
	DAS_QUEST_HI_BOSS		= "Parisse Plouff",				-- 106878
	DAS_IBIZA_AVARI			= "Habgier der Ahngezeiten",	-- 6803
	DAS_IBIZA_SABLE			= "Der Zobelritter",			-- 6807
	DAS_IBIZA_WILDH			= "Wildhorns Zorn",				-- 6808
	DAS_IBIZA_SERPE			= "Die Schlangenruferin",		-- 6816
	DAS_IBIZA_ASCEN			= "Emporstrebende Schatten",	-- 6821
	DAS_IBIZA_SPECI			= "Ein besonderes Reagenz",		-- 6822
	-- Exploration dailies, NPC = Wayllod
	DAS_QUEST_HI_EXPL		= "Wayllod",					-- 106879
	DAS_IBIZA_ARCAN			= "Arkane Forschung",			-- 6809
	DAS_IBIZA_FINAL			= "Endlich Frieden",			-- 6805
	DAS_IBIZA_SEEKA			= "Suchen und Zerstören",		-- 6815
	DAS_IBIZA_PRISO			= "Gefängnisprobleme",			-- 6818
	DAS_IBIZA_PIRAT			= "Piratenprobleme",			-- 6825
	DAS_IBIZA_DRUID			= "Druidenforschung",			-- 6826
	-- Volcanic Vent dailies : NPC = Druid Peeska
	DAS_QUEST_HI_VENT		= "Druidin Peeska",				-- 108335
	DAS_IBIZA_VENTS			= "Das Ablassen der Bedrohung",	-- 6812 & 6813


	-- Fargrave
	-- World Boss dailies, NPC = Vaveli Indavel
	DAS_QUEST_DL_BOSS		= "Vaveli Indavel",							-- 104381
	DAS_MDAG_DANGE			= "Gefährliche Geschäfte",					-- 6716
	DAS_MDAG_MINDS			= "Das geistige Auge",						-- 6717
	DAS_MDAG_UNMAK			= "Hort des Entschaffers",					-- 6718
	DAS_MDAG_CAREL			= "Achtlose Verschmutzung",					-- 6719
	DAS_MDAG_RETRI			= "Fehlgeschlagene Bergung",				-- 6720
	DAS_MDAG_PARAL			= "Eine lähmende Lektion",					-- 6721
	-- Exploration dailies, NPC = Luna Beriel
	DAS_QUEST_DL_EXPL		= "Luna Beriel",							-- 104378
	DAS_MDAG_PROPA			= "Unterdrückte Propaganda",				-- 6710
	DAS_MDAG_BRAND			= "Relikte des Brandmal-Reformatoriums",	-- 6711
	DAS_MDAG_FORGO			= "Vergessene Grabbeigaben",				-- 6712
	DAS_MDAG_FLOWE			= "Blumen in der Torheit",					-- 6713
	DAS_MDAG_CLAND			= "Heimliche Mitteilungen",					-- 6714
	DAS_MDAG_DISCR			= "Diskrete Abholungen",					-- 6715


	-- Blackwood
	-- World Boss dailies : NPC = Brita Silanus
	DAS_QUEST_BW_BOSS       = "Britta Silanus",                -- 100913
	DAS_BLACKWD_EXCAV       = "Die Legende vom Mannbullen",    -- 6645
	DAS_BLACKWD_TOAD        = "Goblinforschung",               -- 6649
	DAS_BLACKWD_RITUAL      = "Riten der Sul-Xan",             -- 6650
	DAS_BLACKWD_FROG        = "Ein Froschreigen",              -- 6651
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


	-- The Reach, aye
	-- World Boss dailies : NPC = Gwenyfe, aye
	DAS_QUEST_MK_BOSS		= "Gwenyfe",						-- 97856
	DAS_PIKEYS_NAMIR		= "Namiras Perversionen",			-- 6556
	DAS_PIKEYS_NOTES		= "Notizen der Leere",				-- 6581
	DAS_PIKEYS_RUPTU		= "Risse im Reik",					-- 6582
	DAS_PIKEYS_SCHOL		= "Die Gelehrtenbitte",				-- 6583
	DAS_PIKEYS_GUIDE		= "Führer durch die Tiefe",			-- 6584
	DAS_PIKEYS_TREAS		= "Weggeworfene Schätze",			-- 6585
	-- Delve dailies : NPC = Bralthahawn, aye
	DAS_QUEST_MK_DELVE		= "Bralthahan",						-- 97855
	DAS_PIKEYS_TALIS		= "Wilde Talismane",				-- 6557
	DAS_PIKEYS_TAINT		= "Das verdorbene Dornenherz",		-- 6567
	DAS_PIKEYS_WITCH		= "Was ihres ist, ist unser",		-- 6569
	DAS_PIKEYS_MAGIC		= "Magische Mykologie",				-- 6571
	DAS_PIKEYS_CONTA		= "Sonderbare Verseuchung",			-- 6572
	DAS_PIKEYS_MENAC		= "Eine ungeschlüpfte Bedrohung",	-- 6573
	-- Wayward Guardians dailies : NPC = Ardanir, aye
	DAS_QUEST_MK_COURIER	= "Ardanir",						-- 99601
	DAS_PIKEYS_REMNA		= "Überbleibsel des Tiefenvolkes",	-- 6600
	DAS_PIKEYS_BURNA		= "Das Böse ausbrennen",			-- 6601
	DAS_PIKEYS_LIGHT		= "Das Licht von Arkthzand",		-- 6602
	DAS_PIKEYS_ALONE		= "Allein in der Dunkelheit",		-- 6603
	DAS_PIKEYS_DEFEN		= "Verteidiger des Reik",			-- 6604
	DAS_PIKEYS_NIGHT		= "Die Sprache der Nacht",			-- 6605
	DAS_PIKEYS_SHRIN		= "Der verlorene Schrein",			-- 6606
	-- Harrowstorm dailies : NPC = Nelldena, aye
	DAS_QUEST_MK_HRWSTMS	= "Nelldena",						-- 97901
	DAS_PIKEYS_STORM		= "Gramstürmen zum Trotz",			-- 6558 & 6559


	-- Western Skyrim
	-- World Boss dailies : NPC = Hidaver
	DAS_QUEST_WS_BOSS		= "Hidaver",					-- 94736
	DAS_GOTHS_LOSTA			= "Verloren am Strand",			-- 6509
	DAS_GOTHS_MOONL			= "Entführung bei Mondlicht",	-- 6517
	DAS_GOTHS_CIRCL			= "Der Kreis der Schummler",	-- 6518
	DAS_GOTHS_MOTHE			= "Die Mutter der Schatten",	-- 6519
	DAS_GOTHS_FEAST			= "Finsterer Fraß",				-- 6526
	DAS_GOTHS_PROBL			= "Wachsende Probleme",			-- 6527
	-- Delve dailies : NPC = Tinzen
	DAS_QUEST_WS_DELVE		= "Tinzen",						-- 94414
	DAS_GOTHS_STREN			= "Die Stärke von Riesen",		-- 6493
	DAS_GOTHS_TRAIL			= "Eine kalt gewordene Spur",	-- 6494
	DAS_GOTHS_PRESE			= "Die Bewahrung des Lebens",	-- 6495
	DAS_GOTHS_PRECI			= "Kostbare Rinde",				-- 6520
	DAS_GOTHS_DWEME			= "Dwemer-Demontage",			-- 6523
	DAS_GOTHS_SPIRI			= "Geistige Befreiung",			-- 6524
	-- Harrowstorm dailies : NPC = Swordthane Jylta
	DAS_QUEST_WS_HRWSTMS	= "Schwertthane Jylta",			-- 95442
	DAS_GOTHS_STORM			= "Gramstürmen zum Trotz",		-- 6512 & 6528


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
