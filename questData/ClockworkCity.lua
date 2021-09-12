local zoneId  = 980 -- Clockwork City
local zoneId2 = 981 -- The Brass Fortress
local zoneId3 = 983 -- Mechanical Fundament

DAS.subzones[zoneId2] = zoneId
DAS.subzones[zoneId3] = zoneId
DAS.subzones[985] = zoneId -- Halls of Regulation
DAS.subzones[986] = zoneId -- The Shadow Cleft
DAS.subzones[992] = zoneId -- Everwound Wellspring
DAS.subzones[993] = zoneId -- Mnemonic Planisphere

DAS.shareables[zoneId] = {
	-- boss dailies
	GetString(DAS_CLOCK_IMP),
	GetString(DAS_CLOCK_FOE),
	-- slag town dailies
	GetString(DAS_CLOCK_CRAFT_CLOTH),
	GetString(DAS_CLOCK_CRAFT_WATER),
	GetString(DAS_CLOCK_CRAFT_RUNE),
	GetString(DAS_CLOCK_CRAFT_SMITH),
	GetString(DAS_CLOCK_CRAFT_ALCH),
	GetString(DAS_CLOCK_CRAFT_WOOD),
	-- delve dailies
	GetString(DAS_CLOCK_DELVE_FILT),
	GetString(DAS_CLOCK_DELVE_FANS),
	GetString(DAS_CLOCK_DELVE_COMM),
	GetString(DAS_CLOCK_DELVE_MALF),
	GetString(DAS_CLOCK_DELVE_MISP),
	GetString(DAS_CLOCK_DELVE_AGAI),
	-- crow dailies
	GetString(DAS_CLOCK_CROW_GLIT),
	GetString(DAS_CLOCK_CROW_TRIB),
	GetString(DAS_CLOCK_CROW_NIBB),
	GetString(DAS_CLOCK_CROW_MORS),
	GetString(DAS_CLOCK_CROW_RESP),
	GetString(DAS_CLOCK_CROW_LEIS),
}
DAS.makeBingoTable(zoneId, {
	-- boss dailies
	"imp",
	"foe",
	-- slag town dailies
	"strands",
	"sticky",
	"acc",
	"grind",
	"pill",
	"fuel",
	-- delve dailies
	"filter",
	"fan",
	"comm",
	"malfunc",
	"misplaced",
	"shadows",
	-- crow dailies
	"gleam",
	"tribute",
	"bits",
	"morsels",
	"respect",
	"leisure",
})

DAS.QuestLists[zoneId] = {
	["boss"] = {
		[GetString(DAS_CLOCK_IMP)] = true,
		[GetString(DAS_CLOCK_FOE)] = true,
	},
	["craft"] = {
		[GetString(DAS_CLOCK_CRAFT_CLOTH)] = true,
		[GetString(DAS_CLOCK_CRAFT_WATER)] = true,
		[GetString(DAS_CLOCK_CRAFT_RUNE )] = true,
		[GetString(DAS_CLOCK_CRAFT_SMITH)] = true,
		[GetString(DAS_CLOCK_CRAFT_ALCH )] = true,
		[GetString(DAS_CLOCK_CRAFT_WOOD )] = true,
	},
	["crow"] = {
		[GetString(DAS_CLOCK_CROW_GLIT)] = true,
		[GetString(DAS_CLOCK_CROW_TRIB)] = true,
		[GetString(DAS_CLOCK_CROW_NIBB)] = true,
		[GetString(DAS_CLOCK_CROW_MORS)] = true,
		[GetString(DAS_CLOCK_CROW_RESP)] = true,
		[GetString(DAS_CLOCK_CROW_LEIS)] = true,
	},
	["delve"] = {
		[GetString(DAS_CLOCK_DELVE_FILT)] = true,
		[GetString(DAS_CLOCK_DELVE_FANS)] = true,
		[GetString(DAS_CLOCK_DELVE_COMM)] = true,
		[GetString(DAS_CLOCK_DELVE_MALF)] = true,
		[GetString(DAS_CLOCK_DELVE_MISP)] = true,
		[GetString(DAS_CLOCK_DELVE_AGAI)] = true,
	},
}

DAS.questStarter[zoneId] = {
	[GetString(DAS_QUEST_CC_ROBOT )] = true,
	[GetString(DAS_QUEST_CC_NOVICE)] = true,
	[GetString(DAS_QUEST_CC_ORC   )] = true,
	[GetString(DAS_QUEST_CC_CROW  )] = true,
}

DAS.questFinisher[zoneId] = {
	[GetString(DAS_QUEST_CC_ROBOT  )] = true,
	[GetString(DAS_QUEST_CC_CROW   )] = true,
	[GetString(DAS_QUEST_CC_THISTLE)] = true,
	[GetString(DAS_QUEST_CC_COOK   )] = true,
	[GetString(DAS_QUEST_CC_MINDORA)] = true,
	[GetString(DAS_QUEST_CC_NJORD  )] = true,
	[GetString(DAS_QUEST_CC_IGMUND )] = true,
	[GetString(DAS_QUEST_CC_DARO   )] = true,
	[GetString(DAS_QUEST_CC_TILELLE)] = true,
}

local questIds = {
	[6037] = true, -- Fuel for our Fires,
	[6038] = true, -- A Daily Grind,
	[6039] = true, -- Loose Strands,
	[6040] = true, -- A Sticky Solution,
	[6041] = true, -- Enchanted Accumulation,
	[6042] = true, -- A Bitter Pill,
	[6070] = true, -- Nibbles and Bits,
	[6071] = true, -- Morsels and Pecks,
	[6072] = true, -- A Matter of Respect,
	[6073] = true, -- A Shadow Misplaced,
	[6076] = true, -- Inciting the Imperfect,
	[6077] = true, -- A Fine-Feathered Foe,
	[6079] = true, -- Again Into the Shadows,
	[6080] = true, -- A Shadow Malfunction,
	[6081] = true, -- Oiling the Fans,
	[6088] = true, -- Changing the Filters,
	[6089] = true, -- Replacing the Commutators,
	[6106] = true, -- A Matter of Tributes,
	[6110] = true, -- Glitter and Gleam,
}

DAS.questIds[zoneId] = questIds

for id, _ in pairs(questIds) do
	DAS_QUEST_IDS[id] = true
end

local prequestName

-- The Halls of Regulation dailies prerequisite
prequestName = GetQuestName(6058) -- The Halls of Regulation
DAS.prequests[GetString(DAS_CLOCK_DELVE_FANS)] = {
	prequestName = prequestName,
	prequestId   = 6058,
}
DAS.prequests[GetString(DAS_CLOCK_DELVE_FILT)] = {
	prequestName = prequestName,
	prequestId   = 6058,
}
DAS.prequests[GetString(DAS_CLOCK_DELVE_COMM)] = {
	prequestName = prequestName,
	prequestId   = 6058,
}

-- The Shadow Cleft dailies prerequisite
prequestName = GetQuestName(6049) -- The Shadow Cleft
DAS.prequests[GetString(DAS_CLOCK_DELVE_MISP)] = {
	prequestName = prequestName,
	prequestId   = 6049,
}
DAS.prequests[GetString(DAS_CLOCK_DELVE_AGAI)] = {
	prequestName = prequestName,
	prequestId   = 6049,
}
DAS.prequests[GetString(DAS_CLOCK_DELVE_MALF)] = {
	prequestName = prequestName,
	prequestId   = 6049,
}

-- Blackfeather Court dailies prerequisite
prequestName = GetQuestName(6052)
for questName, _ in pairs(DAS.QuestLists[zoneId].crow) do
	DAS.prequests[questName] = {
		prequestName = prequestName, -- Lost in the Gloam
		prequestId   = 6052,
	}
end

DAS.zoneHasAdditionalId(zoneId2, zoneId)
DAS.zoneHasAdditionalId(zoneId3, zoneId)