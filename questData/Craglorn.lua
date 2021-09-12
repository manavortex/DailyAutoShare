local zoneId = 888 -- Craglorn

DAS.subzones[632] = zoneId -- Skyreach Hold
DAS.subzones[891] = zoneId -- Serpent's Nest
DAS.subzones[892] = zoneId -- Ilthag's Undertower
DAS.subzones[894] = zoneId -- Loth'Na Caverns
DAS.subzones[900] = zoneId -- The Howling Sepulchers
DAS.subzones[902] = zoneId -- Fearfangs Cavern
DAS.subzones[903] = zoneId -- Exarch's Stronghold
DAS.subzones[907] = zoneId -- Rahni'Za, School of Warriors
DAS.subzones[908] = zoneId -- Shada's Tear
DAS.subzones[909] = zoneId -- Seeker's Archive
DAS.subzones[910] = zoneId -- Elinhir Sewerworks
DAS.subzones[913] = zoneId -- The Mage's Staff
DAS.subzones[914] = zoneId -- Skyreach Catacombs
DAS.subzones[916] = zoneId -- Skyreach Pinnacle

DAS.shareables[zoneId] = {
	-- lower Craglorn
	GetString(DAS_CRAG_SARA    ), -- Critical Mass				↓Sara Benele		↑Sara Benele
	GetString(DAS_CRAG_SHADA   ), -- The Fallen City of Shada	↓Greban				↑Sali'ma
	GetString(DAS_CRAG_NEDE    ), -- The Reason We Fight		↓Nhalan				↑Tishi
	GetString(DAS_CRAG_NEREID  ), -- Waters Run Foul			↓Ralai				↑Ralai
	GetString(DAS_CRAG_HERMY   ), -- The Seeker's Archive		↓Ibrula				↑Ibrula
	GetString(DAS_CRAG_ELINHIR ), -- Supreme Power				↓Fights-With-Tail	↑Minerva Lauzon
	GetString(DAS_CRAG_TUWHACCA), -- The Trials of Rahni'Za		↓Fada at-Glina		↑Master Timen
	-- upper Craglorn
	GetString(DAS_CRAG_NIRNCRUX ), -- The Blood of Nirn			↓Nendirume				↑Nendirume
	GetString(DAS_CRAG_WORLDTRIP), -- The Gray Passage			↓The Gray Passage		↑The Gray Menhir
	GetString(DAS_CRAG_SCALES   ), -- Iron and Scales			↓Lashburr Tooth-Breaker	↑Lashburr Tooth-Breaker
	GetString(DAS_CRAG_NECRO    ), -- Souls of the Betrayed		↓Crusader Dalamar		↑Crusader Dalamar
	GetString(DAS_CRAG_KIDNAP   ), -- Taken Alive				↓Scattered-Leaves		↑Scattered-Leaves
	GetString(DAS_CRAG_HITMAN   ), -- The Truer Fangs			↓Safa al-Satakalaam		↑Safa al-Satakalaam
	GetString(DAS_CRAG_DUNGEON  ), -- Uncaged					↓Mederic Vyger			↑Mederic Vyger
}
DAS.makeBingoTable(zoneId, {
	-- lower Craglorn
	{"sara", "mass"},
	{"shada", "city"},
	{"reason", "nede"},
	{"nereid", "foul", "water"},
	{"seeker", "hermy"},
	{"power", "elihir"},
	"rahni",
	-- upper Craglorn
	"nirn",
	"trip",
	{"scales", "iron"},
	{"necro", "souls", "catacombs"},
	{"kidnap", "alive"},
	{"hitman", "fang", "fangs"},
	{"dungeon", "uncage", "cage"},
})

DAS.questStarter[zoneId] = {
	[GetString(DAS_QUEST_CRA_SARA) ] = true,
	[GetString(DAS_QUEST_CRA_GREBA)] = true,
	[GetString(DAS_QUEST_CRA_NHALA)] = true,
	[GetString(DAS_QUEST_CRA_RALAI)] = true,
	[GetString(DAS_QUEST_CRA_IBRUL)] = true,
	[GetString(DAS_QUEST_CRA_FIGHT)] = true,
	[GetString(DAS_QUEST_CRA_FADA) ] = true,
	[GetString(DAS_QUEST_CRA_NENDI)] = true,
	[GetString(DAS_QUEST_CRA_GRAYP)] = true,
	[GetString(DAS_QUEST_CRA_LASHB)] = true,
	[GetString(DAS_QUEST_CRA_CRUSA)] = true,
	[GetString(DAS_QUEST_CRA_SCATT)] = true,
	[GetString(DAS_QUEST_CRA_SAFA) ] = true,
	[GetString(DAS_QUEST_CRA_MERED)] = true,
}

DAS.questFinisher[zoneId] = {
	[GetString(DAS_QUEST_CRA_SARA) ] = true,
	[GetString(DAS_QUEST_CRA_SALIM)] = true,
	[GetString(DAS_QUEST_CRA_TISHI)] = true,
	[GetString(DAS_QUEST_CRA_RALAI)] = true,
	[GetString(DAS_QUEST_CRA_IBRUL)] = true,
	[GetString(DAS_QUEST_CRA_MINER)] = true,
	[GetString(DAS_QUEST_CRA_MASTE)] = true,
	[GetString(DAS_QUEST_CRA_NENDI)] = true,
	[GetString(DAS_QUEST_CRA_GRAYM)] = true,
	[GetString(DAS_QUEST_CRA_LASHB)] = true,
	[GetString(DAS_QUEST_CRA_CRUSA)] = true,
	[GetString(DAS_QUEST_CRA_SCATT)] = true,
	[GetString(DAS_QUEST_CRA_SAFA) ] = true,
	[GetString(DAS_QUEST_CRA_MERED)] = true,
}

local questIds = {
	-- lower
	[5749]  = true, -- The Seeker's Archive
	[5750]  = true, -- The Fallen City of Shada
	[5751]  = true, -- The Trials of Rahni'Za
	[5754]  = true, -- Waters Run Foul
	[5755]  = true, -- Supreme Power
	[5756]  = true, -- Critical Mass
	[5762]  = true, -- The Reason We Fight
	-- upper
	[5764]  = true, -- The Truer Fangs
	[5765]  = true, -- Taken Alive
	[5766]  = true, -- Iron and Scales
	[5767]  = true, -- The Blood of Nirn
	[5770]  = true, -- Souls of the Betrayed
	[5772]  = true, -- Uncaged
	[5777]  = true, -- The Gray Passage
}

DAS.questIds[zoneId] = questIds

for id, _ in pairs(questIds) do
	DAS_QUEST_IDS[id] = true
end