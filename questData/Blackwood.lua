local zoneId = 1261 -- Blackwood

DAS.subzones[1253] = zoneId -- Undertow Cavern
DAS.subzones[1254] = zoneId -- Arpenia
DAS.subzones[1255] = zoneId -- Bloodrun Cave
DAS.subzones[1256] = zoneId -- Doomvault Porcixid
DAS.subzones[1257] = zoneId -- Xi-Tsei
DAS.subzones[1258] = zoneId -- Vunalk

DAS.shareables[zoneId] = {
	-- World Boss dailies : NPC = Brita Silanus
	GetString(DAS_BLACKWD_TOAD   ), -- Goblin Research
	GetString(DAS_BLACKWD_RITUAL ), -- Rites of the Sul-Xan
	GetString(DAS_BLACKWD_EXCAV  ), -- Legend of the Man-Bull
	GetString(DAS_BLACKWD_XANMEER), -- Call of the Ruinach
	GetString(DAS_BLACKWD_LAGOON ), -- The Trophy-Taker
	GetString(DAS_BLACKWD_FROG   ), -- A Reign of Frogs
	-- Delve dailies : NPC = Deetum-Jas
	GetString(DAS_BLACKWD_BLOODRUN), -- Shadow Tactics
	GetString(DAS_BLACKWD_BEAUTY  ), -- Beauty Amid Danger
	GetString(DAS_BLACKWD_BLESS   ), -- A Proper Blessing
	GetString(DAS_BLACKWD_INSECT  ), -- Insect Savior
	GetString(DAS_BLACKWD_CHAIN   ), -- Breaking the Chain
	GetString(DAS_BLACKWD_CONFLICT), -- Conflict of Interest
}
DAS.makeBingoTable(zoneId, {
	-- World Boss dailies : NPC = Brita Silanus
	{"zath", "toad", "goblin", "zathmoz"},
	{"sul", "ritual", "rites", "sulxan"},
	{"mino", "excav", "excavation", "bull"},
	{"ruin", "xanmeer", "ruinach", "ruinark", "ghemvas"},
	{"xeem", "lagoon", "xeemhok", "trophy"},
	{"frog", "deathwart"},
	-- Delve dailies : NPC = Deetum-Jas
	{"bc", "ru", "bloodrun", "tactics"},
	{"dp", "beauty", "danger"},
	{"vu", "bless", "blessing"},
	{"uc", "insect"},
	{"xt", "chain"},
	{"ar", "conflict"},
})

DAS.questStarter[zoneId] = {
	[GetString(DAS_QUEST_BW_BOSS )] = true,
	[GetString(DAS_QUEST_BW_DELVE)] = true,
}

DAS.questFinisher[zoneId] = DAS.questStarter[zoneId]

local questIds = {
	[6644] = true, -- "A Proper Blessing"			DELVE
	[6645] = true, -- "Legend of the Man-Bull"		BOSS
	[6649] = true, -- "Goblin Research"				BOSS
	[6650] = true, -- "Rites of the Sul-Xan"		BOSS
	[6651] = true, -- "A Reign of Frogs"			BOSS
	[6652] = true, -- "The Trophy-Taker"			BOSS
	[6653] = true, -- "Call of the Ruinach"			BOSS
	[6665] = true, -- "Shadow Tactics"				DELVE
	[6668] = true, -- "Beauty Amid Danger"			DELVE
	[6673] = true, -- "Conflict of Interest"		DELVE
	[6674] = true, -- "Breaking the Chain"			DELVE
	[6675] = true, -- "Insect Savior"				DELVE
}

DAS.questIds[zoneId] = questIds

for id, _ in pairs(questIds) do
	DAS_QUEST_IDS[id] = true
end