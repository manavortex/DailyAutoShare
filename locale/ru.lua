--[[ draft
GetQuestName(0000), --
]]

DAS_STRINGS_LOCALE = DAS_STRINGS_LOCALE or {}
local strings  = {
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


-- Elsweyr
  -- Nisuzi
  DAS_KITTY_WIND          = GetQuestName(6359),
  DAS_KITTY_FLAME         = GetQuestName(6356),
  DAS_KITTY_RUINS         = GetQuestName(6360),
  DAS_KITTY_STAMPEDE      = GetQuestName(6362),
  DAS_KITTY_TEA           = GetQuestName(6363),
  
  -- Rihirr
  DAS_KITTY_WILY          = GetQuestName(6378),
  DAS_KITTY_HUNGRY        = GetQuestName(6361),
  DAS_KITTY_DEATH         = GetQuestName(6380),
  DAS_KITTY_DUO           = GetQuestName(6381),
  DAS_KITTY_SWORD         = GetQuestName(6377),
  DAS_KITTY_SENCHE        = GetQuestName(6382),
  DAS_KITTY_NIGHTMARE     = GetQuestName(6357),
	  -- Battlereeve Tanerline
  DAS_QUEST_TANERLIN      = "Battlereeve Tanerline",
  DAS_KITTY_DRAGON        = GetQuestName(6384),

	-- Clockwork City
	DAS_CLOCK_IMP			 = GetQuestName(6076), --"Пробуждение Несовершенства",
	DAS_CLOCK_FOE			 = GetQuestName(6077), --"Враг в прекрасном оперении",
	DAS_CLOCK_CRAFT_CLOTH	 = GetQuestName(6039), --"Нити для пряжи",
	DAS_CLOCK_CRAFT_WATER	 = GetQuestName(6040), --"Липкое решение",
	DAS_CLOCK_CRAFT_RUNE	 = GetQuestName(6041), --"Сбор зачарований",
	DAS_CLOCK_CRAFT_SMITH	 = GetQuestName(6038), --"Ежедневная молотилка",
	DAS_CLOCK_CRAFT_ALCH	 = GetQuestName(6042), --"Горькая пилюля",
	DAS_CLOCK_CRAFT_WOOD	 = GetQuestName(6037), --"Масло в огонь",
	DAS_CLOCK_DELVE_FILT	 = GetQuestName(6088), --"Замена фильтров",
	DAS_CLOCK_DELVE_FANS	 = GetQuestName(6081), --"Смазывание вентиляторов",
	DAS_CLOCK_DELVE_COMM	 = GetQuestName(6089), --"Замена преобразователей",
	DAS_CLOCK_DELVE_MALF	 = GetQuestName(6080), --"Сумрачная неисправность",
	DAS_CLOCK_DELVE_MISP	 = GetQuestName(6073), --"Пропавшая тень",
	DAS_CLOCK_DELVE_AGAI	 = GetQuestName(6079), --"Обратно в тень",
	DAS_CLOCK_CROW_GLIT		 = GetQuestName(6110), --"Шик и блеск",
	DAS_CLOCK_CROW_TRIB		 = GetQuestName(6106), --"Вопрос о подношениях",
	DAS_CLOCK_CROW_NIBB		 = GetQuestName(6070), --"Кусочки и частички",
	DAS_CLOCK_CROW_MORS		 = GetQuestName(6071), --"Лакомые кусочки",
	DAS_CLOCK_CROW_RESP		 = GetQuestName(6072), --"Вопрос уважения",
	DAS_CLOCK_CROW_LEIS		 = GetQuestName(6107), --"Вопрос о свободном времени",
	-- Morrowind dailies
	DAS_M_REL_ASHAL =  GetQuestName(5930), --"Реликвии из Ашалмавии",
	DAS_M_REL_ASSAR =  GetQuestName(5925), --"Реликвии из Ассарнатамата",
	DAS_M_REL_ASHUR =  GetQuestName(5927), --"Реликвии из Ассурнабиташпи",
	DAS_M_REL_DUSHA =  GetQuestName(5929), --"Реликвии из Душарирана",
	DAS_M_REL_EBERN =  GetQuestName(5928), --"Реликвии из Эбернанита",
	DAS_M_REL_MAELK =  GetQuestName(5926), --"Реликвии из Мелкашиши",
	DAS_M_REL_YASAM =  GetQuestName(5924), --"Реликвии из Ясаммидана",
	DAS_M_HUNT_EATER =  GetQuestName(5911), --"Охота на Пеплоеда",
	DAS_M_HUNT_ZEXXI =  GetQuestName(5907), --"Охота на Великого Зексина",
	DAS_M_HUNT_RAZOR =  GetQuestName(5913), --"Охота на Короля Острый Клык",
	DAS_M_HUNT_JAGGE =  GetQuestName(5910), --"Охота на Зазубренную Клешню",
	DAS_M_HUNT_STOMP =  GetQuestName(5912), --"Охота на Старого Топотуна",
	DAS_M_HUNT_TARRA =  GetQuestName(5908), --"Охота на Тарру-Судж",
	DAS_M_HUNT_SVEET =  GetQuestName(5909), --"Охота на Извивающегося Свита",
	-- Cave dailies (Hall of Justice)
	DAS_M_DELVE_DAEDR =  GetQuestName(5956), --"Даэдрический срыв",
	DAS_M_DELVE_KWAMA =  GetQuestName(5962), --"Задачка с квама",
	DAS_M_DELVE_MISIN =  GetQuestName(5961), --"Подложная истина",
	DAS_M_DELVE_TAXES =  GetQuestName(5934), --"Налоговый вычет",
	DAS_M_DELVE_TRIBA =  GetQuestName(5915), --"Проблемы племени",
	DAS_M_DELVE_SYNDI =  GetQuestName(5958), --"Беспокойный синдикат",
	-- World boss dailies (Hall of Justice)
	DAS_M_BOSS_WUYWU =  GetQuestName(5918), --"Алчущий в засаде",
	DAS_M_BOSS_SWARM =  GetQuestName(5865), --"Прополка колонии",
	DAS_M_BOSS_NILTH =  GetQuestName(5866), --"Волам здесь не место",
	DAS_M_BOSS_SALOT =  GetQuestName(5904), --"Проклятье Салотан",
	DAS_M_BOSS_SIREN =  GetQuestName(5906), --"Песня сирены",
	DAS_M_BOSS_APPRE =  GetQuestName(5916), --"Обеспокоенная ученица",
	-- wrothgar dailies
    DAS_W_POACHERS        = GetQuestName(5518), --"Мясо в массы",
    DAS_W_EDU             = GetQuestName(5524), --"Запах нечестной игры",
    DAS_W_NYZ             = GetQuestName(5523), --"Снег и пар",
    DAS_W_CORI            = GetQuestName(5521), --"Щедрость природы",
    DAS_W_DOLMEN          = GetQuestName(5522), --"Ересь невежества",
    DAS_W_OGRE            = GetQuestName(5519), --"Спасение во имя знаний",
	-- wrothgar single
	DAS_W_HARPIES 		 = GetQuestName(5507), --"Завтрак чудака",
	DAS_W_SPIRITS 		 = GetQuestName(5515), --"Свободные духи",
	DAS_W_DURZOGS 		 = GetQuestName(5514), --"До отвала",
	DAS_W_DWEMER 		 = GetQuestName(5509), --"Части целого",
	DAS_W_WEREWOLVES	 = GetQuestName(5504), --"Торговля кожей",
	DAS_W_THAT_OTHER	 = GetQuestName(5505), --"Пожар во владении",
	-- gold coast
	DAS_DB_MINO			 = GetQuestName(5605), --"Тени сгущаются",
	DAS_DB_ARENA 		 = GetQuestName(5606), --"Рев толпы",
	DAS_DB_GOOD 		 = GetQuestName(5604), --"Всеобщее благо",
	DAS_DB_EVIL 		 = GetQuestName(5603), --"Захороненное зло",
	-- new life
	DAS_NL_STORMHAVEN	 = GetQuestName(5845), --"Замковое состязание очарования",
	DAS_NL_STONEFALLS	 = GetQuestName(5837), --"Пляска лавовых ног",
	DAS_NL_ALIKR		 = GetQuestName(5839), --"Забег сигнальных огней",
	DAS_NL_SHADOWFEN	 = GetQuestName(5855), --"Пир рыбьего блага",
	DAS_NL_GRAHTWOOD	 = GetQuestName(5852), --"Пребывание сирот войны",
	DAS_NL_REAPERSMARCH	 = GetQuestName(5834), --"Испытание пятипалого коварства",
	DAS_NL_BETNIKH		 = GetQuestName(5856), --"Удар Каменного зуба",
	DAS_NL_AURIDON		 = GetQuestName(5838), --"Развлечение с комками грязи",
	DAS_NL_EASTMARCH	 = GetQuestName(5811), --"Ныряние снежного медведя",

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
	DAS_CRAG_SARA 		 = GetQuestName(5108), --"Критическая масса",
	DAS_CRAG_SHADA 		 = GetQuestName(5750), --"Павший город Шады",
	DAS_CRAG_NEDE 		 = GetQuestName(5762), --"Причина, по которой мы сражаемся",
	DAS_CRAG_HERMY 		 = GetQuestName(5749), --"Архив искателя",
	DAS_CRAG_ELINHIR 	 = GetQuestName(5755), --"Высшая сила",
	DAS_CRAG_TUWHACCA 	 = GetQuestName(5751), --"Испытания Рахни'За",
	DAS_CRAG_NEREID 	 = GetQuestName(5754), --"Испорченная вода",
	-- upper
	DAS_CRAG_NIRNCRUX	 = GetQuestName(5767), --"Кровь Нирна",
	DAS_CRAG_WORLDTRIP 	 = GetQuestName(5777), --"Серый проход",
	DAS_CRAG_SCALES 	 = GetQuestName(5766), --"Железо и чешуя",
	DAS_CRAG_NECRO 		 = GetQuestName(5770), --"Души преданных",
	DAS_CRAG_KIDNAP 	 = GetQuestName(5765), --"Живые пленники",
	DAS_CRAG_HITMAN 	 = GetQuestName(5764), --"Настоящие клыки",
	DAS_CRAG_DUNGEON 	 = GetQuestName(5772), --"Освобожденные",
    -- Questgiver names --
    DAS_QUEST_M_ASHLANDER   = "Мастер-охотник Сорим-Накар",
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
    DAS_QUEST_CC_ORC        = "Razgurug",
    DAS_QUEST_CC_COOK       = "Aveberl Tremouille",
    DAS_QUEST_CC_MINDORA    = "Mindora",
    DAS_QUEST_CC_NJORD      = "Njordemar",
    DAS_QUEST_CC_IGMUND     = "Igmund",
    DAS_QUEST_W_GURUZUG     = "Guruzug",
    DAS_QUEST_W_ARZORAG     = "Arzorag",
--Blackwood to be translated
--Boss dailies : NPC = Brita Silanus
DAS_BLACKWD_TOAD	=	GetQuestName(6649), --"Изучение гоблинов"
DAS_BLACKWD_RITUAL	=	GetQuestName(6650), --"Ритуалы сул-зан"
DAS_BLACKWD_EXCAV	=	GetQuestName(6645), --"Легенда о Человеке-Быке"
DAS_BLACKWD_FROG	=	GetQuestName(6651), --"Царство лягушек",
DAS_BLACKWD_XANMEER	=	GetQuestName(6653), --"Зов дестронаха",
DAS_BLACKWD_LAGOON	=	GetQuestName(6652),--"Собиратель Трофеев",
DAS_QUEST_BW_BOSS	=	"Бритта Силана",     
--Delve dailies : NPC = Deetum-Jas
DAS_BLACKWD_BLOODRUN	=	GetQuestName(6665), --"Тайная операция",
DAS_BLACKWD_BEAUTY	=	GetQuestName(6668), --"Красота в опасности",
DAS_BLACKWD_BLESS	=	GetQuestName(6644), --"Настоящее благословение",
DAS_BLACKWD_CHAIN	=	GetQuestName(6674), --"Слабое звено",
DAS_BLACKWD_INSECT	=	GetQuestName(6675), --"Спасение насекомых",
DAS_BLACKWD_CONFLICT	=	GetQuestName(6673), --"Конфликт интересов",
DAS_QUEST_BW_DELVE	=	"Дитум-Джас", 
--Guilds
  DAS_GUILD_ANCHORS       = "Темные якоря в ",
  DAS_GUILD_MADNESS       = "Безумие в ", --"Безумие в ",
  DAS_UD_ALIKR            = GetQuestName(5745), --"Molten Pearls of Alik'r Desert"
  DAS_UD_AURID            = GetQuestName(5798), --"Veiled Darkness in Auridon",
  DAS_UD_BANGK            = GetQuestName(5733), --"Ancient Armaments in Bangkorai",
  DAS_UD_DESHA            = GetQuestName(5735), --"Ancestor Wards in Deshaan",
  DAS_UD_EASTM            = GetQuestName(5779), --"Icy Intrigue in Eastmarch"
  DAS_UD_GLENU            = GetQuestName(5739), --"Red Rook Ransack in Glenumbra",
  DAS_UD_GRAHT            = GetQuestName(5738), --"Ayleid Trinkets in Grahtwood",
  DAS_UD_GREEN            = GetQuestName(5853), --"Culinary Justice in Greenshade",
  DAS_UD_MALAB            = GetQuestName(5734), --"The Spirit Trap in Malabal Tor",
  DAS_UD_REAPE            = GetQuestName(5744), --"Mascot Theft in Reaper's March",
  DAS_UD_RIFT             = GetQuestName(5802), --"Inflamed Pyres of the Rift",
  DAS_UD_RIVEN            = GetQuestName(5808), --"Darkness Blooms in Rivenspire",
  DAS_UD_SHADO            = GetQuestName(5778), --"Give and Take in Shadowfen"
  DAS_UD_STONE            = GetQuestName(5737), --"Dwarven Relics of Stonefalls",
  DAS_UD_STORM            = GetQuestName(5800), --"Cursed Baubles of Stormhaven",

  --Southern Elsweyr
  DAS_QUEST_SE_BOSS			= "Bruccius Baenius",
  DAS_QUEST_SE_DELVE		= "Guybert Flaubert",
  DAS_QUEST_SE_DRAGONS		= "Chizbari the Chipper",
  DAS_QUEST_SE_DELVE2		= "Dirge Truptor",
 
  -- Bruccius Baenius
  DAS_SE_RICE				= GetQuestName(6422), --	A Rogue and His Rice
  DAS_SE_PARIAH				= GetQuestName(6376), --	Goutfang Pariah
  DAS_SE_HEAL				= GetQuestName(6421), --	Helping the Healers
  DAS_SE_DUST				= GetQuestName(6423), --	Dust Smote
  DAS_SE_FLETCH				= GetQuestName(6425), --	Fletching Fetching
  DAS_SE_SCHOL				= GetQuestName(6424), --	Scholarly Observations

  -- Guybert Flaubert
  DAS_SE_CANDLE				= GetQuestName(6432), --Solace By Candlelight
  DAS_SE_SWORD				= GetQuestName(6431), --Sourcing the Ensorcelled
  DAS_SE_LILY				= GetQuestName(6436), --Lilies for Remembrance
  DAS_SE_BLOOD				= GetQuestName(6438), --An Answer in Blood
  DAS_SE_TOMES				= GetQuestName(6419), --Tomes of the Tsaesci
  DAS_SE_MUSH				= GetQuestName(6437), --Moonlit Mushrooms

--Chizbari the Chipper
DAS_SE_DRAGON1 				= GetQuestName(6444), -- Dawn of the Dragonguard
DAS_SE_DRAGON2				= GetQuestName(6434), -- The Dragonguard's Quarry

--Dirge Truptor
DAS_SE_FILE					= GetQuestName(6430), --	File Under D
DAS_SE_BONES				= GetQuestName(6428), --	Sticks and Bones
DAS_SE_AWAK					= GetQuestName(6433), --	Rude Awakening
DAS_SE_TUSK					= GetQuestName(6405), --	Taking Them to Tusk
DAS_SE_GARD					= GetQuestName(6429), --	Digging Up the Garden
DAS_SE_GRAVE				= GetQuestName(6406), --	A Lonely Grave

--Summerset
  DAS_ELF_RELIC           = GetQuestName(6158), --"Relic Runaround",
  DAS_ELF_PILGR           = GetQuestName(6152), --"Pilgrimage's End",
  DAS_ELF_LIGHT           = GetQuestName(6156), --"Snuffing Out the Light",
  DAS_ELF_SERPE           = GetQuestName(6159), --"Culling Serpents",
  DAS_ELF_MEMO            = GetQuestName(6160), --"Struck from Memory",
  DAS_ELF_ROSE            = GetQuestName(6157), --"A Rose's Beauty",
  DAS_ELF_ALCHE           = GetQuestName(6084), --"The Abyssal Alchemist",
  DAS_ELF_GRAVE           = GetQuestName(6086), --"Never Forgotten",
  DAS_ELF_QUEEN           = GetQuestName(6082), --"The Sickening Sea",
  DAS_ELF_GRIFFIN         = GetQuestName(6085), --"Birds of a Feather",
  DAS_ELF_SNAKE           = GetQuestName(6087), --"Run Aground",
  DAS_ELF_WILD            = GetQuestName(6083), --"Taming the Wild",
  DAS_ELF_GEYSER          = GetQuestName(6166), --"Sinking Summerset",

   -- Murkmire
   DAS_SLAVES_QUEST1       = "Varo Hosidias",
   DAS_SLAVES_QUEST2       = "Tuwul",
   DAS_SLAVES_QUEST3       = "Bolu",

   DAS_SLAVES_BOSS_1       = GetQuestName(6233), --"Grave Circumstances",
   DAS_SLAVES_BOSS_2       = GetQuestName(6236), --"Grave Expectations",
   DAS_SLAVES_BOSS_3       = GetQuestName(6235), --"Old Baubles",
   DAS_SLAVES_BOSS_4       = GetQuestName(6238), --"Old Enemies",
   DAS_SLAVES_BOSS_5       = GetQuestName(6234), --"Old Growth",
   DAS_SLAVES_BOSS_6       = GetQuestName(6237), --"Grave Mementos",
   DAS_SLAVES_DELVE_1      = GetQuestName(6253), --"Antique Armor",
   DAS_SLAVES_DELVE_2      = GetQuestName(6268), --"Grave Subject Matter",
   DAS_SLAVES_DELVE_3      = GetQuestName(6248), --"Old Scrolls",
   DAS_SLAVES_DELVE_4      = GetQuestName(6264), --"Sacred Candles",
   DAS_SLAVES_DELVE_5      = GetQuestName(6267), --"Tools of Slaughter",
   DAS_SLAVES_DELVE_6      = GetQuestName(6247), --"The Weight of Words",
   DAS_SLAVES_ROOT_1       = GetQuestName(6286), --"Aloe That Heals",
   DAS_SLAVES_ROOT_2       = GetQuestName(6288), --"Envoys Who Cower",
   DAS_SLAVES_ROOT_3       = GetQuestName(6290), --"Leather That Protects",
   DAS_SLAVES_ROOT_4       = GetQuestName(6287), --"Mushrooms That Nourish",
   DAS_SLAVES_ROOT_5       = GetQuestName(6289), --"Offerings That Hide",
}

DAS_STRINGS_LOCALE.ru = strings
for stringId, stringValue in pairs(strings) do
	ZO_CreateStringId(stringId, stringValue)
	SafeAddVersion(stringId, 2)
end