local zoneId = 816 -- Hew's Bane

DAS.subzones[676] = zoneId -- Shark's Teeth Grotto
DAS.subzones[763] = zoneId -- Secluded Sewers
DAS.subzones[764] = zoneId -- Underground Sepulcher
DAS.subzones[767] = zoneId -- Deadhollow Halls
DAS.subzones[770] = zoneId -- The Hideaway
DAS.subzones[771] = zoneId -- Glittering Grotto
DAS.subzones[817] = zoneId -- Bahraha's Gloom
DAS.subzones[821] = zoneId -- Thieves Den

DAS.shareables[zoneId] = {
	-- World Boss dailies
	GetString(DAS_HEWS_KOEST), -- The Lost Pearls, Syvarra of the Deep
	GetString(DAS_HEWS_THRAL), -- Thrall Cove, Captain Virindi Slave-Taker
	-- Delve dailies
	GetString(DAS_HEWS_BAHRA), -- Memories of Youth, Bahraha's Gloom
	GetString(DAS_HEWS_SHARK), -- The Sailor's Pipe, Shark's Teeth Grotto
	-- Heists
	GetString(DAS_HEWS_HDEAD), -- Heist: Deadhollow Halls
	GetString(DAS_HEWS_HGLIT), -- Heist: Glittering Grotto
	GetString(DAS_HEWS_HHIDE), -- Heist: The Hideaway
	GetString(DAS_HEWS_HSECL), -- Heist: Secluded Sewers
	GetString(DAS_HEWS_HUNDE), -- Heist: Underground Sepulcher
}
DAS.makeBingoTable(zoneId, {
	-- World Boss dailies
	{"ko", "lamia", "pearls", "syvarra"},
	{"elf", "thrall", "virindi"},
	-- Delve dailies
	{"gloom", "youth", "bahraha"},
	{"shark", "pipe"},
	-- Heists
	"halls",
	"glitter",
	"hide",
	"sewer",
	"sep"
})

DAS.questStarter[zoneId] = {
	[GetString(DAS_QUEST_TG_REACQ)] = true, -- Reacquisition Board
	[GetString(DAS_QUEST_TG_HEIST)] = true, -- Heist Board
}

DAS.questFinisher[zoneId] = {
	[GetString(DAS_QUEST_TG_SPENC)] = true, -- Spencer Rye
	[GetString(DAS_QUEST_TG_FAREN)] = true, -- Fa'ren-dar
}

local questIds = {
	-- World Boss dailies
	[5586] = true, -- The Lost Pearls
	[5587] = true, -- Thrall Cove
	-- Delve dailies
	[5588] = true, -- Memories of Youth
	[5589] = true, -- The Sailor's Pipe
	-- Heists
	[5536] = true, -- Heist: Deadhollow Halls
	[5572] = true, -- Heist: The Hideaway
	[5573] = true, -- Heist: Underground Sepulcher
	[5575] = true, -- Heist: Glittering Grotto
	[5577] = true, -- Heist: Secluded Sewers
}

DAS.questIds[zoneId] = questIds

for id, _ in pairs(questIds) do
	DAS_QUEST_IDS[id] = true
end

local prequestId, prequestName

-- Reacquisition dailies prerequisite
prequestId = 5531
prequestName = GetQuestName(prequestId) -- Partners in Crime
DAS.prequests[GetString(DAS_HEWS_KOEST)] = {
	prequestName = prequestName,
	prequestId   = prequestId,
}
DAS.prequests[GetString(DAS_HEWS_THRAL)] = {
	prequestName = prequestName,
	prequestId   = prequestId,
}
DAS.prequests[GetString(DAS_HEWS_BAHRA)] = {
	prequestName = prequestName,
	prequestId   = prequestId,
}
DAS.prequests[GetString(DAS_HEWS_SHARK)] = {
	prequestName = prequestName,
	prequestId   = prequestId,
}

-- Heist dailies prerequisite
prequestId = 5582
prequestName = GetQuestName(prequestId) -- Master of Heists
DAS.prequests[GetString(DAS_HEWS_HDEAD)] = {
	prequestName = prequestName,
	prequestId   = prequestId,
}
DAS.prequests[GetString(DAS_HEWS_HGLIT)] = {
	prequestName = prequestName,
	prequestId   = prequestId,
}
DAS.prequests[GetString(DAS_HEWS_HHIDE)] = {
	prequestName = prequestName,
	prequestId   = prequestId,
}
DAS.prequests[GetString(DAS_HEWS_HSECL)] = {
	prequestName = prequestName,
	prequestId   = prequestId,
}
DAS.prequests[GetString(DAS_HEWS_HUNDE)] = {
	prequestName = prequestName,
	prequestId   = prequestId,
}