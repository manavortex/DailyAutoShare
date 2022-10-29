local zoneId = 1383 -- Galen

DAS.subzones[1374] = zoneId -- Fauns' Thicket
DAS.subzones[1375] = zoneId -- Embervine

DAS.shareables[zoneId] = {
	-- World Boss dailies, NPC = Druid Gastoc
	GetString(DAS_MNRCA_RECOV), -- 6890 Recovered Relics, Grove of the Chimera / Chimera
	GetString(DAS_MNRCA_THREE), -- 6891 Three-Pronged Approach, Grove of the Chimera / Chimera
	GetString(DAS_MNRCA_SHRIN), -- 6892 Shrines on Shaky Ground, Grove of the Chimera / Chimera
	GetString(DAS_MNRCA_SUNFL), -- 6878 Sunflower Stamina, Valley of the Watcher / Forest Wraith (Timbershade)
	GetString(DAS_MNRCA_WAILI), -- 6881 A Wailing Wood, Valley of the Watcher / Forest Wraith (Timbershade)
	GetString(DAS_MNRCA_MOTHS), -- 6889 The Moth Study, Valley of the Watcher / Forest Wraith (Timbershade)
	-- Exploration dailies, NPC = Juline Courcelles
	GetString(DAS_MNRCA_RADIA), -- 6883 Radiant souvenirs, Embervine
	GetString(DAS_MNRCA_VOLCA), -- 6884 Volcanic Virtuoso, Embervine
	GetString(DAS_MNRCA_CRITT), -- 6885 Critter Capture, Fauns' Thicket
	GetString(DAS_MNRCA_FLOWE), -- 6886 Flower Fancier, Fauns' Thicket
	GetString(DAS_MNRCA_HELPF), -- 6887 Helpful Handbills, Llanshara [locality]
	GetString(DAS_MNRCA_MARKI), -- 6888 Marking the Path, Y'ffre's Path [locality]
	-- Volcanic Vent dailies, NPC = Druid Aishabeh
	GetString(DAS_MNRCA_VENTS), -- 6899/6901 Imminent Hazard
}
DAS.makeBingoTable(zoneId, {
	-- World Boss dailies, NPC = Druid Gastoc
	"cr",
	"ca",
	"cs",
	"ws",
	"ww",
	"wm",
	-- Exploration dailies, NPC = Juline Courcelles
	"evr",
	"evv",
	"ftc",
	"ftf",
	"llh",
	"ypm",
	-- Volcanic Vent dailies, NPC = Druid Aishabeh
	{"vv", "vent"},
})

DAS.questStarter[zoneId] = {
	[GetString(DAS_QUEST_FS_BOSS)] = true, -- 111155 Druid Gastoc
	[GetString(DAS_QUEST_FS_EXPL)] = true, -- 111153 Juline Courcelles
	[GetString(DAS_QUEST_FS_VENT)] = true, -- 111621 Druid Aishabeh
}

DAS.questFinisher[zoneId] = DAS.questStarter[zoneId]

local questIds = {
	-- World Boss dailies, NPC = Druid Gastoc
	[6890] = true, -- Recovered Relics
	[6891] = true, -- Three-Pronged Approach
	[6892] = true, -- Shrines on Shaky Ground
	[6878] = true, -- Sunflower Stamina
	[6881] = true, -- A Wailing Wood
	[6889] = true, -- The Moth Study
	-- Exploration dailies, NPC = Juline Courcelles
	[6883] = true, -- Radiant souvenirs
	[6884] = true, -- Volcanic Virtuoso
	[6885] = true, -- Critter Capture
	[6886] = true, -- Flower Fancier
	[6887] = true, -- Helpful Handbills
	[6888] = true, -- Marking the Path
	-- Volcanic Vent dailies, NPC = Druid Aishabeh
	[6899] = true, -- Imminent Hazard
	[6901] = true, -- Imminent Hazard
}

DAS.questIds[zoneId] = questIds

for id, _ in pairs(questIds) do
	DAS_QUEST_IDS[id] = true
end