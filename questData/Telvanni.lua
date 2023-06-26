local zoneId = 1414 -- Telvanni Peninsula

DAS.subzones[1413] = zoneId -- Apocrypha
DAS.subzones[1420] = zoneId -- Bastion Nymic
DAS.subzones[1415] = zoneId -- Gorne [Public]
DAS.subzones[1416] = zoneId -- The Underweave [Public]
DAS.subzones[1396] = zoneId -- Anchre Egg Mine [Delve]
DAS.subzones[1397] = zoneId -- Camonnaruhn [Delve]
DAS.subzones[1398] = zoneId -- Quires Wind [Delve]
DAS.subzones[1399] = zoneId -- The Disquiet Study [Delve]
DAS.subzones[1400] = zoneId -- Fathoms Drift [Delve]
DAS.subzones[1401] = zoneId -- Apogee of the Tormenting Eye [Delve]

DAS.shareables[zoneId] = {
	-- World Boss dailies, NPC = Ordinator Nelyn
	GetString(DAS_NECROM_REENA), -- 7039,Reenactment Gone Awry,Vro-Kuul-Sha at Deepreave Quag
	GetString(DAS_NECROM_TRACK), -- 7040,Tracking Nightmares,Walking Nightmare at Nightmare Den
	GetString(DAS_NECROM_DEVOU), -- 7041,Devourer of Dreams,Valkynaz Dek at Chthon Plaza
	GetString(DAS_NECROM_ANCIE), -- 7042,An Ancient Omniscience,Prime Cataloger at Libram Cathedral
	GetString(DAS_NECROM_KNOWL), -- 7043,Knowledge is Power,Runemaster Xiomara at Runemaster's Acropolis
	GetString(DAS_NECROM_BREAK), -- 7044,Breaking the Chains,Corlys the Chainmaker at Clamorclap Bowl
	-- Exploration dailies, NPC = Ordinator Tilena
	GetString(DAS_NECROM_EGGRA), -- 7033,Egg Raider,Anchre Egg Mine
	GetString(DAS_NECROM_SNATC), -- 7034,Snatch and Run,Camonnaruhn
	GetString(DAS_NECROM_BOUND), -- 7035,Bound in Secrecy,Quires Wind
	GetString(DAS_NECROM_SECRR), -- 7036,Secrets Reclaimed,Disquiet Study
	GetString(DAS_NECROM_SECRP), -- 7037,Secret Protection,Apogee of the Tormenting Eye
	GetString(DAS_NECROM_MANIF), -- 7038,Manifesting Hope,Fathoms Drift
	-- Bastion Nymic dailies : NPC = Ordinator Tandasea
	GetString(DAS_NECROM_NYMIC), -- 7013/7056/7057/7058,Bastion Nymic,
}
DAS.makeBingoTable(zoneId, {
	-- World Boss dailies, NPC = Ordinator Nelyn
	"vks",
	"den",
	"dek",
	"cat",
	"xio",
	"cor",
	-- Exploration dailies, NPC = Ordinator Tilena
	"egg",
	"cam",
	"wind",
	"book",
	"eye",
	"fat",
	-- Bastion Nymic dailies : NPC = Ordinator Tandasea
	{"nymic", "bn", "bastion"},
})

DAS.questStarter[zoneId] = {
	[GetString(DAS_QUEST_TP_BOSS)] = true, -- 113595 Ordinator Nelyn
	[GetString(DAS_QUEST_TP_EXPL)] = true, -- 113454 Ordinator Tilena
	[GetString(DAS_QUEST_TP_WEVT)] = true, -- 114895/116442 Ordinator Tandasea
}

DAS.questFinisher[zoneId] = DAS.questStarter[zoneId]

local questIds = {
	-- World Boss dailies, NPC = Ordinator Nelyn
	[7039] = true,
	[7040] = true,
	[7041] = true,
	[7042] = true,
	[7043] = true,
	[7044] = true,
	-- Exploration dailies, NPC = Ordinator Tilena
	[7033] = true,
	[7034] = true,
	[7035] = true,
	[7036] = true,
	[7037] = true,
	[7038] = true,
	-- Bastion Nymic dailies : NPC = Ordinator Tandasea
	[7013] = true,
	[7056] = true,
	[7057] = true,
	[7058] = true,
}

DAS.questIds[zoneId] = questIds

for id, _ in pairs(questIds) do
	DAS_QUEST_IDS[id] = true
end