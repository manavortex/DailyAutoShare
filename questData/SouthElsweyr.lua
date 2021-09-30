local zoneId = 1133 -- Southern Elsweyr

DAS.subzones[1134] = zoneId -- Forsaken Citadel
DAS.subzones[1135] = zoneId -- Moonlit Cove
DAS.subzones[1138] = zoneId -- Dragonhold
DAS.subzones[1146] = zoneId -- Tideholm

DAS.shareables[zoneId] = {
	-- World Boss dailies : NPC = Bruccius Baenius
	GetString(DAS_SE_RICE  ), -- A Rogue and His Rice
	GetString(DAS_SE_PARIAH), -- Goutfang Pariah
	GetString(DAS_SE_HEAL  ), -- Helping the Healers
	GetString(DAS_SE_DUST  ), -- Dust Smote
	GetString(DAS_SE_FLETCH), -- Fletching Fetching
	GetString(DAS_SE_SCHOL ), -- Scholarly Observations
	-- Delve dailies : NPC = Guybert Flaubert
	GetString(DAS_SE_CANDLE), -- Solace By Candlelight
	GetString(DAS_SE_SWORD ), -- Sourcing the Ensorcelled
	GetString(DAS_SE_LILY  ), -- Lilies for Remembrance
	GetString(DAS_SE_BLOOD ), -- An Answer in Blood
	GetString(DAS_SE_TOMES ), -- Tomes of the Tsaesci
	GetString(DAS_SE_MUSH  ), -- Moonlit Mushrooms
	-- Dragon Hunt dailies : NPC = Chizbari the Chipper
	GetString(DAS_SE_DRAGON2), -- The Dragonguard's Quarry
	-- Dragonguard dailies : NPC = Dirge Truptor
	GetString(DAS_SE_FILE ), -- File Under D
	GetString(DAS_SE_BONES), -- Sticks and Bones
	GetString(DAS_SE_AWAK ), -- Rude Awakening
	GetString(DAS_SE_TUSK ), -- Taking Them to Tusk
	GetString(DAS_SE_GARD ), -- Digging Up the Garden
	GetString(DAS_SE_GRAVE), -- A Lonely Grave
}
DAS.makeBingoTable(zoneId, {
	-- World Boss dailies : NPC = Bruccius Baenius
	{"rice", "rogue"},
	{"pariah", "fang"},
	"heal",
	{"dust", "smote"},
	{"fletch", "fetch"},
	{"schol", "observ"},
	-- Delve dailies : NPC = Guybert Flaubert
	"candle",
	"sword",
	{"lily", "lilies"},
	"blood",
	{"tomes", "tome"},
	{"moon", "shroom", "shrooms"},
	-- Dragon Hunt dailies : NPC = Chizbari the Chipper
	"dragon",
	-- Dragonguard dailies : NPC = Dirge Truptor
	"file",
	{"bones", "sticks", "stick", "bone"},
	{"awak", "rude"},
	"tusk",
	{"garden", "gard"},
	"grave",
})

DAS.QuestLists[zoneId] = {
	["boss"] = {
		[GetString(DAS_SE_RICE	)] = true,
		[GetString(DAS_SE_PARIAH)] = true,
		[GetString(DAS_SE_HEAL	)] = true,
		[GetString(DAS_SE_DUST	)] = true,
		[GetString(DAS_SE_FLETCH)] = true,
		[GetString(DAS_SE_SCHOL	)] = true,
	},
	["delve"] = {
		[GetString(DAS_SE_CANDLE)] = true,
		[GetString(DAS_SE_SWORD	)] = true,
		[GetString(DAS_SE_LILY	)] = true,
		[GetString(DAS_SE_BLOOD	)] = true,
		[GetString(DAS_SE_TOMES	)] = true,
		[GetString(DAS_SE_MUSH	)] = true,
	},
	["newmoon"] = {
		[GetString(DAS_SE_FILE	)] = true,
		[GetString(DAS_SE_BONES	)] = true,
		[GetString(DAS_SE_AWAK	)] = true,
		[GetString(DAS_SE_TUSK	)] = true,
		[GetString(DAS_SE_GARD	)] = true,
		[GetString(DAS_SE_GRAVE	)] = true,
	},
}

DAS.questStarter[zoneId] = {
	[GetString(DAS_QUEST_SE_BOSS   )] = true,
	[GetString(DAS_QUEST_SE_DELVE  )] = true,
	[GetString(DAS_QUEST_SE_DRAGONS)] = true,
	[GetString(DAS_QUEST_SE_DELVE2 )] = true,
}

DAS.questFinisher[zoneId] = DAS.questStarter[zoneId]

local questIds = {
	--Bruccius Baenius
	[6376] = true, -- Goutfang Pariah
	[6421] = true, -- Helping the Healers
	[6422] = true, -- A Rogue and His Rice
	[6423] = true, -- Dust Smote
	[6424] = true, -- Scholarly Observations
	[6425] = true, -- Fletching Fetching
	--Guybert Flaubert
	[6419] = true, -- Tomes of the Tsaesci
	[6431] = true, -- Sourcing the Ensorcelled
	[6432] = true, -- Solace By Candlelight
	[6436] = true, -- Lilies for Remembrance
	[6437] = true, -- Moonlit Mushrooms
	[6438] = true, -- An Answer in Blood
	--Chizbari the Chipper
	[6434] = true, -- The Dragonguard's Quarry
	[6435] = true, -- The Dragonguard's Quarry
	--Dirge Truptor
	[6405] = true, -- Taking Them to Tusk
	[6406] = true, -- A Lonely Grave
	[6428] = true, -- Sticks and Bones
	[6429] = true, -- Digging Up the Garden
	[6430] = true, -- File Under D
	[6433] = true, -- Rude Awakening
}

DAS.questIds[zoneId] = questIds

for id, _ in pairs(questIds) do
	DAS_QUEST_IDS[id] = true
end

local prequestName, prequestId

-- Tideholm dailies prerequisite
prequestId = 6409
prequestName = GetQuestName(prequestId) -- Reformation
DAS.prequests[GetString(DAS_SE_DRAGON2)] = {
	prequestName = prequestName,
	prequestId   = prequestId,
}
DAS.prequests[GetString(DAS_SE_FILE)] = {
	prequestName = prequestName,
	prequestId   = prequestId,
}
DAS.prequests[GetString(DAS_SE_BONES)] = {
	prequestName = prequestName,
	prequestId   = prequestId,
}
DAS.prequests[GetString(DAS_SE_AWAK)] = {
	prequestName = prequestName,
	prequestId   = prequestId,
}
DAS.prequests[GetString(DAS_SE_TUSK)] = {
	prequestName = prequestName,
	prequestId   = prequestId,
}
DAS.prequests[GetString(DAS_SE_GARD)] = {
	prequestName = prequestName,
	prequestId   = prequestId,
}
DAS.prequests[GetString(DAS_SE_GRAVE)] = {
	prequestName = prequestName,
	prequestId   = prequestId,
}