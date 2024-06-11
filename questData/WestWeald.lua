local zoneId = 1443 -- West Weald

DAS.subzones[1444] = zoneId -- Legion's Rest
DAS.subzones[1445] = zoneId -- Fyrelight Cave
DAS.subzones[1446] = zoneId -- Nonungalo
DAS.subzones[1447] = zoneId -- Fort Colovia

DAS.shareables[zoneId] = {
	-- World Boss dailies, NPC = Lieutenant Agrance
	GetString(DAS_WWEALD_SPINN), -- 7109 Spinning Out, Grove of the Chimera / Spinner Urthrendir
	GetString(DAS_WWEALD_FATEE), -- 7116 Fate-Eater, Broken Path Cave / Stri the Fate-Eater
	GetString(DAS_WWEALD_TRAIN), -- 7117 Training Camp, Centurion's Rose / Fang & Talon
	GetString(DAS_WWEALD_BALEF), -- 7118 Baleful Bluffs, Fortune's Bluff / Hessedaz the Baleful
	GetString(DAS_WWEALD_RECOL), -- 7119 Recollection Rendezvous, Frontier's Cradle / Recollection Leaders
	GetString(DAS_WWEALD_HAZAR), -- 7120 Hazardous Waters, Lake Olo / Oakenclaw
	-- Exploration dailies, NPC = Commandant Salerius
	GetString(DAS_WWEALD_VENOM), -- 7108 Venom Hunt, Legion's Rest
	GetString(DAS_WWEALD_LOANR), -- 7111 Loan Recall, Haldain Lumber Camp
	GetString(DAS_WWEALD_TRINK), -- 7112 Trinkets from the Reach, Varen's Watch
	GetString(DAS_WWEALD_CALAM), -- 7113 A Calamitous Error, Fort Colovia
	GetString(DAS_WWEALD_STUDY), -- 7114 A Study in Tharriker, Fyrelight Cave
	GetString(DAS_WWEALD_RUINO), -- 7115 Ruinous Evaluation, Nonungalo
	-- Mirrormoor incursion dailies, NPC = Legionary Jaida
	GetString(DAS_WWEALD_INCUR), -- 7110/7182 Mirrormoor Incursion
}
DAS.makeBingoTable(zoneId, {
	-- World Boss dailies, NPC = Lieutenant Agrance
	"spinner",
	"stri",
	"fang",
	"bb",
	"rr",
	"oak",
	-- Exploration dailies, NPC = Commandant Salerius
	"vh",
	"lr",
	"tr",
	"ce",
	"fyre",
	"re",
	-- Mirrormoor incursion dailies, NPC = Legionary Jaida
	{"mm", "incursion"},
})

DAS.questStarter[zoneId] = {
	[GetString(DAS_QUEST_WW_BOSS)] = true, -- 117862 Lieutenant Agrance
	[GetString(DAS_QUEST_WW_EXPL)] = true, -- 117861 Commandant Salerius
	[GetString(DAS_QUEST_WW_INCUR)] = true, -- 117863 Legionary Jaida
}

DAS.questFinisher[zoneId] = DAS.questStarter[zoneId]

local questIds = {
	-- World Boss dailies, NPC = Lieutenant Agrance
	[7109] = true, -- Spinning Out
	[7116] = true, -- Fate-Eater
	[7117] = true, -- Training Camp
	[7118] = true, -- Baleful Bluffs
	[7119] = true, -- Recollection Rendezvous
	[7120] = true, -- Hazardous Waters
	-- Exploration dailies, NPC = Commandant Salerius
	[7108] = true, -- Venom Hunt
	[7111] = true, -- Loan Recall
	[7112] = true, -- Trinkets from the Reach
	[7113] = true, -- A Calamitous Error
	[7114] = true, -- A Study in Tharriker
	[7115] = true, -- Ruinous Evaluation
	-- Mirrormoor incursion dailies, NPC = Legionary Jaida
	[7110] = true, -- Mirrormoor Incursion
	[7182] = true, -- Mirrormoor Incursion
}

DAS.questIds[zoneId] = questIds

for id, _ in pairs(questIds) do
	DAS_QUEST_IDS[id] = true
end