local zoneId = 1086 -- Northern Elsweyr

DAS.subzones[1091] = zoneId -- Abode of Ignominy
DAS.subzones[1092] = zoneId -- Predator Mesa
DAS.subzones[1094] = zoneId -- Tomb of the Serpents
DAS.subzones[1095] = zoneId -- Darkpool Mine
DAS.subzones[1096] = zoneId -- The Tangle
DAS.subzones[1119] = zoneId -- Desert Wind Caverns

DAS.shareables[zoneId] = {
	-- World Boss dailies : NPC = Ri'hirr
	GetString(DAS_KITTY_WILY     ), -- The Traders' Terror
	GetString(DAS_KITTY_DEATH    ), -- Another Day, Another Death
	GetString(DAS_KITTY_DUO      ), -- A Dastardly Duo
	GetString(DAS_KITTY_NIGHTMARE), -- A Waking Nightmare
	GetString(DAS_KITTY_SWORD    ), -- Sword of the Serpent
	GetString(DAS_KITTY_SENCHE   ), -- The Senche of Decay
	-- Delve dailies : NPC = Nisuzi
	GetString(DAS_KITTY_FLAME   ), -- Dousing the Daedric Flame
	GetString(DAS_KITTY_WIND    ), -- Wisdom in the Winds
	GetString(DAS_KITTY_RUINS   ), -- Rifling Through Ruins
	GetString(DAS_KITTY_HUNGRY  ), -- The Hungry Cat's Favor
	GetString(DAS_KITTY_STAMPEDE), -- The Serpent's Stampede
	GetString(DAS_KITTY_TEA     ), -- Tangled Tea Leaves
	-- Dragon Hunt dailies : NPC = Battlereeve Tanerline
	GetString(DAS_KITTY_DRAGON),
}
DAS.makeBingoTable(zoneId, {
	-- World Boss dailies : NPC = Ri'hirr
	{"bird", "keeva", "kee"},
	{"bones", "naruzz"},
	"duo",
	{"zal", "red"},
	{"sword", "vhys"},
	{"senche", "decay", "thannar"},
	-- Delve dailies : NPC = Nisuzi
	{"flames", "flame"},
	{"scrolls", "wind"},
	"ruins",
	{"kitty", "food"},
	"serpent",
	"tea",
	-- Dragon Hunt dailies : NPC = Battlereeve Tanerline
	{"dragon", "hunt"},
})

DAS.questStarter[zoneId] = {
	[GetString(DAS_QUEST_NE_BOSS )] = true,
	[GetString(DAS_QUEST_NE_DELVE)] = true,
	[GetString(DAS_QUEST_TANERLIN)] = true,
}

DAS.questFinisher[zoneId] = DAS.questStarter[zoneId]

local questIds = {
	[6356] = true, -- "Dousing the Daedric Flame"		DELVE
	[6360] = true, -- "Rifling Through Ruins"			DELVE
	[6363] = true, -- "Tangled Tea Leaves"				DELVE
	[6361] = true, -- "The Hungry Cat's Favor"			DELVE
	[6362] = true, -- "The Serpent's Stampede"			DELVE
	[6359] = true, -- "Wisdom in the Winds"				DELVE
	[6381] = true, -- "A Dastardly Duo"					BOSS
	[6379] = true, -- "A Waking Nightmare"				BOSS
	[6380] = true, -- "Another Day, Another Death"		BOSS
	[6377] = true, -- "Sword of the Serpent"			BOSS
	[6382] = true, -- "The Senche of Decay"				BOSS
	[6378] = true, -- "The Traders' Terror"				BOSS
	[6357] = true, -- "Dragon Hunt"						EVENT
}

DAS.questIds[zoneId] = questIds

for id, _ in pairs(questIds) do
	DAS_QUEST_IDS[id] = true
end

-- Rimmen dailies prerequisite
local prequestName = GetQuestName(6348)
for _, questName in pairs(DAS.shareables[zoneId]) do
	DAS.prequests[questName] = {
		prequestName = prequestName, -- In Defense of Elsweyr
		prequestId   = 6348,
	}
end