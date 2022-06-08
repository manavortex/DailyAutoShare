local zoneId = 1318 -- High Isle

DAS.subzones[1331] = zoneId -- Death's Valor Keep
DAS.subzones[1332] = zoneId -- The Firepot
DAS.subzones[1333] = zoneId -- Breakwater Cave
DAS.subzones[1334] = zoneId -- Whalefall
DAS.subzones[1335] = zoneId -- Shipwreck Shoals
DAS.subzones[1336] = zoneId -- Coral Cliffs

DAS.shareables[zoneId] = {
	-- World Boss dailies, NPC = Parisse Plouff
	GetString(DAS_IBIZA_AVARI), -- 6803 Avarice of the Eldertide, Amenos Basin / Eldertide Theurges (Rosara & Skerard)
	GetString(DAS_IBIZA_SABLE), -- 6807 The Sable Knight, Y'ffre's Cauldron / Sable Knight
	GetString(DAS_IBIZA_WILDH), -- 6808 Wildhorn's Wrath, Faun Falls / Glemyos Wildhorn
	GetString(DAS_IBIZA_SERPE), -- 6816 The Serpent Caller, Serpent Bog / Serpent Caller Vinsha
	GetString(DAS_IBIZA_ASCEN), -- 6821 Ascendant Shadows, Dark Stone Hollow / Ascendant Executioner & Harrower
	GetString(DAS_IBIZA_SPECI), -- 6822 A Special Reagent, Mornard Falls / Hadolid Matron
	-- Exploration dailies, NPC = Wayllod
	GetString(DAS_IBIZA_ARCAN), -- 6809 Arcane Research, The Firepot
	GetString(DAS_IBIZA_FINAL), -- 6805 A Final Peace, Death's Valor Keep
	GetString(DAS_IBIZA_SEEKA), -- 6815 Seek and Destroy, Breakwater Cave
	GetString(DAS_IBIZA_PRISO), -- 6818 Prison Problems, Whalefall
	GetString(DAS_IBIZA_PIRAT), -- 6825 Pirate Problems, Shipwreck Shoals
	GetString(DAS_IBIZA_DRUID), -- 6826 Druidic Research, Coral Cliffs
	-- Volcanic Vent dailies : NPC = Druid Peeska
	GetString(DAS_IBIZA_VENTS), -- 6812/6813 Venting the Threat
}
DAS.makeBingoTable(zoneId, {
	-- World Boss dailies, NPC = Parisse Plouff
	"amen",
	"sable",
	"faun",
	"serp",
	"order",
	"hado",
	-- Exploration dailies, NPC = Wayllod
	"ar",
	"fp",
	"sad",
	"pp",
	"yar",
	"dr",
	-- Volcanic Vent dailies : NPC = Druid Peeska
	{"vv", "vent"},
})

DAS.questStarter[zoneId] = {
	[GetString(DAS_QUEST_HI_BOSS)] = true, -- 106878 Parisse Plouff
	[GetString(DAS_QUEST_HI_EXPL)] = true, -- 106879 Wayllod
	[GetString(DAS_QUEST_HI_VENT)] = true, -- 108335 Druid Peeska
}

DAS.questFinisher[zoneId] = DAS.questStarter[zoneId]

local questIds = {
	-- World Boss dailies, NPC = Parisse Plouff
	[6803] = true, -- Avarice of the Eldertide
	[6807] = true, -- The Sable Knight
	[6808] = true, -- Wildhorn's Wrath
	[6816] = true, -- The Serpent Caller
	[6821] = true, -- Ascendant Shadows
	[6822] = true, -- A Special Reagent
	-- Exploration dailies, NPC = Wayllod
	[6809] = true, -- Arcane Research
	[6805] = true, -- A Final Peace
	[6815] = true, -- Seek and Destroy
	[6818] = true, -- Prison Problems
	[6825] = true, -- Pirate Problems
	[6826] = true, -- Druidic Research
	-- Volcanic Vent dailies : NPC = Druid Peeska
	[6812] = true, -- Venting the Threat
	[6813] = true, -- Venting the Threat
}

DAS.questIds[zoneId] = questIds

for id, _ in pairs(questIds) do
	DAS_QUEST_IDS[id] = true
end