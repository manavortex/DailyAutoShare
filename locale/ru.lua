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
	
	-- Clockwork City
	DAS_CLOCK_IMP			 = "Пробуждение Несовершенства", 
	DAS_CLOCK_FOE			 = "Враг в прекрасном оперении", 

	DAS_CLOCK_CRAFT_CLOTH	 = "Свободные нити", 
	DAS_CLOCK_CRAFT_WATER	 = "Липкое решение", 
	DAS_CLOCK_CRAFT_RUNE	 = "Сбор зачарований", 
	DAS_CLOCK_CRAFT_SMITH	 = "Ежедневная молотилка", 
	DAS_CLOCK_CRAFT_ALCH	 = "Горькая пилюля", 
	DAS_CLOCK_CRAFT_WOOD	 = "Масло в огонь", 	
	
	DAS_CLOCK_DELVE_FILT	 = "Замена фильтров", 
	DAS_CLOCK_DELVE_FANS	 = "Смазывание вентиляторов", 
	DAS_CLOCK_DELVE_COMM	 = "Замена преобразователей", 
	DAS_CLOCK_DELVE_MALF	 = "Сумрачная неисправность", 
	DAS_CLOCK_DELVE_MISP	 = "Пропавшая тень", 
	DAS_CLOCK_DELVE_AGAI	 = "Обратно в тень", 
	
	DAS_CLOCK_CROW_GLIT		 = "Шик и блеск", 
	DAS_CLOCK_CROW_TRIB		 = "Вопрос о подношениях", 
	DAS_CLOCK_CROW_NIBB		 = "Кусочки и частички", 
	DAS_CLOCK_CROW_MORS		 = "Лакомые кусочки", 
	DAS_CLOCK_CROW_RESP		 = "Вопрос уважения", 
	DAS_CLOCK_CROW_LEIS		 = "Вопрос о свободном времени", 
	
	
	-- Morrowind dailies
	DAS_M_REL_ASHAL =  "Реликвии Ашалмавии", 
	DAS_M_REL_ASSAR =  "Реликвии Ассарнатамата", 
	DAS_M_REL_ASHUR =  "Реликвии Ассурнабиташпи", 
	DAS_M_REL_DUSHA =  "Реликвии Душарирана", 
	DAS_M_REL_EBERN =  "Реликвии Эбернанита", 	 
	DAS_M_REL_MAELK =  "Реликвии Мелкашиши", 	
	DAS_M_REL_YASAM =  "Реликвии Ясаммидана",
	
	DAS_M_HUNT_EATER =  "Охота на Пеплоеда", 
	DAS_M_HUNT_ZEXXI =  "Охота на Великого Зексина", 
	DAS_M_HUNT_RAZOR =  "Охота на Короля Острый Клык",
	DAS_M_HUNT_JAGGE =  "Охота на Мать Зазубренная Клешня", 
	DAS_M_HUNT_STOMP =  "Охота на Старого Топотуна", 
	DAS_M_HUNT_TARRA =  "Охота на Тарра-Судж", 
	DAS_M_HUNT_SVEET =  "Охота на Извивающегося Свита", 	

	-- Cave dailies (Hall of Justice)
	DAS_M_DELVE_DAEDR =  "Даэдрический срыв",
	DAS_M_DELVE_KWAMA =  "Задачка с квама", 				
	DAS_M_DELVE_MISIN =  "Насаждение дезинформации",
	DAS_M_DELVE_TAXES =  "Налоговый вычет",
	DAS_M_DELVE_TRIBA =  "Проблемы племени",	
	DAS_M_DELVE_SYNDI =  "Беспокойный синдикат",


	-- World boss dailies (Hall of Justice)
	DAS_M_BOSS_WUYWU =  "Затаившийся алчущий",
	DAS_M_BOSS_SWARM =  "Отбраковка колонии",
	DAS_M_BOSS_NILTH =  "Волам здесь не место",
	DAS_M_BOSS_SALOT =  "Проклятье Салотанов",
	DAS_M_BOSS_SIREN =  "Песня сирены",
	DAS_M_BOSS_APPRE =  "Обеспокоенная ученица",


	-- wrothgar dailies
    DAS_W_POACHERS        = "Мясо в массы",
    DAS_W_EDU             = "Запах нечестной игры",
    DAS_W_NYZ             = "Снег и пар",
    DAS_W_CORI            = "Щедрость природы",
    DAS_W_DOLMEN          = "Ересь невежества",
    DAS_W_OGRE            = "Спасение во имя знаний",
    
	-- wrothgar single
	DAS_W_HARPIES 		 = "Завтрак чудака", 
	DAS_W_SPIRITS 		 = "Свободные духи", 
	DAS_W_DURZOGS 		 = "До отвала",
	DAS_W_DWEMER 		 = "Части целого", 
	DAS_W_WEREWOLVES	 = "Торговля кожей", 
	DAS_W_THAT_OTHER	 = "Пожар во владении", 	
	
	
	
	-- gold coast
	DAS_DB_MINO			 = "Надвигающиеся тени",
	DAS_DB_ARENA 		 = "Рев толпы",
	DAS_DB_GOOD 		 = "Всеобщее благо",
	DAS_DB_EVIL 		 = "Захороненное зло",
	
	-- new life
	DAS_NL_STORMHAVEN	 = "Замковое состязание очарования",
	DAS_NL_STONEFALLS	 = "Пляска лавовых ног",
	DAS_NL_ALIKR		 = "Забег сигнальных огней",
	DAS_NL_SHADOWFEN	 = "Пир рыбьего блага",
	DAS_NL_GRAHTWOOD	 = "Пребывание сирот войны",
	DAS_NL_REAPERSMARCH	 = "Испытание пятипалого коварства",
	DAS_NL_BETNIKH		 = "Удар Каменного зуба",
	DAS_NL_AURIDON		 = "Развлечение с комками грязи",
	DAS_NL_EASTMARCH	 = "Ныряние снежного медведя",
    
	-- craglorn
	-- lower
	DAS_CRAG_SARA 		 = "Критическая масса",
	DAS_CRAG_SHADA 		 = "Павший город Шады",
	DAS_CRAG_NEDE 		 = "Причина, по которой мы сражаемся",
	DAS_CRAG_HERMY 		 = "Архив искателя",
	DAS_CRAG_ELINHIR 	 = "Высшая сила",
	DAS_CRAG_TUWHACCA 	 = "Испытания Рахни'За",
	DAS_CRAG_NEREID 	 = "Испорченная вода",
	
	-- upper
	DAS_CRAG_NIRNCRUX	 = "Кровь Нирна",
	DAS_CRAG_WORLDTRIP 	 = "Серый проход",
	DAS_CRAG_SCALES 	 = "Железо и чешуя",
	DAS_CRAG_NECRO 		 = "Души преданных",
	DAS_CRAG_KIDNAP 	 = "Живые пленники",
	DAS_CRAG_HITMAN 	 = "Настоящие клыки",
	DAS_CRAG_DUNGEON 	 = "Освобожденные",	
    
    
    
    -- Questgiver names --
    
    
    
    DAS_QUEST_M_ASHLANDER   = "Huntmaster Sorim-Nakar",   
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
    
    
    
}

DAS_STRINGS_LOCALE.ru = strings

for stringId, stringValue in pairs(strings) do
	ZO_CreateStringId(stringId, stringValue)
	SafeAddVersion(stringId, 2)
end