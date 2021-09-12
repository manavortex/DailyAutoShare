local zoneId = 726 -- Murkmire

DAS.subzones[1065] = zoneId -- Blight Bog Sump
DAS.subzones[1066] = zoneId -- Tsofeer Cavern
DAS.subzones[1071] = zoneId -- Xul-Thuxis
DAS.subzones[1073] = zoneId -- Teeth of Sithis
DAS.subzones[1079] = zoneId -- Vakka-Bok Xanmeer

DAS.shareables[zoneId] = {
	-- World Boss dailies
	GetString(DAS_SLAVES_BOSS_1), -- Grave Circumstances
	GetString(DAS_SLAVES_BOSS_2), -- Grave Expectations
	GetString(DAS_SLAVES_BOSS_6), -- Grave Mementos
	GetString(DAS_SLAVES_BOSS_3), -- Old Baubles
	GetString(DAS_SLAVES_BOSS_4), -- Old Enemies
	GetString(DAS_SLAVES_BOSS_5), -- Old Growth
	-- Delve dailies
	GetString(DAS_SLAVES_DELVE_1), -- Antique Armor
	GetString(DAS_SLAVES_DELVE_3), -- Old Scrolls
	GetString(DAS_SLAVES_DELVE_4), -- Sacred Candles
	GetString(DAS_SLAVES_DELVE_2), -- Grave Subject Matter
	GetString(DAS_SLAVES_DELVE_5), -- Tools of Slaughter
	GetString(DAS_SLAVES_DELVE_6), -- The Weight of Words
	-- Root-Whisper Village dailies
	GetString(DAS_SLAVES_ROOT_1), -- Aloe That Heals
	GetString(DAS_SLAVES_ROOT_2), -- Envoys Who Cower
	GetString(DAS_SLAVES_ROOT_3), -- Leather That Protects
	GetString(DAS_SLAVES_ROOT_4), -- Mushrooms That Nourish
	GetString(DAS_SLAVES_ROOT_5), -- Offerings That Hide
}
DAS.makeBingoTable(zoneId, {
	-- World Boss dailies
	"circ",
	"expe",
	{"mementos", "meme"},
	"baubles",
	{"enemy", "enemies"},
	"growth",
	-- Delve dailies
	{"armor", "armour"},
	"scrolls",
	{"candle", "candles"},
	"subject",
	"tools",
	"words",
	-- Root-Whisper Village dailies
	"aloe",
	"envoys",
	"leather",
	{"mushrooms", "nourish" , "shroom", "shrooms"},
	{"offer", "hide"},
})

DAS.QuestLists[zoneId] = {
	["boss"] = {
		[GetString(DAS_SLAVES_BOSS_1)] = true,
		[GetString(DAS_SLAVES_BOSS_2)] = true,
		[GetString(DAS_SLAVES_BOSS_3)] = true,
		[GetString(DAS_SLAVES_BOSS_4)] = true,
		[GetString(DAS_SLAVES_BOSS_5)] = true,
		[GetString(DAS_SLAVES_BOSS_6)] = true,
	},
	["delve"] = {
		[GetString(DAS_SLAVES_DELVE_1)] = true,
		[GetString(DAS_SLAVES_DELVE_2)] = true,
		[GetString(DAS_SLAVES_DELVE_3)] = true,
		[GetString(DAS_SLAVES_DELVE_4)] = true,
		[GetString(DAS_SLAVES_DELVE_5)] = true,
		[GetString(DAS_SLAVES_DELVE_6)] = true,
	},
	["root"] = {
		[GetString(DAS_SLAVES_ROOT_1)] = true,
		[GetString(DAS_SLAVES_ROOT_2)] = true,
		[GetString(DAS_SLAVES_ROOT_3)] = true,
		[GetString(DAS_SLAVES_ROOT_4)] = true,
		[GetString(DAS_SLAVES_ROOT_5)] = true,
	},
}

DAS.questStarter[zoneId] = {
	[GetString(DAS_SLAVES_QUEST1)] = true,
	[GetString(DAS_SLAVES_QUEST2)] = true,
	[GetString(DAS_SLAVES_QUEST3)] = true,
}

DAS.questFinisher[zoneId] = DAS.questStarter[zoneId]

local questIds = {
	-- World Boss dailies : NPC = Bolu
	[6233] = true, -- Grave Circumstances
	[6234] = true, -- Old Growth
	[6235] = true, -- Old Baubles
	[6236] = true, -- Grave Expectations
	[6237] = true, -- Grave Mementos
	[6238] = true, -- Old Enemies
	-- Delve dailies : NPC = Varo Hosidias
	[6247] = true, -- The Weight of Words
	[6248] = true, -- Old Scrolls
	[6253] = true, -- Antique Armor
	[6264] = true, -- Sacred Candles
	[6267] = true, -- Tools of Slaughter
	[6268] = true, -- Grave Subject Matter
	-- Root-Whisper dailies : NPC = Tuwul
	[6286] = true, -- Aloe That Heals
	[6287] = true, -- Mushrooms That Nourish
	[6288] = true, -- Envoys Who Cower
	[6289] = true, -- Offerings That Hide
	[6290] = true, -- Leather That Protects
}

DAS.questIds[zoneId] = questIds

for id, _ in pairs(questIds) do
	DAS_QUEST_IDS[id] = true
end

local prequestName

-- Lilmoth dailies prerequisite
prequestName = GetQuestName(6295)
for questName, _ in pairs(DAS.QuestLists[zoneId].boss) do
	DAS.prequests[questName] = {
		prequestName = prequestName, -- Death-Hunts
		prequestId   = 6295,
	}
end
for questName, _ in pairs(DAS.QuestLists[zoneId].delve) do
	DAS.prequests[questName] = {
		prequestName = prequestName, -- Death-Hunts
		prequestId   = 6295,
	}
end

-- Root-Whisper Village dailies prerequisite
prequestName = GetQuestName(6245)
for questName, _ in pairs(DAS.QuestLists[zoneId].root) do
	DAS.prequests[questName] = {
		prequestName = prequestName, -- By River and Root
		prequestId   = 6245,
	}
end