local zoneId = 1160 -- Western Skyrim

DAS.subzones[1161] = zoneId -- Blackreach: Greymoor Caverns
DAS.subzones[1165] = zoneId -- The Scraps
DAS.subzones[1166] = zoneId -- Chillwind Depths
DAS.subzones[1167] = zoneId -- Dragonhome
DAS.subzones[1168] = zoneId -- Frozen Coast
DAS.subzones[1169] = zoneId -- Midnight Barrow
DAS.subzones[1170] = zoneId -- Shadowgreen

DAS.shareables[zoneId] = {
	-- World Boss dailies : NPC = Hidaver
	GetString(DAS_GOTHS_LOSTA), -- Lost Along the Shore
	GetString(DAS_GOTHS_MOONL), -- Moonlight Kidnapping
	GetString(DAS_GOTHS_CIRCL), -- Circle of Cheaters
	GetString(DAS_GOTHS_MOTHE), -- Mother of Shadows
	GetString(DAS_GOTHS_FEAST), -- Feasting in the Dark
	GetString(DAS_GOTHS_PROBL), -- Problem Growth
	-- Delve dailies : NPC = Tinzen
	GetString(DAS_GOTHS_STREN), -- The Strength of Giants
	GetString(DAS_GOTHS_TRAIL), -- A Trail Gone Cold
	GetString(DAS_GOTHS_PRESE), -- The Preservation of Life
	GetString(DAS_GOTHS_PRECI), -- Precious Bark
	GetString(DAS_GOTHS_DWEME), -- Dwemer Disassembly
	GetString(DAS_GOTHS_SPIRI), -- Spiritual Release
	-- Harrowstorm dailies : NPC = Swordthane Jylta
	GetString(DAS_GOTHS_STORM), -- Halt the Harrowstorms
}
DAS.makeBingoTable(zoneId, {
	-- World Boss dailies : NPC = Hidaver
	"ysm",
	"hor",
	"orc",
	"hag",
	"vam",
	"col",
	-- Delve dailies : NPC = Tinzen
	"frozen",
	"chill",
	"draugr",
	"bark",
	"scraps",
	"barrow",
	-- Harrowstorm dailies : NPC = Swordthane Jylta
	{"hs", "harrow"},
})

DAS.questStarter[zoneId] = {
	[GetString(DAS_QUEST_WS_BOSS   )] = true, -- 94736
	[GetString(DAS_QUEST_WS_DELVE  )] = true, -- 94414
	[GetString(DAS_QUEST_WS_HRWSTMS)] = true, -- 95442
}

DAS.questFinisher[zoneId] = DAS.questStarter[zoneId]

local questIds = {
	-- World Boss dailies : NPC = Hidaver
	[6509] = true, -- Lost Along the Shore
	[6517] = true, -- Moonlight Kidnapping
	[6518] = true, -- Circle of Cheaters
	[6519] = true, -- Mother of Shadows
	[6526] = true, -- Feasting in the Dark
	[6527] = true, -- Problem Growth
	-- Delve dailies : NPC = Tinzen
	[6493] = true, -- The Strength of Giants
	[6494] = true, -- A Trail Gone Cold
	[6495] = true, -- The Preservation of Life
	[6520] = true, -- Precious Bark
	[6523] = true, -- Dwemer Disassembly
	[6524] = true, -- Spiritual Release
	-- Harrowstorm dailies : NPC = Swordthane Jylta
	[6512] = true, -- Halt the Harrowstorms
	[6528] = true, -- Halt the Harrowstorms
}

DAS.questIds[zoneId] = questIds

for id, _ in pairs(questIds) do
	DAS_QUEST_IDS[id] = true
end