DAS_STRINGS_LOCALE = DAS_STRINGS_LOCALE or {}
local strings  = {
	-- Key bindings
	DAS_SI_TOGGLE			= "Скрыть/показать",
	DAS_SI_MINIMISE			= "Свернуть/развернуть",

	-- GUI
	-- Drag bar button tooltips
	DAS_GUI_BTN_LOCK		= "Закрепить окно",
	DAS_GUI_BTN_UNLOCK		= "Открепить окно",
	DAS_GUI_BTN_HIDE		= "Скрыть DailyAutoShare",
	DAS_GUI_BTN_REFRESH		= "Обновить",
	DAS_GUI_BTN_MINIMISE	= "Свернуть окно",
	DAS_GUI_BTN_MAXIMISE	= "Развернуть окно",

	-- QuestList button tooltips
	DAS_GUI_INVITE_TRUE		= "Автоприглашения |c89FFE3включены|r",
	DAS_GUI_INVITE_FALSE	= "Автоприглашения |cDF6C00отключены|r",
	DAS_GUI_ACCEPT_TRUE		= "Автоприём ежедневных заданий |c89FFE3включён|r",
	DAS_GUI_ACCEPT_FALSE	= "Ежедневные задания |cDF6C00не принимаются автоматически|r",
	DAS_GUI_SHARE_TRUE		= "|c89FFE3Автораздача взятых ежедневных заданий|r при вступлении кого-то в группу или по слову «share» в чате группы.\n\nЩелкните ПКМ для раздачи взятых ежедневок",
	DAS_GUI_SHARE_FALSE		= "Автораздача взятых ежедневных заданий |cDF6C00ОТКЛЮЧЕНА|r.\n\nПКМ для принудительной раздачи",
	DAS_GUI_BTN_SPAM		= "Нажмите для рекламы в зончат",
	DAS_GUI_BTN_SPAM_ASK	= "Нажмите для выпрашивания заданий в чате",
	DAS_GUI_BTN_DONATE		= "Посетить страничку на GitHub, чтобы сообщить об ошибке или отблагодарить\n|c89FFE3— <3 manavortex и команда|r",

	-- Quest tooltips
	DAS_GUI_SUBLIST_OPEN	= "Нажмите для раскрытия списка заданий",
	DAS_GUI_Q_IS_DONE		= "завершено сегодня", -- quest state 0
	DAS_GUI_Q_IS_OPEN		= "не сделано", -- quest state 1
	DAS_GUI_Q_IS_ACTIVE		= "взято", -- quest state 2
	DAS_GUI_Q_BINGO			= "\nКод раздачи: <<1>>", -- 1 is the bingo code
	DAS_GUI_Q_TIP			= "«<<1>>» |c<<2>><<3>>|r<<4>>", -- 1 is Quest Name, 2 is colour, 3 is the quest state, 4 is either DAS_GUI_Q_BINGO or nothing
	DAS_GUI_Q_PREREQ		= "|c<<2>>Вам надо выполнить задание-пролог:|r\n• <<1>>", -- 1 is Quest Name, 2 is colour
	DAS_GUI_Q_RMB_TIP		= "ПКМ для меню с действиями",

	-- Quest context menu
	DAS_GUI_CTX_SUBLIST		= "Показать/скрыть список заданий",
	DAS_GUI_CTX_SPAM		= "Рекламу или код в чат",
	DAS_GUI_CTX_SHARE		= "Раздать",
	DAS_GUI_CTX_TRACK		= "→ Выбрать",
	DAS_GUI_CTX_ABANDON		= "|cFF0000Отказаться|r",
	DAS_GUI_CTX_OPEN_TRUE	= "Пометить как завершённое",
	DAS_GUI_CTX_OPEN_FALSE	= "Пометить как доступное",

	-- Settings panel
	DAS_MENU_URI_LOC		= "https://github.com/manavortex/DailyAutoShare/issues/41",
	DAS_MENU_H_GENERAL		= "Основные параметры",
	DAS_MENU_CB_GLOBAL		= "Глобальные настройки",
	DAS_MENU_CB_GLOBAL_TIP	= "Использовать общие для всех персонажей настройки?",
	DAS_MENU_CB_HIDE		= "Скрыть окно",
	DAS_MENU_CB_HIDE_NA		= "Скрывать в неактивных зонах",
	DAS_MENU_CB_HIDE_NA_TIP	= "Если отключено, в окне будут показываться выполненные ежедневки. Если включено, окно будет полностью скрыто.",
	-- activate menu
	DAS_MENU_CB_SUB_ENABLE	= "Включить",
	DAS_MENU_CB_SUB_HIDE	= "Спрятать",
	DAS_MENU_CB_SUB_HIDE_T	= "Убрать задания из списка, но продолжить их принимать и раздавать",
	DAS_MENU_SM_ACT			= "Включать DailyAutoShare в...",
	DAS_MENU_SM_ACT_TIP		= "Нажмите, чтобы настроить активацию мода для определённых областей и категорий.",
	DAS_MENU_H_ZONES		= "Области:",
	DAS_MENU_CB_BWOOD		= "Blackwood / Чёрный Лес",
	DAS_MENU_CB_CCITY		= "Clockwork City / Заводной город",
	DAS_MENU_SM_CCITY		= "Настройки Заводного города",
	DAS_MENU_CB_CC_DELV		= "Латунная крепость: логова",
	DAS_MENU_CB_CC_DELV_TIP	= "Задания выдаёт |cFFFFFF<<1>>|r в латунной крепости\nТребуется пройти хотя бы одно из этих заданий:\n• <<2>>\n• <<3>>", -- 1 is DAS_QUEST_CC_NOVICE
	DAS_MENU_CB_CC_BOSS		= "Латунная крепость: мировые боссы",
	DAS_MENU_CB_CC_BOSS_TIP	= "Задания выдаёт |cFFFFFF<<1>>|r в латунной крепости", -- 1 is DAS_QUEST_CC_ROBOT
	DAS_MENU_CB_CC_SLAG		= "Шлаковый район: задания на сбор",
	DAS_MENU_CB_CC_SLAG_TIP	= "Задания выдаёт |cFFFFFF<<1>>|r в латунной крепости", -- 1 is DAS_QUEST_CC_ORC
	DAS_MENU_CB_CC_CROW		= "Шлаковый район: Чернопёрый двор",
	DAS_MENU_CB_CC_CROW_TIP	= "Задания выдаёт |cFFFFFF<<1>>|r в латунной крепости\nТребуется пройти сюжет области дальше этого задания:\n• <<2>>", -- 1 is DAS_QUEST_CC_CROW
	DAS_MENU_CB_CRAG		= "Craglorn / Краглорн",
	DAS_MENU_CB_CYRO		= "Cyrodiil / Сиродил — штаб альянса",
	DAS_MENU_CB_CYRO_TIP	= "Поддерживается только пропуск диалогов при взятии и сдаче",
	DAS_MENU_CB_DEADL		= "Fargrave & The Deadlands / Фаргрейв и Мёртвые Земли",
	DAS_MENU_CB_DARKB		= "Gold Coast / Золотой берег",
	DAS_MENU_CB_THGLD		= "Hew's Bane / Проклятие Хью",
	DAS_MENU_CB_MURK		= "Murkmire / Мрачные трясины",
	DAS_MENU_SM_MURK		= "Настройки мрачных трясин",
	DAS_MENU_CB_MM_DELV		= "Лилмот: логова",
	DAS_MENU_CB_MM_DELV_TIP	= "Задания выдаёт |cFFFFFF<<1>>|r в Лилмоте\nТребуется пройти задание-пролог:\n• <<2>>", -- 1 is DAS_SLAVES_QUEST1
	DAS_MENU_CB_MM_BOSS		= "Лилмот: мировые боссы",
	DAS_MENU_CB_MM_BOSS_TIP	= "Задания выдаёт |cFFFFFF<<1>>|r в Лилмоте\nТребуется пройти задание-пролог:\n• <<2>>", -- 1 is DAS_SLAVES_QUEST3
	DAS_MENU_CB_MM_ROOT		= "Деревня шёпота-корня",
	DAS_MENU_CB_MM_ROOT_TIP	= "Задания выдаёт |cFFFFFF<<1>>|r в деревне шёпота-корня\nТребуется полностью пройти сюжет области", -- 1 is DAS_SLAVES_QUEST2
	DAS_MENU_CB_NELWR		= "Northern Elsweyr / Северный Эльсвейр",
	DAS_MENU_CB_PIKEYS		= "The Reach / Предел",
	DAS_MENU_CB_SELWR		= "Southern Elsweyr / Южный Эльсвейр",
	DAS_MENU_SM_SELWR		= "Настройки южного Эльсвейра",
	DAS_MENU_CB_SE_DELV		= "Сенчал: логова",
	DAS_MENU_CB_SE_DELV_TIP	= "Задания выдаёт |cFFFFFF<<1>>|r в Сенчале", -- 1 is DAS_QUEST_SE_DELVE
	DAS_MENU_CB_SE_BOSS		= "Сенчал: мировые боссы",
	DAS_MENU_CB_SE_BOSS_TIP	= "Задания выдаёт |cFFFFFF<<1>>|r в Сенчале", -- 1 is DAS_QUEST_SE_BOSS
	DAS_MENU_CB_SE_MOON		= "Приливной остров: Новая Луна",
	DAS_MENU_CB_SE_MOON_TIP	= "Задания выдаёт |cFFFFFF<<1>>|r в убежище Драконьей стражи\nТребуется пройти сюжет области дальше этого задания:\n• <<2>>", -- 1 is DAS_QUEST_SE_DELVE2
	DAS_MENU_CB_ELVES		= "Summerset / Саммерсет",
	DAS_MENU_CB_MWIND		= "Vvardenfell / Вварденфелл",
	DAS_MENU_SM_MWIND		= "Настройки Вварденфелла",
	DAS_MENU_CB_M_RELC		= "Эшлендеры: реликвии",
	DAS_MENU_CB_M_RELC_TIP	= "Задания выдаёт |cFFFFFF<<1>>|r в Альд’руне\nТребуется пройти оба указанных задания:\n• <<2>>\n• <<3>>", -- 1 is DAS_QUEST_M_NUMANI
	DAS_MENU_CB_M_HUNT		= "Эшлендеры: охота",
	DAS_MENU_CB_M_HUNT_TIP	= "Задания выдаёт |cFFFFFF<<1>>|r в Альд’руне\nТребуется пройти оба указанных задания:\n• <<2>>\n• <<3>>", -- 1 is DAS_QUEST_M_ASHLANDER
	DAS_MENU_CB_M_DELV		= "Вивек: логова",
	DAS_MENU_CB_M_DELV_TIP	= "Задания выдаёт |cFFFFFF<<1>>|r в Зале справедливости Вивека", -- 1 is DAS_QUEST_M_TRAYLAN
	DAS_MENU_CB_M_BOSS		= "Вивек: мировые боссы",
	DAS_MENU_CB_M_BOSS_TIP	= "Задания выдаёт |cFFFFFF<<1>>|r в Зале справедливости Вивека", -- 1 is DAS_QUEST_M_BELERU
	DAS_MENU_CB_GOTHS		= "Western Skyrim / Западный Скайрим",
	DAS_MENU_CB_ORCS		= "Wrothgar / Ротгар",
	DAS_MENU_H_GUILDS		= "Ежедневки от гильдий:",
	DAS_MENU_CB_GUILD		= "Гильдии бойцов и магов, и Неустрашимые",
	DAS_MENU_SM_GUILD		= "Настройки гильдий",
	DAS_MENU_CB_G_FG		= "Гильдия бойцов",
	DAS_MENU_CB_G_FG_TIP	= "Задания выдаёт |cFFFFFF<<1>>|r внутри отделелений гильдии бойцов в столицах альянсов",
	DAS_MENU_CB_G_FG_HIDE	= "Спрятать в столицах",
	DAS_MENU_CB_G_MG		= "Гильдия магов",
	DAS_MENU_CB_G_MG_TIP	= "Задания выдаёт |cFFFFFF<<1>>|r внутри отделелений гильдии магов в столицах альянсов",
	DAS_MENU_CB_G_MG_HIDE	= "Спрятать в столицах",
	DAS_MENU_CB_G_UD		= "Неустрашимые",
	DAS_MENU_CB_G_UD_TIP	= "Задания выдаёт |cFFFFFF<<1>>|r внутри анклава Неустрашимых в столицах альянсов",
	DAS_MENU_CB_G_UD_HIDE	= "Спрятать в столицах",
	DAS_MENU_H_EVENTS		= "Праздники:",
	DAS_MENU_CB_E_NL		= "Новая жизнь",
	DAS_MENU_CB_E_NL_TIP	= "Включить ежедневки фестиваля новой жизни",
	-- invite menu
	DAS_MENU_SM_INVITE		= "Текст и поведение приглашений",
	DAS_MENU_TB_QST			= "Текст рекламы раздачи",
	DAS_MENU_TB_QST_TIP		= "Текст, который будет собираться модом в рекламу для рассылки в зончат.\n<<1>> заменится на названия заданий, а <<2>> — на коды для автоприглашения.\nУберите любой из параметров, чтобы он не учитывался.",
	DAS_MENU_BTN_QSTRST		= "Сбросить",
	DAS_MENU_BTN_QSTRST_TIP	= "Сбросить текст рекламы на стандартный",
	DAS_MENU_CB_WOMOD		= "Режим «приём только в шёпот»",
	DAS_MENU_CB_WOMOD_TIP	= "Если включено, будет игнорировать коды в зончате!",
	DAS_MENU_TB_WOT			= "Текст рекламы в режиме шёпота",
	DAS_MENU_TB_WOT_TIP		= "Заменит собой всё, что после <<1>> в тексте рекламы раздачи выше",
	DAS_MENU_H_GLDAUTOINV	= "Авто-приглашения для гильдчатов",
	DAS_MENU_DD_GAI			= "Авто-приглашать по коду в гильд-чат...",
	DAS_MENU_DD_GAI_TIP		= "Чат какой гильдии необходимо прослушивать?",
	DAS_MENU_DD_GAI_NONE	= "(не выбрано)",
	DAS_MENU_TB_GAICODE		= "Код автоприглашения",
	DAS_MENU_TB_GAICODE_TIP	= "Оставьте пустым, чтобы отключить.\nЗадайте как |cFFFFFFblah|r для автоприглашения по |cFFFFFF+blah|r в чат и т. п.",
	DAS_MENU_CB_GCHAT		= "Прослушивать все гильд-чаты для кодов раздач",
	-- gui menu
	DAS_MENU_H_GUI			= "Внешний вид окошка DAS",
	DAS_MENU_CB_GUILOCK		= "Закрепить положение окна",
	DAS_MENU_CB_TTRIGHT		= "Рисовать подсказки и подменю справа",
	DAS_MENU_CB_TTRIGHT_TIP	= "Отключите, чтобы подсказки и подменю показывались слева",
	DAS_MENU_CB_GUIUP		= "Наращивать размер снизу вверх",
	DAS_MENU_CB_GUIUP_TIP	= "Включите, чтобы список заданий вырастал наверх над панелью мода, а не вниз под нею",
	DAS_MENU_CB_GUISM		= "Барби-сайз при запуске",
	DAS_MENU_CB_GUISM_TIP	= "При входе в игру показывать окно свёрнутым",
	DAS_MENU_CB_HIDE_CQ		= "Скрывать окно при выполнении всех ежедневок",
	DAS_MENU_CB_HIDE_CQ_TIP	= "Включите, чтобы окно DAS скрывалось после завершения всех заданий в этой зоне",
	DAS_MENU_CB_MINI_CQ		= "Сворачивать окно при выполнении всех ежедневок",
	DAS_MENU_CB_MINI_CQ_TIP	= "Включите, чтобы окно DAS сворачивалось после завершения всех заданий в этой зоне. Гасится автоскрытием.",
	DAS_MENU_CB_DEL_CQ		= "Скрывать выполненные задания",
	DAS_MENU_CB_DEL_CQ_TIP	= "Если отключено, выполненные задания продолжают висеть в списке. Включите, чтобы скрывать их.",
	DAS_MENU_CB_FSIZE		= "Размер шрифта",
	DAS_MENU_CB_FSIZE_TIP	= "Настроить масштаб для текста. 80 — годная отправная точка для таких областей как Вварденфелл.",
	-- automation options
	DAS_MENU_H_AUTOM		= "Автоматически...",
	DAS_MENU_CB_ACCEPT		= "принимать раздаваемые задания",
	DAS_MENU_CB_ACCEPT_TIP	= "Включить автоприём ежедневных заданий при их раздаче?",
	DAS_MENU_CB_DSKIP		= "пропускать диалоги у ежедневок",
	DAS_MENU_CB_DSKIP_TIP	= "Прощёлкивать все диалоги при получении и сдаче ежедневных заданий?",
	DAS_MENU_CB_INVITE		= "принимать по кодам в зончате",
	DAS_MENU_CB_INVITE_TIP	= "Любите организованные походы? Включите для автоприглашения людей, отправляющих коды взятых вами заданий\nТо же самое, что и кнопка «Автоприглашения» в окне DAS",
	DAS_MENU_CB_GLAIOFF		= "отключать автоприём при выходе из группы",
	DAS_MENU_CB_GLAIOFF_TIP	= "Отключать автоприём, если вы покинули группу?",
	DAS_MENU_CB_GLASHON		= "включать автораздачу при выходе из группы",
	DAS_MENU_CB_GLASHON_TIP	= "Включать автораздачу обратно, если вы покинули группу?",
	DAS_MENU_CB_AGLSPAM		= "выходить из группы при поиске задания",
	DAS_MENU_CB_AGLSPAM_TIP = "Автоматически покидать группу, если вы скинули в зончат код невзятого задания?",
	DAS_MENU_SL_AJBINGO		= "вступать в группу ... сек. после +кода в зончат",
	DAS_MENU_SL_AJBINGO_TIP	= "Как долго мод должен автопринимать приглашения в группу после отправления вами в зончат кода раздачи?\nУстановите в 0, чтобы отключить",
	-- throttling options
	DAS_MENU_H_POLITE		= "Замедлить рассылку приглашений и заданий",
	DAS_MENU_SL_INVTIME		= "Задержка для приглашений в группу (мс)",
	DAS_MENU_SL_INVTIME_TIP	= "Настройте, если вас выкидывает на вход при попытке собрать группу.\n1000 мс = 1 секунда.",
	DAS_MENU_CB_SHRTIME		= "Задержка для автораздачи заданий (мс)",
	DAS_MENU_CB_SHRTIME_TIP	= "Настройте, если вас выкидывает на вход при добавлении людей в группу.\n1000 мс = 1 секунда.",
	-- misc options
	DAS_MENU_CB_H_STUFF		= "Разное",
	DAS_MENU_CB_DEBUG		= "Режим отладки",


	-- QUEST DATA

	-- Quest names are located in the table 52420949-0 of RU.lang
	-- NPC names are located in the table 8290981-0 of RU.lang
	-- Specify NPC names with all dynamic grammar pre-applied,
	-- e.g. "La justiciar Farowël", not "justiciar Farowël^fd"


	-- Northern Elsweyr
	-- Delve dailies : NPC = Nisuzi
	DAS_QUEST_NE_DELVE      = "Нисузи",                              -- 88072
	DAS_KITTY_FLAME         = "Даэдрическое пламя должно погаснуть", -- 6356
	DAS_KITTY_WIND          = "Мудрость ветра",                      -- 6359
	DAS_KITTY_RUINS         = "Рыщущие в руинах",                    -- 6360
	DAS_KITTY_HUNGRY        = "Благосклонность Голодного Кота",      -- 6361
	DAS_KITTY_STAMPEDE      = "Бегство Змея",                        -- 6362
	DAS_KITTY_TEA           = "Хитросплетение чайных листьев",       -- 6363
	-- World Boss dailies : NPC = Ri'hirr
	DAS_QUEST_NE_BOSS       = "Ри'хирр",                             -- 88139
	DAS_KITTY_SWORD         = "Меч Змеи",                            -- 6377
	DAS_KITTY_WILY          = "Ужас для торговцев",                  -- 6378
	DAS_KITTY_NIGHTMARE     = "Ходячий кошмар",                      -- 6379
	DAS_KITTY_DEATH         = "Новый день — новая смерть",           -- 6380
	DAS_KITTY_DUO           = "Гнусная парочка",                     -- 6381
	DAS_KITTY_SENCHE        = "Сенч и разложение",                   -- 6382
	-- Dragon Hunt dailies : NPC = Battlereeve Tanerline
	DAS_QUEST_TANERLIN      = "Рив-командир Танерлин",               -- 88741
	DAS_KITTY_DRAGON        = "Охота на драконов",                   -- 6357


	-- Murkmire
	-- World Boss dailies : NPC = Bolu
	DAS_SLAVES_QUEST3       = "Болу",                          -- 85085
	DAS_SLAVES_BOSS_1       = "Замогильные обстоятельства",    -- 6233
	DAS_SLAVES_BOSS_5       = "Старые заросли",                -- 6234
	DAS_SLAVES_BOSS_3       = "Старые безделушки",             -- 6235
	DAS_SLAVES_BOSS_2       = "Замогильные ожидания",          -- 6236
	DAS_SLAVES_BOSS_6       = "Замогильные сувениры",          -- 6237
	DAS_SLAVES_BOSS_4       = "Старые враги",                  -- 6238
	-- Delve dailies : NPC = Varo Hosidias
	DAS_SLAVES_QUEST1       = "Варон Осидиас",                 -- 85212
	DAS_SLAVES_DELVE_6      = "Вес слов",                      -- 6247
	DAS_SLAVES_DELVE_3      = "Старые свитки",                 -- 6248
	DAS_SLAVES_DELVE_1      = "Старинная броня",               -- 6253
	DAS_SLAVES_DELVE_4      = "Священные свечи",               -- 6264
	DAS_SLAVES_DELVE_5      = "Инструменты для кровопускания", -- 6267
	DAS_SLAVES_DELVE_2      = "Образцы смерти",                -- 6268
	-- Root-Whisper dailies : NPC = Tuwul
	DAS_SLAVES_QUEST2       = "Тувул",                         -- 86275
	DAS_SLAVES_ROOT_1       = "Целительное алоэ",              -- 6286
	DAS_SLAVES_ROOT_4       = "Питательные грибы",             -- 6287
	DAS_SLAVES_ROOT_2       = "Пропавшие посланники",          -- 6288
	DAS_SLAVES_ROOT_5       = "Спрятанные подношения",         -- 6289
	DAS_SLAVES_ROOT_3       = "Защитная кожа",                 -- 6290


	-- Summerset
	-- Delve dailies : NPC = Justiciar Tanorian
	DAS_ELF_PILGR           = "Завершение паломничества",  -- 6152
	DAS_ELF_LIGHT           = "Тушение пламени",           -- 6156
	DAS_ELF_ROSE            = "Красота розы",              -- 6157
	DAS_ELF_RELIC           = "Волокита с реликвиями",     -- 6158
	DAS_ELF_SERPE           = "Сокращение популяции змей", -- 6159
	DAS_ELF_MEMO            = "Вычеркнуть из памяти",      -- 6160
	-- World Boss dailies : NPC = Justiciar Farowel
	DAS_ELF_QUEEN           = "Болезнь моря",              -- 6082
	DAS_ELF_WILD            = "Укрощение дикой природы",   -- 6083
	DAS_ELF_ALCHE           = "Глубинный алхимик",         -- 6084
	DAS_ELF_GRIFFIN         = "Птицы одного пера",         -- 6085
	DAS_ELF_GRAVE           = "Вечная память",             -- 6086
	DAS_ELF_SNAKE           = "На мели",                   -- 6087
	-- Geyser dailies : NPC = Battlereeve Tanerline
	DAS_ELF_GEYSER          = "Затопление Саммерсета",     -- 6166


	-- Clockwork City
	-- Brass Fortress dailies : NPC = Clockwork Facilitator
	DAS_CLOCK_IMP           = "Пробуждение Несовершенства", -- 6076
	DAS_CLOCK_FOE           = "Враг в роскошном оперении",  -- 6077
	-- Slag Town dailies : NPC = Razgurug
	DAS_CLOCK_CRAFT_WOOD    = "Масло в огонь",              -- 6037
	DAS_CLOCK_CRAFT_SMITH   = "Ежедневная молотилка",       -- 6038
	DAS_CLOCK_CRAFT_CLOTH   = "Нити для пряжи",             -- 6039
	DAS_CLOCK_CRAFT_WATER   = "Липкое решение",             -- 6040
	DAS_CLOCK_CRAFT_RUNE    = "Сбор зачарований",           -- 6041
	DAS_CLOCK_CRAFT_ALCH    = "Горькая пилюля",             -- 6042
	-- Apostle dailies : NPC = Novice Holli
	DAS_CLOCK_DELVE_MISP    = "Пропавшая тень",             -- 6073
	DAS_CLOCK_DELVE_AGAI    = "Снова в тень",               -- 6079
	DAS_CLOCK_DELVE_MALF    = "Сумрачная неисправность",    -- 6080
	DAS_CLOCK_DELVE_FANS    = "Смазывание вентиляторов",    -- 6081
	DAS_CLOCK_DELVE_FILT    = "Замена фильтров",            -- 6088
	DAS_CLOCK_DELVE_COMM    = "Замена преобразователей",    -- 6089
	-- Blackfeather Court dailies : NPC = Bursar of Tributes
	DAS_CLOCK_CROW_NIBB     = "Кусочки и частички",         -- 6070
	DAS_CLOCK_CROW_MORS     = "Лакомые кусочки",            -- 6071
	DAS_CLOCK_CROW_RESP     = "Вопрос уважения",            -- 6072
	DAS_CLOCK_CROW_TRIB     = "Вопрос о подношениях",       -- 6106
	DAS_CLOCK_CROW_LEIS     = "Вопрос досуга",              -- 6107
	DAS_CLOCK_CROW_GLIT     = "Шик и блеск",                -- 6110


	-- Vvardenfell / Morrowind
	-- Ashlander relic dailies : NPC = Numani-Rasi
	DAS_LIST_M_RELIC        = "Реликвии из ",
	DAS_M_REL_YASAM         = "Реликвии из Ясаммидана",       -- 5924
	DAS_M_REL_ASSAR         = "Реликвии из Ассарнатамата",    -- 5925
	DAS_M_REL_MAELK         = "Реликвии из Мелкашиши",        -- 5926
	DAS_M_REL_ASHUR         = "Реликвии из Ассурнабиташпи",   -- 5927
	DAS_M_REL_EBERN         = "Реликвии из Эбернанита",       -- 5928
	DAS_M_REL_DUSHA         = "Реликвии из Душарирана",       -- 5929
	DAS_M_REL_ASHAL         = "Реликвии из Ашалмавии",        -- 5930
	-- Ashlander hunt dailies : NPC = Huntmaster Sorim-Nakar
	DAS_M_HUNT_ZEXXI        = "Охота на Великого Зексина",    -- 5907
	DAS_M_HUNT_TARRA        = "Охота на Тарру-Судж",          -- 5908
	DAS_M_HUNT_SVEET        = "Охота на Извивающегося Свита", -- 5909
	DAS_M_HUNT_JAGGE        = "Охота на Зазубренную Клешню",  -- 5910
	DAS_M_HUNT_EATER        = "Охота на Пеплоеда",            -- 5911
	DAS_M_HUNT_STOMP        = "Охота на Старого Топотуна",    -- 5912
	DAS_M_HUNT_RAZOR        = "Охота на Острого Клыка",       -- 5913
	-- World Boss dailies : NPC = Beleru Omoril
	DAS_M_BOSS_SWARM        = "Прополка колонии",             -- 5865
	DAS_M_BOSS_NILTH        = "Волам здесь не место",         -- 5866
	DAS_M_BOSS_SALOT        = "Проклятье Салотан",            -- 5904
	DAS_M_BOSS_SIREN        = "Песня сирены",                 -- 5906
	DAS_M_BOSS_APPRE        = "Обеспокоенная ученица",        -- 5916
	DAS_M_BOSS_WUYWU        = "Алчущий в засаде",             -- 5918
	-- Delve dailies : NPC = Traylan Omoril
	DAS_M_DELVE_TRIBA       = "Проблемы племени",             -- 5915
	DAS_M_DELVE_TAXES       = "Налоговый вычет",              -- 5934
	DAS_M_DELVE_DAEDR       = "Даэдрический срыв",            -- 5956
	DAS_M_DELVE_SYNDI       = "Беспокойный синдикат",         -- 5958
	DAS_M_DELVE_MISIN       = "Подложная истина",             -- 5961
	DAS_M_DELVE_KWAMA       = "Задачка с квама",              -- 5962


	-- Wrothgar / Orsinium
	-- Delve dailies : NPC = Guruzug
	DAS_W_WEREWOLVES        = "Торговля шкурами",       -- 5504
	DAS_W_THAT_OTHER        = "Пожар в твердыне",       -- 5505
	DAS_W_HARPIES           = "Завтрак безумца",        -- 5507
	DAS_W_DWEMER            = "Части целого",           -- 5509
	DAS_W_DURZOGS           = "До отвала",              -- 5514
	DAS_W_SPIRITS           = "Свободные души",         -- 5515
	-- World Boss dailies : NPC = Arzorag
	DAS_W_POACHERS          = "Мясо в массы",           -- 5518
	DAS_W_OGRE              = "Спасение во имя знаний", -- 5519
	DAS_W_CORI              = "Щедрость природы",       -- 5521
	DAS_W_DOLMEN            = "Ересь невежества",       -- 5522
	DAS_W_NYZ               = "Снег и пар",             -- 5523
	DAS_W_EDU               = "Нечестная игра",         -- 5524


	-- Gold coast / Dark Brotherhood
	-- Delve dailies : NPC = Bounty Board
	DAS_DB_EVIL             = "Захороненное зло", -- 5603
	DAS_DB_GOOD             = "Всеобщее благо",   -- 5604
	-- World Boss dailies : NPC = Bounty Board
	DAS_DB_MINO             = "Тени сгущаются",   -- 5605
	DAS_DB_ARENA            = "Рев толпы",        -- 5606


	-- Hew's Bane / Thieves Guild
	-- Heists
	DAS_HEWS_HDEAD          = "Ограбление: залы Мертвой Пустоты", -- 5536
	DAS_HEWS_HHIDE          = "Ограбление: Укрытие",              -- 5572
	DAS_HEWS_HUNDE          = "Ограбление: подземная гробница",   -- 5573
	DAS_HEWS_HGLIT          = "Ограбление: Сверкающий грот",      -- 5575
	DAS_HEWS_HSECL          = "Ограбление: закрытая канализация", -- 5577
	-- World Boss dailies
	DAS_HEWS_KOEST          = "Потерянные жемчужины",             -- 5586
	DAS_HEWS_THRAL          = "Бухта Рабов",                      -- 5587
	-- Delve dailies
	DAS_HEWS_BAHRA          = "Воспоминания о молодости",         -- 5588
	DAS_HEWS_SHARK          = "Трубка моряка",                    -- 5589
	DAS_QUEST_TG_HEIST      = "Доска ограблений",                 -- 87370069-0-20019
	DAS_QUEST_TG_REACQ      = "Доска объявлений о кражах",        -- 87370069-0-20116
	DAS_QUEST_TG_FAREN      = "Фа'рен-дар",                       -- 69599
	DAS_QUEST_TG_SPENC      = "Спенсер Рай",                      -- 69854


	-- New Life Festival
	DAS_NL_EASTMARCH        = "Ныряние снежного медведя",       -- 5811
	DAS_NL_REAPERSMARCH     = "Испытание когтистого коварства", -- 5834
	DAS_NL_STONEFALLS       = "Пляска лавовых ног",             -- 5837
	DAS_NL_AURIDON          = "Грязеброс",                      -- 5838
	DAS_NL_ALIKR            = "Забег сигнальных огней",         -- 5839
	DAS_NL_STORMHAVEN       = "Замковое состязание очарования", -- 5845
	DAS_NL_GRAHTWOOD        = "Паломничество сирот войны",      -- 5852
	DAS_NL_SHADOWFEN        = "Пир рыбного блага",              -- 5855
	DAS_NL_BETNIKH          = "Удар Каменного Зуба",            -- 5856
	-- Quest NPCs
	DAS_QUEST_NL_BREDA      = "Брэда",                          -- 73855
	DAS_QUEST_NL_LIZARD     = "Нежное-Сердце",                  -- 74198
	DAS_QUEST_NL_ORC        = "Матрона Борбуга",                -- 74207
	DAS_QUEST_NL_CAT        = "Тумира",                         -- 74066


	-- Guild dailies
	DAS_GUILD_ANCHORS       = "Тёмные якоря в ",
	DAS_GUILD_MADNESS       = "Безумие в ",
	DAS_FG_ALIKR            = "Темные якоря в пустыне Алик'р",            -- 5786
	DAS_FG_AURID            = "Темные якоря на Ауридоне",                 -- 5793
	DAS_FG_BANGK            = "Темные якоря в Бангкорае",                 -- 5787
	DAS_FG_DESHA            = "Темные якоря в Дешаане",                   -- 5789
	DAS_FG_EASTM            = "Темные якоря в Истмарке",                  -- 5791
	DAS_FG_GLENU            = "Темные якоря в Гленумбре",                 -- 5833
	DAS_FG_GRAHT            = "Темные якоря в Гратвуде",                  -- 5794
	DAS_FG_GREEN            = "Темные якоря в Гриншейде",                 -- 5796
	DAS_FG_MALAB            = "Темные якоря в Малабал-Торе",              -- 5795
	DAS_FG_REAPE            = "Темные якоря в Марке Смерти",              -- 5797
	DAS_FG_RIFT             = "Темные якоря в Рифте",                     -- 5792
	DAS_FG_RIVEN            = "Темные якоря в Ривенспайре",               -- 5785
	DAS_FG_SHADO            = "Темные якоря в Тенетопи",                  -- 5790
	DAS_FG_STONE            = "Темные якоря в Стоунфолзе",                -- 5788
	DAS_FG_STORM            = "Темные якоря в Стормхейвене",              -- 5784
	DAS_MG_ALIKR            = "Безумие в пустыне Алик'р",                 -- 5814
	DAS_MG_AURID            = "Безумие на Ауридоне",                      -- 5816
	DAS_MG_BANGK            = "Безумие в Бангкорае",                      -- 5818
	DAS_MG_DESHA            = "Безумие в Дешаане",                        -- 5819
	DAS_MG_EASTM            = "Безумие в Истмарке",                       -- 5820
	DAS_MG_GLENU            = "Безумие в Гленумбре",                      -- 5822
	DAS_MG_GRAHT            = "Безумие в Гратвуде",                       -- 5823
	DAS_MG_GREEN            = "Безумие в Гриншейде",                      -- 5824
	DAS_MG_MALAB            = "Безумие в Малабал-Торе",                   -- 5825
	DAS_MG_REAPE            = "Безумие в Марке Смерти",                   -- 5826
	DAS_MG_RIFT             = "Безумие в Рифте",                          -- 5831
	DAS_MG_RIVEN            = "Безумие в Ривенспайре",                    -- 5827
	DAS_MG_SHADO            = "Безумие в Тенетопи",                       -- 5828
	DAS_MG_STONE            = "Безумие в Стоунфолзе",                     -- 5829
	DAS_MG_STORM            = "Безумие в Стормхейвене",                   -- 5830
	DAS_UD_ALIKR            = "Расплавленные жемчужины в пустыне Алик'р", -- 5745
	DAS_UD_AURID            = "Скрытая тьма на Ауридоне",                 -- 5798
	DAS_UD_BANGK            = "Старинный арсенал в Бангкорае",            -- 5733
	DAS_UD_DESHA            = "Обереги предков в Дешаане",                -- 5735
	DAS_UD_EASTM            = "Морозные интриги в Истмарке",              -- 5779
	DAS_UD_GLENU            = "Грабеж Красных Грачей в Гленумбре",        -- 5739
	DAS_UD_GRAHT            = "Айлейдские безделушки в Гратвуде",         -- 5738
	DAS_UD_GREEN            = "Кулинарное правосудие в Гриншейде",        -- 5853
	DAS_UD_MALAB            = "Ловушки для духов в Малабал-Торе",         -- 5734
	DAS_UD_REAPE            = "Кража талисмана в Марке Смерти",           -- 5744
	DAS_UD_RIFT             = "Горящие костры Рифта",                     -- 5802
	DAS_UD_RIVEN            = "Цветы тьмы в Ривенспайре",                 -- 5808
	DAS_UD_SHADO            = "Око за око в Тенетопи",                    -- 5778
	DAS_UD_STONE            = "Двемерские реликвии Стоунфолза",           -- 5737
	DAS_UD_STORM            = "Проклятые побрякушки Стормхейвена",        -- 5800


	-- Craglorn
	-- lower
	DAS_CRAG_HERMY          = "Архив Искателя",         -- 5749
	DAS_CRAG_SHADA          = "Павший город Шады",      -- 5750
	DAS_CRAG_TUWHACCA       = "Испытания Рахни'за",     -- 5751
	DAS_CRAG_NEREID         = "Нечистые воды",          -- 5754
	DAS_CRAG_ELINHIR        = "Высшая сила",            -- 5755
	DAS_CRAG_SARA           = "Критическая масса",      -- 5756
	DAS_CRAG_NEDE           = "Ради чего мы сражаемся", -- 5762
	-- upper
	DAS_CRAG_HITMAN         = "Истинные клыки",         -- 5764
	DAS_CRAG_KIDNAP         = "Захваченные живыми",     -- 5765
	DAS_CRAG_SCALES         = "Железо и чешуя",         -- 5766
	DAS_CRAG_NIRNCRUX       = "Кровь Нирна",            -- 5767
	DAS_CRAG_NECRO          = "Души преданных",         -- 5770
	DAS_CRAG_DUNGEON        = "Выпущенные из клеток",   -- 5772
	DAS_CRAG_WORLDTRIP      = "Серое шествие",          -- 5777
	-- quest npcs
	DAS_QUEST_CRA_SARA      = "Сара Бенель",            -- 72619
	DAS_QUEST_CRA_GREBA     = "Гребан",                 -- 72367
	DAS_QUEST_CRA_NHALA     = "Налан",                  -- 72629
	DAS_QUEST_CRA_RALAI     = "Ралай",                  -- 72554
	DAS_QUEST_CRA_IBRUL     = "Ибрула",                 -- 72469
	DAS_QUEST_CRA_FIGHT     = "Сражается-Хвостом",      -- 72582
	DAS_QUEST_CRA_FADA      = "Фада ат-Глена",          -- 72436
	DAS_QUEST_CRA_NENDI     = "Нендирума",              -- 73118
	DAS_QUEST_CRA_GRAYP     = "Серое шествие",          -- 87370069-0-21018
	DAS_QUEST_CRA_LASHB     = "Лашбурр Зуболом",        -- 72963
	DAS_QUEST_CRA_CRUSA     = "Крестоносец Даламар",    -- 73366
	DAS_QUEST_CRA_SCATT     = "Рассыпанные-Листья",     -- 72962
	DAS_QUEST_CRA_SAFA      = "Сафа аль-Сатакалаам",    -- 72961
	DAS_QUEST_CRA_MERED     = "Медерик Виже",           -- 73444
	DAS_QUEST_CRA_SALIM     = "Сали'ма",                -- 72541
	DAS_QUEST_CRA_TISHI     = "Тиши",                   -- 72539
	DAS_QUEST_CRA_MINER     = "Минерва Лозон",          -- 72581
	DAS_QUEST_CRA_MASTE     = "Мастер Тимен",           -- 72267
	DAS_QUEST_CRA_GRAYM     = "Серый менгир",           -- 87370069-0-21024


	-- Quest NPC names
	DAS_QUEST_M_ASHLANDER   = "Мастер-охотник Сорим-Накар",         -- 76010
	DAS_QUEST_M_RIVYN       = "Военачальник Ривин",                 -- 76622
	DAS_QUEST_CC_ROBOT      = "Координатор Заводного города",       -- 79225
	DAS_QUEST_CC_CROW       = "Казначей Подношений",                -- 79171
	DAS_QUEST_CC_NOVICE     = "Неофитка Холли",                     -- 79220
	DAS_QUEST_CC_THISTLE    = "Прыгает-Через-Кникус",               -- 78637
	DAS_QUEST_CC_DARO       = "Адъюнкт Дарон",                      -- 78653
	DAS_QUEST_CC_TILELLE    = "Посвященная Тилель",                 -- 79379
	DAS_QUEST_W_OUFA        = "Сержант Офа",                        -- 59290
	DAS_QUEST_W_USHANG      = "Ушанг Неукротимый",                  -- 67144
	DAS_QUEST_W_BIRKHU      = "Бирку Храбрый",                      -- 67184
	DAS_QUEST_DB_ARVINA     = "Клерик Арвина",                      -- 70157
	DAS_QUEST_DB_BOUNTY     = "Доска объявлений",                   -- 87370069-0-20444
	DAS_QUEST_CAP_CARDEA    = "Кардея Галла",                       -- 74040
	DAS_QUEST_CAP_ALVUR     = "Алвур Барен",                        -- 73953
	DAS_QUEST_CAP_BOLGRUL   = "Болгрул",                            -- 71827
	DAS_QUEST_SS_TANO       = "Юстициар Танориан",                  -- 82013
	DAS_QUEST_SS_FARO       = "Юстициар Фаровель",                  -- 82121
	DAS_QUEST_SS_TANE       = "Рив-командир Танерлин",              -- 82289
	DAS_QUEST_CRY_BATTLE    = "Доска с боевыми задачами",           -- 87370069-0-11718
	DAS_QUEST_CRY_BOUNTY    = "Доска с задачами по устранению",     -- 87370069-0-11727
	DAS_QUEST_CRY_SCOUT     = "Доска с разведывательными задачами", -- 87370069-0-10045
	DAS_QUEST_CRY_WARFR     = "Доска с фронтовыми задачами",        -- 87370069-0-11719
	DAS_QUEST_DB_LARONEN    = "Ларонен",                            -- 70175
	DAS_QUEST_DB_FINIA      = "Финия Селе",                         -- 70185
	DAS_QUEST_DB_CODUS      = "Код ап-Дугал",                       -- 70197
	DAS_QUEST_W_NEDNOR      = "Неднор",                             -- 59374
	DAS_QUEST_W_THAZEK      = "Тазег",                              -- 67076
	DAS_QUEST_W_ARUSHNA     = "Арушна",                             -- 59532
	DAS_QUEST_W_LILYAMEH    = "Лилиаме",                            -- 67178
	DAS_QUEST_W_BAGRUBESH   = "Багругбеш",                          -- 67119
	DAS_QUEST_W_CIRANTILLE  = "Сирантиль",                          -- 67123
	DAS_QUEST_W_MENNINIA    = "Менниния",                           -- 67021
	DAS_QUEST_W_SONOLIA     = "Сонолия Муспидия",                   -- 67193
	DAS_QUEST_W_RAYNOR      = "Рейнор Ванос",                       -- 65557
	DAS_QUEST_M_TRAYLAN     = "Трайлан Оморил",                     -- 74468
	DAS_QUEST_M_BELERU      = "Белеру Оморил",                      -- 74469
	DAS_QUEST_M_NUMANI      = "Нумани-Раси",                        -- 76157
	DAS_QUEST_M_NARA        = "Нара Варам",                         -- 76059
	DAS_QUEST_M_TIRVINA     = "Тирвина Авани",                      -- 76077
	DAS_QUEST_M_DINOR       = "Динор Салви",                        -- 74475
	DAS_QUEST_M_BRAVOSI     = "Бравоси Фелдер",                     -- 74513
	DAS_QUEST_M_IVULEN      = "Ивулен Андромо",                     -- 75960
	DAS_QUEST_M_SAVILE      = "Савила Алам",                        -- 76726
	DAS_QUEST_M_KYLIA       = "Килия Тандо",                        -- 76765
	DAS_QUEST_M_EVOS        = "Эвос Хледас",                        -- 76747
	DAS_QUEST_M_ALVES       = "Алвес Дрот",                         -- 76382
	DAS_QUEST_M_DREDASE     = "Дредас-Хларар",                      -- 76024
	DAS_QUEST_M_VORAR       = "Ворар Венду",                        -- 76730
	DAS_QUEST_M_VALGA       = "Вальга Целата",                      -- 75969
	DAS_QUEST_CC_ORC        = "Разгуруг",                           -- 78634
	DAS_QUEST_CC_COOK       = "Авеберль Тремуй",                    -- 78643
	DAS_QUEST_CC_MINDORA    = "Миндора",                            -- 78642
	DAS_QUEST_CC_NJORD      = "Ньордемар",                          -- 78641
	DAS_QUEST_CC_IGMUND     = "Игмен",                              -- 78905
	DAS_QUEST_W_GURUZUG     = "Гурузуг",                            -- 67019
	DAS_QUEST_W_ARZORAG     = "Арзораг",                            -- 67018


	-- Fargrave
	-- World Boss dailies, NPC = Vaveli Indavel
	DAS_QUEST_DL_BOSS		= "Вавели Индавел",							-- 104381
	DAS_MDAG_DANGE			= "Опасное дело",							-- 6716
	DAS_MDAG_MINDS			= "Внутренний взор",						-- 6717
	DAS_MDAG_UNMAK			= "Сокровищница Разрушителя",				-- 6718
	DAS_MDAG_CAREL			= "Неосторожное заражение",					-- 6719
	DAS_MDAG_RETRI			= "Неудавшиеся поиски",						-- 6720
	DAS_MDAG_PARAL			= "Вразумляющий паралич",					-- 6721
	-- Exploration dailies, NPC = Luna Beriel
	DAS_QUEST_DL_EXPL		= "Луна Бериэль",							-- 104378
	DAS_MDAG_PROPA			= "Никакой пропаганды",						-- 6710
	DAS_MDAG_BRAND			= "Реликвии реформатория Огненного Клейма",	-- 6711
	DAS_MDAG_FORGO			= "Сокровища забытых могил",				-- 6712
	DAS_MDAG_FLOWE			= "Цветы в Безумстве",						-- 6713
	DAS_MDAG_CLAND			= "Тайная переписка",						-- 6714
	DAS_MDAG_DISCR			= "Незаметный обход",						-- 6715


	-- Blackwood
	-- World Boss dailies : NPC = Brita Silanus
	DAS_QUEST_BW_BOSS       = "Бритта Силана",           -- 100913
	DAS_BLACKWD_EXCAV       = "Легенда о Человеке-Быке", -- 6645
	DAS_BLACKWD_TOAD        = "Изучение гоблинов",       -- 6649
	DAS_BLACKWD_RITUAL      = "Ритуалы сул-зан",         -- 6650
	DAS_BLACKWD_FROG        = "Царство лягушек",         -- 6651
	DAS_BLACKWD_LAGOON      = "Собиратель Трофеев",      -- 6652
	DAS_BLACKWD_XANMEER     = "Зов дестронаха",          -- 6653
	-- Delve dailies : NPC = Deetum-Jas
	DAS_QUEST_BW_DELVE      = "Дитум-Джас",              -- 100912
	DAS_BLACKWD_BLESS       = "Настоящее благословение", -- 6644
	DAS_BLACKWD_BLOODRUN    = "Тайная операция",         -- 6665
	DAS_BLACKWD_BEAUTY      = "Красота в опасности",     -- 6668
	DAS_BLACKWD_CONFLICT    = "Конфликт интересов",      -- 6673
	DAS_BLACKWD_CHAIN       = "Слабое звено",            -- 6674
	DAS_BLACKWD_INSECT      = "Спасение насекомых",      -- 6675


	-- The Reach, aye
	-- World Boss dailies : NPC = Gwenyfe, aye
	DAS_QUEST_MK_BOSS		= "Гвенифе",						-- 97856
	DAS_PIKEYS_NAMIR		= "Извращения Намиры",				-- 6556
	DAS_PIKEYS_NOTES		= "Заметки о Пустоте",				-- 6581
	DAS_PIKEYS_RUPTU		= "Разрывы в Пределе",				-- 6582
	DAS_PIKEYS_SCHOL		= "Просьба ученого",				-- 6583
	DAS_PIKEYS_GUIDE		= "След, ведущий во тьму",			-- 6584
	DAS_PIKEYS_TREAS		= "Разбросанные сокровища",			-- 6585
	-- Delve dailies : NPC = Bralthahawn, aye
	DAS_QUEST_MK_DELVE		= "Бралтахон",						-- 97855
	DAS_PIKEYS_TALIS		= "Дикие амулеты",					-- 6557
	DAS_PIKEYS_TAINT		= "Оскверненное вересковое сердце",	-- 6567
	DAS_PIKEYS_WITCH		= "Власть ворожеи",					-- 6569
	DAS_PIKEYS_MAGIC		= "Магическое грибоведение",		-- 6571
	DAS_PIKEYS_CONTA		= "Странное заражение",				-- 6572
	DAS_PIKEYS_MENAC		= "Враг в скорлупе",				-- 6573
	-- Wayward Guardians dailies : NPC = Ardanir, aye
	DAS_QUEST_MK_COURIER	= "Арданир",						-- 99601
	DAS_PIKEYS_REMNA		= "Следы глубинного народа",		-- 6600
	DAS_PIKEYS_BURNA		= "Выжечь зло дотла",				-- 6601
	DAS_PIKEYS_LIGHT		= "Светоч Арктзанда",				-- 6602
	DAS_PIKEYS_ALONE		= "Одни во тьме",					-- 6603
	DAS_PIKEYS_DEFEN		= "Защитники Предела",				-- 6604
	DAS_PIKEYS_NIGHT		= "Язык ночи",						-- 6605
	DAS_PIKEYS_SHRIN		= "Потерянное святилище",			-- 6606
	-- Harrowstorm dailies : NPC = Nelldena, aye
	DAS_QUEST_MK_HRWSTMS	= "Нельдена",						-- 97901
	DAS_PIKEYS_STORM		= "Борьба с мрачными бурями",		-- 6558 & 6559


	-- Western Skyrim
	-- World Boss dailies : NPC = Hidaver
	DAS_QUEST_WS_BOSS		= "Хидавер",					-- 94736
	DAS_GOTHS_LOSTA			= "Заблудший мореход",			-- 6509
	DAS_GOTHS_MOONL			= "Похищение при лунном свете",	-- 6517
	DAS_GOTHS_CIRCL			= "Круг мошенников",			-- 6518
	DAS_GOTHS_MOTHE			= "Мать Тьмы",					-- 6519
	DAS_GOTHS_FEAST			= "Пиршество во тьме",			-- 6526
	DAS_GOTHS_PROBL			= "Растущая проблема",			-- 6527
	-- Delve dailies : NPC = Tinzen
	DAS_QUEST_WS_DELVE		= "Тинзен",						-- 94414
	DAS_GOTHS_STREN			= "Великанья сила",				-- 6493
	DAS_GOTHS_TRAIL			= "И след простыл",				-- 6494
	DAS_GOTHS_PRESE			= "Сохранение жизни",			-- 6495
	DAS_GOTHS_PRECI			= "Ценная кора",				-- 6520
	DAS_GOTHS_DWEME			= "Двемерская разборка",		-- 6523
	DAS_GOTHS_SPIRI			= "Духовное освобождение",		-- 6524
	-- Harrowstorm dailies : NPC = Swordthane Jylta
	DAS_QUEST_WS_HRWSTMS	= "Тан-воительница Илта",		-- 95442
	DAS_GOTHS_STORM			= "Борьба с мрачными бурями",	-- 6512 & 6528


	-- Southern Elsweyr
	-- World Boss dailies : NPC = Bruccius Baenius
	DAS_QUEST_SE_BOSS       = "Бруций Бений",                -- 91767
	DAS_SE_PARIAH           = "Отверженный Кровавого клыка", -- 6376
	DAS_SE_HEAL             = "Помощь целителям",            -- 6421
	DAS_SE_RICE             = "Бродяга и рис",               -- 6422
	DAS_SE_DUST             = "Выбивание пыли",              -- 6423
	DAS_SE_SCHOL            = "Наблюдения ученых",           -- 6424
	DAS_SE_FLETCH           = "За стрелами",                 -- 6425
	-- Delve dailies : NPC = Guybert Flaubert
	DAS_QUEST_SE_DELVE      = "Гибер Флобер",                -- 91769
	DAS_SE_TOMES            = "Книги цаэски",                -- 6419
	DAS_SE_SWORD            = "Зачарованные мечи",           -- 6431
	DAS_SE_CANDLE           = "Утешение в свете свечи",      -- 6432
	DAS_SE_LILY             = "Поминальные лилии",           -- 6436
	DAS_SE_MUSH             = "Грибы в лунном свете",        -- 6437
	DAS_SE_BLOOD            = "Ответы — в крови",            -- 6438
	-- Dragon Hunt dailies : NPC = Chizbari the Chipper
	DAS_QUEST_SE_DRAGONS    = "Чизбари Жизнерадостная",      -- 91289
	DAS_SE_DRAGON2          = "Добыча Драконьей стражи",     -- 6434
	DAS_SE_DRAGON1          = "Рассвет Драконьей стражи",    -- 6444
	-- Dragonguard dailies : NPC = Dirge Truptor
	DAS_QUEST_SE_DELVE2     = "Траптор Могильщик",           -- 91226
	DAS_SE_TUSK             = "Поднять их на бивни",         -- 6405
	DAS_SE_GRAVE            = "Одинокая могила",             -- 6406
	DAS_SE_BONES            = "Палки и кости",               -- 6428
	DAS_SE_GARD             = "Копание в саду",              -- 6429
	DAS_SE_FILE             = "Бумаги под литерой «Д»",      -- 6430
	DAS_SE_AWAK             = "Грубое пробуждение",          -- 6433
}

DAS_STRINGS_LOCALE.ru = strings
for stringId, stringValue in pairs(strings) do
	ZO_CreateStringId(stringId, stringValue)
	SafeAddVersion(stringId, 2)
end
