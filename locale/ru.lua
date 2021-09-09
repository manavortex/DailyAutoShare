DAS_STRINGS_LOCALE = DAS_STRINGS_LOCALE or {}
local strings  = {
	-- User Interface
	DAS_SI_INVITE_TRUE      = "Автоприглашения включены",
	DAS_SI_INVITE_FALSE     = "Автоприглашения отключены",
	DAS_SI_ACCEPT_TRUE      = "Автоприём чужих ежедневных заданий включён",
	DAS_SI_ACCEPT_FALSE     = "Ежедневные задания не принимаются автоматически",
	DAS_SI_SHARE_TRUE       = "Автораздача активного ежедневного задания при вступлении кого-то в группу или по слову «share» в чате группы (Щелкните ПКМ для раздачи активной ежедневки)",
	DAS_SI_SHARE_FALSE      = "Автораздача активного ежедневного задания ОТКЛЮЧЕНА, скорее всего, на вас кто-то наорал (ПКМ для принудительной раздачи)",
	DAS_SI_SPAM             = "Нажмите для рекламы в зончат",
	DAS_SI_SPAM_VERBOSE     = "Нажмите для выпрашивания заданий",
	DAS_TOGGLE_SUBLIST      = "Нажмите для раскрытия списка заданий",
	DAS_MENU_ACTIV_EXPLAIN  = "Включить или отключить для указанных зон.",
	DAS_SI_HIDE             = "Скрыть DailyAutoShare",
	DAS_SI_TOGGLE           = "Скрыть/показать окно",
	DAS_SI_MINIMISE         = "Свернуть/развернуть",
	DAS_SI_REFRESH          = "Обновить",
	DAS_SI_DONATE           = "Нажмите, чтобы отблагодарить автора:\nЛКМ: 2k\nПКМ: 10k\nСКМ: 25k\nВаши отзывы и пожертвования всегда востребованы!",
	DAS_SI_SHARE            = "Раздать",
	DAS_SI_TRACK            = "* Track",
	DAS_SI_ABANDON          = "|cFF0000Отказаться|r",
	DAS_SI_SPAM_SINGLE      = "Реклама в чат",
	DAS_SI_SETOPEN_TRUE     = "Сделать доступным",
	DAS_SI_SETOPEN_FALSE    = "Сделать завершённым",
	DAS_BINGO_CODE_IS       = "\nКод раздачи ",
	DAS_SI_PREQUEST         = "\nОткрывающее задание <<1>>: <<2>>",
	DAS_SI_COMPLETED        = "завершено",
	DAS_SI_OPEN             = "не сделано",

	-- Quest names are located in the table 52420949-0 of RU.lang
	-- NPC names are located in the table 8290981-0 of RU.lang


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
