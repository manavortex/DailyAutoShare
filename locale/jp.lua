DAS_STRINGS_LOCALE = DAS_STRINGS_LOCALE or {}
local strings  = {
	-- Key bindings
	DAS_SI_TOGGLE			= "Toggle hidden", --TRANSLATEME
	DAS_SI_MINIMISE			= "Toggle minimised", --TRANSLATEME

	-- GUI
	-- Drag bar button tooltips
	DAS_GUI_BTN_LOCK		= "ウィンドウ固定", --TRANSLATEME
	DAS_GUI_BTN_UNLOCK		= "ウィンドウ固定解除", --TRANSLATEME
	DAS_GUI_BTN_HIDE		= "デーリー・オートー・シェア非表示", --TRANSLATEME
	DAS_GUI_BTN_REFRESH		= "更新する", --TRANSLATEME
	DAS_GUI_BTN_MINIMISE	= "ウィンドウの最小化", --TRANSLATEME
	DAS_GUI_BTN_MAXIMISE	= "ウィンドウの最大化", --TRANSLATEME

	-- QuestList button tooltips
	DAS_GUI_INVITE_TRUE		= "Auto-invite is now |c89FFE3On|r", --TRANSLATEME
	DAS_GUI_INVITE_FALSE	= "Auto-invite is now |cDF6C00Off|r", --TRANSLATEME
	DAS_GUI_ACCEPT_TRUE		= "|c89FFE3Automatically accepting|r quest shares for dailies", --TRANSLATEME
	DAS_GUI_ACCEPT_FALSE	= "|cDF6C00Not automatically accepting|r dailies", --TRANSLATEME
	DAS_GUI_SHARE_TRUE		= "|c89FFE3Automatically sharing|r your active dailies on group member join or 'share' in group chat.\n\nRight-click to share your active quests now", --TRANSLATEME
	DAS_GUI_SHARE_FALSE		= "|cDF6C00Not automatically sharing|r your active dailies.\n\nRight-click to share anyway", --TRANSLATEME
	DAS_GUI_BTN_SPAM		= "Click to spam in zone chat", --TRANSLATEME
	DAS_GUI_BTN_SPAM_ASK	= "Click to ask for your open or active dailies", --TRANSLATEME
	DAS_GUI_BTN_DONATE		= "Visit the GitHub page to voice your concerns, wishes and thanks!\n|c89FFE3— <3 manavortex and the team|r", --TRANSLATEME

	-- Quest tooltips
	DAS_GUI_SUBLIST_OPEN	= "クリックしてクエストリストを開きます", --TRANSLATEME
	DAS_GUI_Q_IS_DONE		= "was completed today", -- quest state 0 --TRANSLATEME
	DAS_GUI_Q_IS_OPEN		= "is still open", -- quest state 1 --TRANSLATEME
	DAS_GUI_Q_IS_ACTIVE		= "is active", -- quest state 2 --TRANSLATEME
	DAS_GUI_Q_BINGO			= "\nThe bingo code is <<1>>", -- 1 is the bingo code --TRANSLATEME
	DAS_GUI_Q_TIP			= "<<1>> |c<<2>><<3>>|r<<4>>", -- 1 is Quest Name, 2 is colour, 3 is the quest state, 4 is either DAS_GUI_Q_BINGO or nothing --TRANSLATEME
	DAS_GUI_Q_PREREQ		= "|c<<2>>前提となるクエストが必要です:|r\n• <<1>>", -- 1 is Quest Name, 2 is colour --TRANSLATEME
	DAS_GUI_Q_RMB_TIP		= "オプションを表示するには右クリックします", --TRANSLATEME

	-- Quest context menu
	DAS_GUI_CTX_SUBLIST		= "Toggle the quest list", --TRANSLATEME
	DAS_GUI_CTX_SPAM		= "宣伝する", --TRANSLATEME
	DAS_GUI_CTX_SHARE		= "共有", --TRANSLATEME
	DAS_GUI_CTX_TRACK		= "→ 追跡クエストを設定", --TRANSLATEME
	DAS_GUI_CTX_ABANDON		= "|cFF0000放棄する|r", --TRANSLATEME
	DAS_GUI_CTX_OPEN_TRUE	= "Set as completed", --TRANSLATEME
	DAS_GUI_CTX_OPEN_FALSE	= "Set as open", --TRANSLATEME.

	-- Settings panel
	DAS_MENU_URI_LOC		= "https://github.com/manavortex/DailyAutoShare/issues",
	DAS_MENU_H_GENERAL		= "全般設定",
	DAS_MENU_CB_GLOBAL		= "アカウント全体設定",
	DAS_MENU_CB_GLOBAL_TIP	= "Use the same settings for all characters?",
	DAS_MENU_CB_HIDE		= "UIウィンドウを非表示",
	DAS_MENU_CB_HIDE_NA		= "Hide in non-active zones",
	DAS_MENU_CB_HIDE_NA_TIP	= "Usually the completed dailies will be shown in the list. Check this to make them vanish.",
	-- activate menu
	DAS_MENU_CB_SUB_ENABLE	= "有効にする",
	DAS_MENU_CB_SUB_HIDE	= "非表示にする",
	DAS_MENU_CB_SUB_HIDE_T	= "Hide the quests from UI List but keep sharing them",
	DAS_MENU_SM_ACT			= "Activate DailyAutoShare in...",
	DAS_MENU_SM_ACT_TIP		= "Activate or deactivate the add-on for the listed zones and activities.",
	DAS_MENU_H_ZONES		= "Zones:",
	DAS_MENU_CB_BWOOD		= "Blackwood / ブラックウッド",
	DAS_MENU_CB_CCITY		= "Clockwork City / クロックワーク・シティ",
	DAS_MENU_SM_CCITY		= "Clockwork City Options",
	DAS_MENU_CB_CC_DELV		= "真鍮要塞: 洞窟",
	DAS_MENU_CB_CC_DELV_TIP	= "Quest giver is |cFFFFFF<<1>>|r in the Brass Fortress\nRequires completing the following prerequisite quests (either of):\n• <<2>>\n• <<3>>", -- 1 is DAS_QUEST_CC_NOVICE
	DAS_MENU_CB_CC_BOSS		= "真鍮要塞: ワールドボス",
	DAS_MENU_CB_CC_BOSS_TIP	= "Quest giver is |cFFFFFF<<1>>|r in the Brass Fortress", -- 1 is DAS_QUEST_CC_ROBOT
	DAS_MENU_CB_CC_SLAG		= "スラグタウン: Gathering dailies",
	DAS_MENU_CB_CC_SLAG_TIP	= "Quest giver is |cFFFFFF<<1>>|r in the Brass Fortress", -- 1 is DAS_QUEST_CC_ORC
	DAS_MENU_CB_CC_CROW		= "スラグタウン: ブラックフェザー宮廷",
	DAS_MENU_CB_CC_CROW_TIP	= "Quest giver is |cFFFFFF<<1>>|r in the Brass Fortress\nRequires progressing the zone story past the following quest:\n• <<2>>", -- 1 is DAS_QUEST_CC_CROW
	DAS_MENU_CB_CRAG		= "Craglorn / クラグローン",
	DAS_MENU_CB_CYRO		= "Cyrodiil / シロディール Alliance Base",
	DAS_MENU_CB_CYRO_TIP	= "Auto-accept and turn-in support only",
	DAS_MENU_CB_DARKB		= "Gold Coast / ゴールドコースト",
	DAS_MENU_CB_THGLD		= "Hew's Bane / ヒューズベイン",
	DAS_MENU_CB_MURK		= "Murkmire / マークマイア",
	DAS_MENU_SM_MURK		= "Murkmire Options",
	DAS_MENU_CB_MM_DELV		= "リルモス: 洞窟",
	DAS_MENU_CB_MM_DELV_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Lilmoth\nRequires completing the following prerequisite quest:\n• <<2>>", -- 1 is DAS_SLAVES_QUEST1
	DAS_MENU_CB_MM_BOSS		= "リルモス: ワールドボス",
	DAS_MENU_CB_MM_BOSS_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Lilmoth\nRequires completing the following prerequisite quest:\n• <<2>>", -- 1 is DAS_SLAVES_QUEST3
	DAS_MENU_CB_MM_ROOT		= "ルートウィスパー村",
	DAS_MENU_CB_MM_ROOT_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Root-Whisper Village\nRequires completing the zone story", -- 1 is DAS_SLAVES_QUEST2
	DAS_MENU_CB_NELWR		= "Northern Elsweyr / 北エルスウェア",
	DAS_MENU_CB_SELWR		= "Southern Elsweyr / 南エルスウェア",
	DAS_MENU_CB_ELVES		= "Summerset / サマーセット",
	DAS_MENU_CB_MWIND		= "Vvardenfell / ヴァーデンフェル",
	DAS_MENU_SM_MWIND		= "Vvardenfell Options",
	DAS_MENU_CB_M_RELC		= "アッシュランダー: 遺物",
	DAS_MENU_CB_M_RELC_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Ald'ruhn\nRequires completing the following prerequisite quests:\n• <<2>>\n• <<3>>", -- 1 is DAS_QUEST_M_NUMANI
	DAS_MENU_CB_M_HUNT		= "アッシュランダー: 狩り",
	DAS_MENU_CB_M_HUNT_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Ald'ruhn\nRequires completing the following prerequisite quests:\n• <<2>>\n• <<3>>", -- 1 is DAS_QUEST_M_ASHLANDER
	DAS_MENU_CB_M_DELV		= "ヴィベク: 洞窟",
	DAS_MENU_CB_M_DELV_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Vivec's Hall of Justice\nRequires completing the following prerequisite quest:\n• <<2>>", -- 1 is DAS_QUEST_M_TRAYLAN
	DAS_MENU_CB_M_BOSS		= "ヴィベク: ワールドボス",
	DAS_MENU_CB_M_BOSS_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Vivec's Hall of Justice\nRequires completing the following prerequisite quest:\n• <<2>>", -- 1 is DAS_QUEST_M_BELERU
	DAS_MENU_CB_ORCS		= "Wrothgar / ロスガー",
	DAS_MENU_H_GUILDS		= "Guild activities:",
	DAS_MENU_CB_GUILD		= "Fighters / Mages Guilds & Undaunted",
	DAS_MENU_SM_GUILD		= "Guild dailies options",
	DAS_MENU_CB_G_FG		= "Fighters Guild",
	DAS_MENU_CB_G_FG_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Alliance Capitals, inside the Fighters Guild hall",
	DAS_MENU_CB_G_FG_HIDE	= "Hide in Capitals",
	DAS_MENU_CB_G_MG		= "Mages Guild",
	DAS_MENU_CB_G_MG_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Alliance Capitals, inside the Mages Guild hall",
	DAS_MENU_CB_G_MG_HIDE	= "Hide in Capitals",
	DAS_MENU_CB_G_UD		= "The Undaunted",
	DAS_MENU_CB_G_UD_TIP	= "Quest giver is |cFFFFFF<<1>>|r in Alliance Capitals, at the Undaunted enclave",
	DAS_MENU_CB_G_UD_HIDE	= "Hide in Capitals",
	DAS_MENU_H_EVENTS		= "Festivals:",
	DAS_MENU_CB_E_NL		= "ニュー・ライフ",
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
	DAS_MENU_H_POLITE		= "調整設定",
	DAS_MENU_SL_INVTIME		= "Group invite delay (in ms)",
	DAS_MENU_SL_INVTIME_TIP	= "Adjust this if you encounter disconnects when trying to create a group.\n1000 ms are one second.",
	DAS_MENU_CB_SHRTIME		= "Quest share delay (in ms)",
	DAS_MENU_CB_SHRTIME_TIP	= "Adjust this if you encounter disconnects when new group members join.\n1000 ms are one second.",
	-- misc options
	DAS_MENU_CB_H_STUFF		= "その他",
	DAS_MENU_CB_DEBUG		= "デバッグ モード",


	-- QUEST DATA

	-- Quest names are located in the table 52420949-0 of JP.lang
	-- NPC names are located in the table 8290981-0 of JP.lang
	-- Specify NPC names with all dynamic grammar pre-applied,
	-- e.g. "La justiciar Farowël", not "justiciar Farowël^fd"


	-- Northern Elsweyr
	-- Delve dailies : NPC = Nisuzi
	DAS_QUEST_NE_DELVE      = "ニスジ", -- 88072
	DAS_KITTY_FLAME         = "デイドラの炎を消す", -- 6356
	DAS_KITTY_WIND          = "風の叡智",   -- 6359
	DAS_KITTY_RUINS         = "遺跡からの強奪", -- 6360
	DAS_KITTY_HUNGRY        = "腹を空かせた猫の恩恵", -- 6361
	DAS_KITTY_STAMPEDE      = "大蛇の暴走", -- 6362
	DAS_KITTY_TEA           = "タングルの茶葉", -- 6363
	-- World Boss dailies : NPC = Ri'hirr
	DAS_QUEST_NE_BOSS       = "リヒル",   -- 88139
	DAS_KITTY_SWORD         = "大蛇の剣", -- 6377
	DAS_KITTY_WILY          = "交易商の恐怖", -- 6378
	DAS_KITTY_NIGHTMARE     = "目覚める悪夢", -- 6379
	DAS_KITTY_DEATH         = "また死がやってくる", -- 6380
	DAS_KITTY_DUO           = "卑劣なコンビ", -- 6381
	DAS_KITTY_SENCHE        = "腐敗のセンチ", -- 6382
	-- Dragon Hunt dailies : NPC = Battlereeve Tanerline
	DAS_QUEST_TANERLIN      = "バトルリーブ・タネルライン", -- 88741
	DAS_KITTY_DRAGON        = "ドラゴン狩り", -- 6357


	-- Murkmire
	-- World Boss dailies : NPC = Bolu
	DAS_SLAVES_QUEST3       = "ボル", -- 85085
	DAS_SLAVES_BOSS_1       = "危機的状況", -- 6233
	DAS_SLAVES_BOSS_5       = "原生林", -- 6234
	DAS_SLAVES_BOSS_3       = "古い小物", -- 6235
	DAS_SLAVES_BOSS_2       = "墓への期待", -- 6236
	DAS_SLAVES_BOSS_6       = "忘れ形見", -- 6237
	DAS_SLAVES_BOSS_4       = "仇敵", -- 6238
	-- Delve dailies : NPC = Varo Hosidias
	DAS_SLAVES_QUEST1       = "ヴァロ・ホシディアス", -- 85212
	DAS_SLAVES_DELVE_6      = "言葉の重み", -- 6247
	DAS_SLAVES_DELVE_3      = "古い巻物", -- 6248
	DAS_SLAVES_DELVE_1      = "骨董品の鎧", -- 6253
	DAS_SLAVES_DELVE_4      = "聖なるロウソク", -- 6264
	DAS_SLAVES_DELVE_5      = "虐殺の道具", -- 6267
	DAS_SLAVES_DELVE_2      = "埋葬の問題", -- 6268
	-- Root-Whisper dailies : NPC = Tuwul
	DAS_SLAVES_QUEST2       = "トゥウル", -- 86275
	DAS_SLAVES_ROOT_1       = "癒しのアロエ", -- 6286
	DAS_SLAVES_ROOT_4       = "育つキノコ", -- 6287
	DAS_SLAVES_ROOT_2       = "萎縮する使者", -- 6288
	DAS_SLAVES_ROOT_5       = "隠された贈り物", -- 6289
	DAS_SLAVES_ROOT_3       = "身を守る革", -- 6290


	-- Summerset
	-- Delve dailies : NPC = Justiciar Tanorian
	DAS_ELF_PILGR           = "巡礼の終わり", -- 6152
	DAS_ELF_LIGHT           = "光の捜索", -- 6156
	DAS_ELF_ROSE            = "薔薇の美", -- 6157
	DAS_ELF_RELIC           = "遺物のたらい回し", -- 6158
	DAS_ELF_SERPE           = "サーペントの間引き", -- 6159
	DAS_ELF_MEMO            = "記憶からの一撃", -- 6160
	-- World Boss dailies : NPC = Justiciar Farowel
	DAS_ELF_QUEEN           = "病んだ海", -- 6082
	DAS_ELF_WILD            = "野生の馴致", -- 6083
	DAS_ELF_ALCHE           = "深淵の錬金術師", -- 6084
	DAS_ELF_GRIFFIN         = "同類", -- 6085
	DAS_ELF_GRAVE           = "不朽", -- 6086
	DAS_ELF_SNAKE           = "座礁", -- 6087
	-- Geyser dailies : NPC = Battlereeve Tanerline
	DAS_ELF_GEYSER          = "沈むサマーセット", -- 6166


	-- Clockwork City
	-- Brass Fortress dailies : NPC = Clockwork Facilitator
	DAS_CLOCK_IMP           = "〈不完全〉の扇動", -- 6076
	DAS_CLOCK_FOE           = "華麗なる羽根の敵", -- 6077
	-- Slag Town dailies : NPC = Razgurug
	DAS_CLOCK_CRAFT_WOOD    = "我らが火の燃料", -- 6037
	DAS_CLOCK_CRAFT_SMITH   = "日々の作業", -- 6038
	DAS_CLOCK_CRAFT_CLOTH   = "ほどけた糸", -- 6039
	DAS_CLOCK_CRAFT_WATER   = "粘つく解決法", -- 6040
	DAS_CLOCK_CRAFT_RUNE    = "付呪の重複", -- 6041
	DAS_CLOCK_CRAFT_ALCH    = "苦い薬", -- 6042
	-- Apostle dailies : NPC = Novice Holli
	DAS_CLOCK_DELVE_MISP    = "場所の違う影", -- 6073
	DAS_CLOCK_DELVE_AGAI    = "再び影へ", -- 6079
	DAS_CLOCK_DELVE_MALF    = "影の異常", -- 6080
	DAS_CLOCK_DELVE_FANS    = "換気扇の油差し", -- 6081
	DAS_CLOCK_DELVE_FILT    = "フィルター交換", -- 6088
	DAS_CLOCK_DELVE_COMM    = "整流器を交換する", -- 6089
	-- Blackfeather Court dailies : NPC = Bursar of Tributes
	DAS_CLOCK_CROW_NIBB     = "つまみと肉片", -- 6070
	DAS_CLOCK_CROW_MORS     = "残飯とついばみ", -- 6071
	DAS_CLOCK_CROW_RESP     = "敬意の問題", -- 6072
	DAS_CLOCK_CROW_TRIB     = "貢物の問題", -- 6106
	DAS_CLOCK_CROW_LEIS     = "余暇の問題", -- 6107
	DAS_CLOCK_CROW_GLIT     = "ピカピカ輝くもの", -- 6110


	-- Vvardenfell / Morrowind
	-- Ashlander relic dailies : NPC = Numani-Rasi
	DAS_LIST_M_RELIC        = "〇〇の遺物 ",
	DAS_M_REL_YASAM         = "ヤサミダンの遺物", -- 5924
	DAS_M_REL_ASSAR         = "アサルナタマットの遺物", -- 5925
	DAS_M_REL_MAELK         = "メイルカシシの遺物", -- 5926
	DAS_M_REL_ASHUR         = "アシューナビタシュピの遺物", -- 5927
	DAS_M_REL_EBERN         = "エーベルナニトの遺物", -- 5928
	DAS_M_REL_DUSHA         = "デュシャリランの遺物", -- 5929
	DAS_M_REL_ASHAL         = "アシャルマウィアの遺物", -- 5930
	-- Ashlander hunt dailies : NPC = Huntmaster Sorim-Nakar
	DAS_M_HUNT_ZEXXI        = "グレート・ゼクシン狩り", -- 5907
	DAS_M_HUNT_TARRA        = "タッラ・スジュ狩り", -- 5908
	DAS_M_HUNT_SVEET        = "苦悶のスヴィース狩り", -- 5909
	DAS_M_HUNT_JAGGE        = "マザー・ジャグドクロー狩り", -- 5910
	DAS_M_HUNT_EATER        = "アッシュ・イーター狩り", -- 5911
	DAS_M_HUNT_STOMP        = "オールド・ストンパー狩り", -- 5912
	DAS_M_HUNT_RAZOR        = "キング・レイザータスク狩り", -- 5913
	-- World Boss dailies : NPC = Beleru Omoril
	DAS_M_BOSS_SWARM        = "群れの間引き", -- 5865
	DAS_M_BOSS_NILTH        = "オックスを見つけた", -- 5866
	DAS_M_BOSS_SALOT        = "サロサンの呪い", -- 5904
	DAS_M_BOSS_SIREN        = "セイレーンの歌", -- 5906
	DAS_M_BOSS_APPRE        = "不安な見習い", -- 5916
	DAS_M_BOSS_WUYWU        = "這い寄るハンガー", -- 5918
	-- Delve dailies : NPC = Traylan Omoril
	DAS_M_DELVE_TRIBA       = "部族の問題", -- 5915
	DAS_M_DELVE_TAXES       = "税額控除", -- 5934
	DAS_M_DELVE_DAEDR       = "デイドラの妨害", -- 5956
	DAS_M_DELVE_SYNDI       = "落ち着かないギャング", -- 5958
	DAS_M_DELVE_MISIN       = "誤情報の植え付け", -- 5961
	DAS_M_DELVE_KWAMA       = "クワマーの難題", -- 5962


	-- Wrothgar / Orsinium
	-- Delve dailies : NPC = Guruzug
	DAS_W_WEREWOLVES        = "皮の貿易", -- 5504
	DAS_W_THAT_OTHER        = "要塞の火事", -- 5505
	DAS_W_HARPIES           = "変人の朝食", -- 5507
	DAS_W_DWEMER            = "全体の部分", -- 5509
	DAS_W_DURZOGS           = "腹いっぱい", -- 5514
	DAS_W_SPIRITS           = "霊魂の解放", -- 5515
	-- World Boss dailies : NPC = Arzorag
	DAS_W_POACHERS          = "大衆のための肉", -- 5518
	DAS_W_OGRE              = "学問的救出", -- 5519
	DAS_W_CORI              = "自然の恵み", -- 5521
	DAS_W_DOLMEN            = "無知という異端", -- 5522
	DAS_W_NYZ               = "雪と蒸気", -- 5523
	DAS_W_EDU               = "悪い遊びの臭い", -- 5524


	-- Gold coast / Dark Brotherhood
	-- Delve dailies : NPC = Bounty Board
	DAS_DB_EVIL             = "埋められた悪", -- 5603
	DAS_DB_GOOD             = "公共の利益", -- 5604
	-- World Boss dailies : NPC = Bounty Board
	DAS_DB_MINO             = "忍び寄る影", -- 5605
	DAS_DB_ARENA            = "群衆のどよめき", -- 5606


	-- Hew's Bane / Thieves Guild
	-- Heists
	DAS_HEWS_HDEAD          = "強奪: 虚空の広間", -- 5536
	DAS_HEWS_HHIDE          = "強奪: 隠れ場所", -- 5572
	DAS_HEWS_HUNDE          = "強奪: 地下墓地", -- 5573
	DAS_HEWS_HGLIT          = "強奪: グリタリング洞窟", -- 5575
	DAS_HEWS_HSECL          = "強奪: 僻地の下水道", -- 5577
	-- World Boss dailies
	DAS_HEWS_KOEST          = "失われた真珠", -- 5586
	DAS_HEWS_THRAL          = "虜囚の入り江", -- 5587
	-- Delve dailies
	DAS_HEWS_BAHRA          = "青春の記憶", -- 5588
	DAS_HEWS_SHARK          = "船乗りのキセル", -- 5589
	DAS_QUEST_TG_HEIST      = "強奪ボード", -- 87370069-0-20019
	DAS_QUEST_TG_REACQ      = "再取得掲示板", -- 87370069-0-20116
	DAS_QUEST_TG_FAREN      = "ファレン・ダー", -- 69599
	DAS_QUEST_TG_SPENC      = "スペンサー・ライ", -- 69854


	-- New Life Festival
	DAS_NL_EASTMARCH        = "雪熊の飛び込み", -- 5811
	DAS_NL_REAPERSMARCH     = "五つ爪の策略の試練", -- 5834
	DAS_NL_STONEFALLS       = "溶岩の踏み鳴らし", -- 5837
	DAS_NL_AURIDON          = "泥玉祭り", -- 5838
	DAS_NL_ALIKR            = "狼煙ダッシュ", -- 5839
	DAS_NL_STORMHAVEN       = "城の魅了の試練", -- 5845
	DAS_NL_GRAHTWOOD        = "戦争孤児の道", -- 5852
	DAS_NL_SHADOWFEN        = "魚介の宴", -- 5855
	DAS_NL_BETNIKH          = "ストントゥースの強撃", -- 5856
	-- Quest NPCs
	DAS_QUEST_NL_BREDA      = "ブレダ", -- 73855
	DAS_QUEST_NL_LIZARD     = "穏やかな心の者", -- 74198
	DAS_QUEST_NL_ORC        = "マトロン・ボルブガ", -- 74207
	DAS_QUEST_NL_CAT        = "トゥミラ", -- 74066


	-- Guild dailies
	DAS_GUILD_ANCHORS       = "〇〇のダークアンカー ",
	DAS_GUILD_MADNESS       = "〇〇の狂気 ",
	DAS_FG_ALIKR            = "アリクル砂漠のダークアンカー", -- 5786
	DAS_FG_AURID            = "オーリドンのダークアンカー", -- 5793
	DAS_FG_BANGK            = "バンコライのダークアンカー", -- 5787
	DAS_FG_DESHA            = "デシャーンのダークアンカー", -- 5789
	DAS_FG_EASTM            = "イーストマーチのダークアンカー", -- 5791
	DAS_FG_GLENU            = "グレナンブラのダークアンカー", -- 5833
	DAS_FG_GRAHT            = "グラーウッドのダークアンカー", -- 5794
	DAS_FG_GREEN            = "グリーンシェイドのダークアンカー", -- 5796
	DAS_FG_MALAB            = "マラバル・トールのダークアンカー", -- 5795
	DAS_FG_REAPE            = "リーパーズ・マーチのダークアンカー", -- 5797
	DAS_FG_RIFT             = "リフトのダークアンカー", -- 5792
	DAS_FG_RIVEN            = "リベンスパイアーのダークアンカー", -- 5785
	DAS_FG_SHADO            = "シャドウフェンのダークアンカー", -- 5790
	DAS_FG_STONE            = "ストンフォールのダークアンカー", -- 5788
	DAS_FG_STORM            = "ストームヘヴンのダークアンカー", -- 5784
	DAS_MG_ALIKR            = "アリクル砂漠の狂気", -- 5814
	DAS_MG_AURID            = "オーリドンの狂気", -- 5816
	DAS_MG_BANGK            = "バンコライの狂気", -- 5818
	DAS_MG_DESHA            = "デシャーンの狂気", -- 5819
	DAS_MG_EASTM            = "イーストマーチの狂気", -- 5820
	DAS_MG_GLENU            = "グレナンブラの狂気", -- 5822
	DAS_MG_GRAHT            = "グラーウッドの狂気", -- 5823
	DAS_MG_GREEN            = "グリーンシェイドの狂気", -- 5824
	DAS_MG_MALAB            = "マラバル・トールの狂気", -- 5825
	DAS_MG_REAPE            = "リーパーズ・マーチの狂気", -- 5826
	DAS_MG_RIFT             = "リフトの狂気", -- 5831
	DAS_MG_RIVEN            = "リベンスパイアーの狂気", -- 5827
	DAS_MG_SHADO            = "シャドウフェンの狂気", -- 5828
	DAS_MG_STONE            = "ストンフォールの狂気", -- 5829
	DAS_MG_STORM            = "ストームヘヴンの狂気", -- 5830
	DAS_UD_ALIKR            = "アリクル砂漠の溶けた真珠", -- 5745
	DAS_UD_AURID            = "オーリドンのベールのかかった闇", -- 5798
	DAS_UD_BANGK            = "バンコライの古代武具", -- 5733
	DAS_UD_DESHA            = "先人の結界(デシャーン)", -- 5735
	DAS_UD_EASTM            = "氷の陰謀(イーストマーチ)", -- 5779
	DAS_UD_GLENU            = "レッドルークのグレナンブラ略奪", -- 5739
	DAS_UD_GRAHT            = "アイレイドの小装飾品(グラーウッド)", -- 5738
	DAS_UD_GREEN            = "グリーンシェイドの正義の食事", -- 5853
	DAS_UD_MALAB            = "霊魂の罠(マラバル・トール)", -- 5734
	DAS_UD_REAPE            = "マスコット泥棒(リーパーズ・マーチ)", -- 5744
	DAS_UD_RIFT             = "燃え上がった薪(リフト)", -- 5802
	DAS_UD_RIVEN            = "闇の開花(リベンスパイアー)", -- 5808
	DAS_UD_SHADO            = "遺物の回収(シャドウフェン)", -- 5778
	DAS_UD_STONE            = "ストンフォールのドワーフ遺物", -- 5737
	DAS_UD_STORM            = "呪われた小物(ストームヘヴン)", -- 5800


	-- Craglorn
	-- lower
	DAS_CRAG_HERMY          = "シーカーの保管所", -- 5749
	DAS_CRAG_SHADA          = "破滅の都市シャダ", -- 5750
	DAS_CRAG_TUWHACCA       = "ラーニザの試練", -- 5751
	DAS_CRAG_NEREID         = "穢れた水", -- 5754
	DAS_CRAG_ELINHIR        = "究極の力", -- 5755
	DAS_CRAG_SARA           = "臨界質量", -- 5756
	DAS_CRAG_NEDE           = "戦う理由", -- 5762
	-- upper
	DAS_CRAG_HITMAN         = "真の牙", -- 5764
	DAS_CRAG_KIDNAP         = "生贄", -- 5765
	DAS_CRAG_SCALES         = "鉄と鱗と", -- 5766
	DAS_CRAG_NIRNCRUX       = "ニルンの血", -- 5767
	DAS_CRAG_NECRO          = "裏切られた魂", -- 5770
	DAS_CRAG_DUNGEON        = "檻からの解放", -- 5772
	DAS_CRAG_WORLDTRIP      = "灰色の道", -- 5777
	-- quest npcs
	DAS_QUEST_CRA_SARA      = "サラ・ベネレ", -- 72619
	DAS_QUEST_CRA_GREBA     = "グレバン", -- 72367
	DAS_QUEST_CRA_NHALA     = "ナーラン", -- 72629
	DAS_QUEST_CRA_RALAI     = "ラライ", -- 72554
	DAS_QUEST_CRA_IBRUL     = "イブルーラ", -- 72469
	DAS_QUEST_CRA_FIGHT     = "尾で戦う者", -- 72582
	DAS_QUEST_CRA_FADA      = "ファダ・アトグリナ", -- 72436
	DAS_QUEST_CRA_NENDI     = "ネンディルメ", -- 73118
	DAS_QUEST_CRA_GRAYP     = "灰色の道", -- 87370069-0-21018
	DAS_QUEST_CRA_LASHB     = "牙砕きのラッシュブラ", -- 72963
	DAS_QUEST_CRA_CRUSA     = "聖戦士ダラマー", -- 73366
	DAS_QUEST_CRA_SCATT     = "ばらまかれた葉の者", -- 72962
	DAS_QUEST_CRA_SAFA      = "サファ・アルサタカラーム", -- 72961
	DAS_QUEST_CRA_MERED     = "メデリック・ヴィガ", -- 73444
	DAS_QUEST_CRA_SALIM     = "サリマ", -- 72541
	DAS_QUEST_CRA_TISHI     = "ティシ", -- 72539
	DAS_QUEST_CRA_MINER     = "ミネルヴァ・ラウゾン", -- 72581
	DAS_QUEST_CRA_MASTE     = "ティメン師範", -- 72267
	DAS_QUEST_CRA_GRAYM     = "グレイ・メンヒル", -- 87370069-0-21024


	-- Quest NPC names
	DAS_QUEST_M_ASHLANDER   = "ハントマスター・ソリム・ネイカー", -- 76010
	DAS_QUEST_M_RIVYN       = "バトルマスター・リヴィン", -- 76622
	DAS_QUEST_CC_ROBOT      = "任務遂行ユニット", -- 79225
	DAS_QUEST_CC_CROW       = "貢物の財務官", -- 79171
	DAS_QUEST_CC_NOVICE     = "修練者ホリー", -- 79220
	DAS_QUEST_CC_THISTLE    = "アザミを跳び越える者", -- 78637
	DAS_QUEST_CC_DARO       = "助師ダロ", -- 78653
	DAS_QUEST_CC_TILELLE    = "入信者チエル", -- 79379
	DAS_QUEST_W_OUFA        = "オウファ軍曹", -- 59290
	DAS_QUEST_W_USHANG      = "ウシャング", -- 67144
	DAS_QUEST_W_BIRKHU      = "大胆なビルクフ", -- 67184
	DAS_QUEST_DB_ARVINA     = "聖職者アーヴィナ", -- 70157
	DAS_QUEST_DB_BOUNTY     = "賞金ボード", -- 87370069-0-20444
	DAS_QUEST_CAP_CARDEA    = "カルデア・ガルス", -- 74040
	DAS_QUEST_CAP_ALVUR     = "アルバー・バレン", -- 73953
	DAS_QUEST_CAP_BOLGRUL   = "ボルグルル", -- 71827
	DAS_QUEST_SS_TANO       = "司法高官タノリアン", -- 82013
	DAS_QUEST_SS_FARO       = "司法高官ファロウェル", -- 82121
	DAS_QUEST_SS_TANE       = "バトルリーブ・タネルライン", -- 82289
	DAS_QUEST_CRY_BATTLE    = "戦闘ミッションボード", -- 87370069-0-11718
	DAS_QUEST_CRY_BOUNTY    = "賞金ミッションボード", -- 87370069-0-11727
	DAS_QUEST_CRY_SCOUT     = "偵察ミッションボード", -- 87370069-0-10045
	DAS_QUEST_CRY_WARFR     = "前線ミッションボード", -- 87370069-0-11719
	DAS_QUEST_DB_LARONEN    = "ラロネン", -- 70175
	DAS_QUEST_DB_FINIA      = "フィニア・セレ", -- 70185
	DAS_QUEST_DB_CODUS      = "コダス・アプドゥガル", -- 70197
	DAS_QUEST_W_NEDNOR      = "ネドナー", -- 59374
	DAS_QUEST_W_THAZEK      = "サゼグ", -- 67076
	DAS_QUEST_W_ARUSHNA     = "アルシュナ", -- 59532
	DAS_QUEST_W_LILYAMEH    = "リリアメール", -- 67178
	DAS_QUEST_W_BAGRUBESH   = "バグラグベシュ", -- 67119
	DAS_QUEST_W_CIRANTILLE  = "シランティレ", -- 67123
	DAS_QUEST_W_MENNINIA    = "メンニア", -- 67021
	DAS_QUEST_W_SONOLIA     = "ソノリア・マスピディウス", -- 67193
	DAS_QUEST_W_RAYNOR      = "レイノー・ヴァノス", -- 65557
	DAS_QUEST_M_TRAYLAN     = "トレイラン・オモリル", -- 74468
	DAS_QUEST_M_BELERU      = "ベレル・オモリル", -- 74469
	DAS_QUEST_M_NUMANI      = "ヌマニ・ラシ", -- 76157
	DAS_QUEST_M_NARA        = "ナラ・バラム", -- 76059
	DAS_QUEST_M_TIRVINA     = "ティルヴィナ・アヴァニ", -- 76077
	DAS_QUEST_M_DINOR       = "ディノー・サルヴィ", -- 74475
	DAS_QUEST_M_BRAVOSI     = "ブラヴォシ・フェルダー", -- 74513
	DAS_QUEST_M_IVULEN      = "イヴレン・アンドロモ", -- 75960
	DAS_QUEST_M_SAVILE      = "サヴィル・アラム", -- 76726
	DAS_QUEST_M_KYLIA       = "カイリア・サンド", -- 76765
	DAS_QUEST_M_EVOS        = "エヴォス・フレダス", -- 76747
	DAS_QUEST_M_ALVES       = "アルヴェス・ドロス", -- 76382
	DAS_QUEST_M_DREDASE     = "ドレダス・フラール", -- 76024
	DAS_QUEST_M_VORAR       = "ヴォラール・ヴェンドゥ", -- 76730
	DAS_QUEST_M_VALGA       = "ヴァルガ・セラトゥス", -- 75969
	DAS_QUEST_CC_ORC        = "ラズグルグ", -- 78634
	DAS_QUEST_CC_COOK       = "アヴェバール・トレモウイレ", -- 78643
	DAS_QUEST_CC_MINDORA    = "ミンドラ", -- 78642
	DAS_QUEST_CC_NJORD      = "ニョルデマール", -- 78641
	DAS_QUEST_CC_IGMUND     = "イグムンド", -- 78905
	DAS_QUEST_W_GURUZUG     = "グルズグ", -- 67019
	DAS_QUEST_W_ARZORAG     = "アルゾラグ", -- 67018


	-- Blackwood
	-- World Boss dailies : NPC = Brita Silanus
	DAS_QUEST_BW_BOSS       = "ブリッタ・シラーヌス", -- 100913
	DAS_BLACKWD_EXCAV       = "牛人の伝説", -- 6645
	DAS_BLACKWD_TOAD        = "ゴブリン研究", -- 6649
	DAS_BLACKWD_RITUAL      = "スル・ザンの儀式", -- 6650
	DAS_BLACKWD_FROG        = "カエルの王国", -- 6651
	DAS_BLACKWD_LAGOON      = "戦利品を奪う者", -- 6652
	DAS_BLACKWD_XANMEER     = "ルイナクの呼び声", -- 6653
	-- Delve dailies : NPC = Deetum-Jas
	DAS_QUEST_BW_DELVE      = "ディータム・ジャス", -- 100912
	DAS_BLACKWD_BLESS       = "公式の祝福", -- 6644
	DAS_BLACKWD_BLOODRUN    = "影の戦術", -- 6665
	DAS_BLACKWD_BEAUTY      = "危険の中の美", -- 6668
	DAS_BLACKWD_CONFLICT    = "利害の衝突", -- 6673
	DAS_BLACKWD_CHAIN       = "束縛からの解放", -- 6674
	DAS_BLACKWD_INSECT      = "虫の救い主", -- 6675


	-- Southern Elsweyr
	-- World Boss dailies : NPC = Bruccius Baenius
	DAS_QUEST_SE_BOSS       = "ブルッシウス・バエニウス", -- 91767
	DAS_SE_PARIAH           = "流血の牙の追放者", -- 6376
	DAS_SE_HEAL             = "治癒師の支援", -- 6421
	DAS_SE_RICE             = "はぐれモンクと米", -- 6422
	DAS_SE_DUST             = "埃の一撃", -- 6423
	DAS_SE_SCHOL            = "学者の観察", -- 6424
	DAS_SE_FLETCH           = "矢の入手", -- 6425
	-- Delve dailies : NPC = Guybert Flaubert
	DAS_QUEST_SE_DELVE      = "ギベール・フロベール", -- 91769
	DAS_SE_TOMES            = "ツァエシの書", -- 6419
	DAS_SE_SWORD            = "魔法の武器の調達", -- 6431
	DAS_SE_CANDLE           = "キャンドルライトの慰め", -- 6432
	DAS_SE_LILY             = "追憶の百合", -- 6436
	DAS_SE_MUSH             = "月光のキノコ", -- 6437
	DAS_SE_BLOOD            = "血の回答", -- 6438
	-- Dragon Hunt dailies : NPC = Chizbari the Chipper
	DAS_QUEST_SE_DRAGONS    = "快活なチズバリ", -- 91289
	DAS_SE_DRAGON2          = "ドラゴンガードの採石場", -- 6434
	DAS_SE_DRAGON1          = "ドラゴンガードの夜明け", -- 6444
	-- Dragonguard dailies : NPC = Dirge Truptor
	DAS_QUEST_SE_DELVE2     = "ディルジ・トルプター", -- 91226
	DAS_SE_TUSK             = "牙に運べ", -- 6405
	DAS_SE_GRAVE            = "孤独な墓", -- 6406
	DAS_SE_BONES            = "杭と骨", -- 6428
	DAS_SE_GARD             = "庭園の発掘", -- 6429
	DAS_SE_FILE             = "Dの文書", -- 6430
	DAS_SE_AWAK             = "突然の目覚め", -- 6433
}

DAS_STRINGS_LOCALE.jp = strings
for stringId, stringValue in pairs(strings) do
	ZO_CreateStringId(stringId, stringValue)
	SafeAddVersion(stringId, 2)
end
