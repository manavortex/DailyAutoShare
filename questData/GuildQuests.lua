local zoneId    = 57    -- Deshaan
local zoneId2   = 19    -- Stormhaven
local zoneId3   = 383   -- Grahtwood
local tbl1 = {}
local tbl2 = {}
local fgBingo = {[1] = "fg", [2] = "fighters",   [3] = "cardea"}
local mgBingo = {[1] = "mg", [2] = "mages",      [3] = "alvur"}
local udBingo = {[1] = "ud", [2] = "undaunted",  [3] = "bolgrul"}
DAS.QuestLists[zoneId] = {
	["fg"] = {},
	["mg"] = {},
	["ud"] = {},
}

DAS.subLists.guilds = {
  104,
  381,
  92,
  57, 
  101,
  3,
  383,
  104,
  58,
  382,
  103,
  20, 
  117,
  41,
  19,
}

DAS.subLists.fg = DAS.subLists.guilds
DAS.subLists.mg = DAS.subLists.guilds
DAS.subLists.ud = DAS.subLists.guilds

DAS.QuestLists[zoneId2]  = DAS.QuestLists[zoneId]
DAS.QuestLists[zoneId3]  = DAS.QuestLists[zoneId]
local zoneIds = {
    [104] = GetString(DAS_UD_ALIKR), -- Alik'r Desert
    [381] = GetString(DAS_UD_AURID), -- Auridon
    [92 ] = GetString(DAS_UD_BANGK), -- Bangkorai
    [57 ] = GetString(DAS_UD_DESHA), -- Deshaan
    [101] = GetString(DAS_UD_EASTM), -- Eastmarch
    [3  ] = GetString(DAS_UD_GLENU), -- Glenumbra
    [383] = GetString(DAS_UD_GRAHT), -- Grahtwood
    [104] = GetString(DAS_UD_GREEN), -- Greenshade
    [58 ] = GetString(DAS_UD_MALAB), -- Malabal Tor
    [382] = GetString(DAS_UD_REAPE), -- Reaper's March
    [103] = GetString(DAS_UD_RIFT),  -- The Rift
    [20 ] = GetString(DAS_UD_RIVEN), -- Rivenspire
    [117] = GetString(DAS_UD_SHADO), -- Shadowfen
    [41 ] = GetString(DAS_UD_STONE), -- Stonefalls
    [19 ] = GetString(DAS_UD_STORM), -- Stormhaven
}
for id, udString in pairs(zoneIds) do
    local zoneName = GetZoneNameByIndex(GetZoneIndex(id))
    local fgString = GetString(DAS_GUILD_ANCHORS) .. zoneName
    local mgString = GetString(DAS_GUILD_MADNESS) .. zoneName
    DAS.shareables[id]      = DAS.shareables[id]    or {}
    DAS.QuestLists[id]      = DAS.QuestLists[id]    or {}
    DAS.QuestLists[id].fg   = DAS.QuestLists[id].fg or {}
    DAS.QuestLists[id].mg   = DAS.QuestLists[id].mg or {}
    DAS.QuestLists[id].ud   = DAS.QuestLists[id].ud or {}
    local bingoTable        = DAS.bingo[id]         or {}
    table.insert(DAS.shareables[id],    fgString)
    table.insert(bingoTable,            fgBingo)
    table.insert(DAS.shareables[id],    mgString)
    table.insert(bingoTable,            mgBingo)
    table.insert(DAS.shareables[id],    udString)
    table.insert(bingoTable,            udBingo)
    DAS.makeBingoTable(id,              bingoTable)
    table.insert(DAS.QuestLists[zoneId].fg, fgString)
    table.insert(DAS.QuestLists[zoneId].mg, mgString)
    table.insert(DAS.QuestLists[zoneId].ud, udString)
end

table.insert(tbl1, DAS.QuestLists[zoneId].fg)
table.insert(tbl2, fgBingo)
table.insert(tbl1, DAS.QuestLists[zoneId].mg)
table.insert(tbl2, mgBingo)

for idx, questName in pairs(DAS.QuestLists[zoneId].ud) do
    table.insert(tbl1, questName)
    table.insert(tbl2, udBingo)
end

DAS.shareables[zoneId]  = tbl1
DAS.shareables[zoneId2] = DAS.shareables[zoneId]
DAS.shareables[zoneId3] = DAS.shareables[zoneId]
DAS.bingo[zoneId]       = DAS.makeBingoTable(zoneId, tbl2)
DAS.bingo[zoneId2]      = DAS.bingo[zoneId]
DAS.bingo[zoneId3]      = DAS.bingo[zoneId]

-- Alik'r Desert, Auridon, Bangkorai, Deshaan, Eastmarch, Glenumbra, Grahtwood, Greenshade, Malabal Tor,
-- Reaper's March, The Rift, Rivenspire, Shadowfen, Stonefalls, Stormhaven
DAS.questStarter[zoneId] = {
    [GetString(DAS_QUEST_CAP_CARDEA)]     = true,   -- Cardea Gallus,   FG
    [GetString(DAS_QUEST_CAP_ALVUR)]      = true,   -- Alvur Baren,     MG
    [GetString(DAS_QUEST_CAP_BOLGRUL)]    = true,   -- Bolgrul,         UD
}
DAS.questStarter[zoneId2] = DAS.questStarter[zoneId]
DAS.questStarter[zoneId3] = DAS.questStarter[zoneId]
DAS.questFinisher[zoneId] = {
    [GetString(DAS_QUEST_CAP_CARDEA)]     = true,   -- Cardea Gallus,   FG
    [GetString(DAS_QUEST_CAP_ALVUR)]      = true,   -- Alvur Baren,     MG
    [GetString(DAS_QUEST_CAP_BOLGRUL)]    = true,   -- Bolgrul,         UD
}

DAS.questFinisher[zoneId2] = DAS.questFinisher[zoneId]
DAS.questFinisher[zoneId3] = DAS.questFinisher[zoneId]
DAS.questIds[zoneId] = {
    -- guild
    [5733]  = true, -- Ancient Armaments in Bangkorai
    [5734]  = true, -- The Spirit Trap in Malabal Tor
    [5735]  = true, -- Ancestor Wards in Deshaan
    [5737]  = true, -- Dwarven Relics of Stonefalls
    [5738]  = true, -- Ayleid Trinkets in Grahtwood
    [5739]  = true, -- Red Rook Ransack in Glenumbra
    [5740]  = true, -- Ancestor Wards in Deshaan
    [5744]  = true, -- Mascot Theft in Reaper's March
    [5745]  = true, -- Molten Pearls of Alik'r Desert
    [5778]  = true, -- Give and Take in Shadowfen
    [5779]  = true, -- Icy Intrigue in Eastmarch
    [5798]  = true, -- Veiled Darkness in Auridon
    [5800]  = true, --  Cursed Baubles of Stormhaven ??
    [5802]  = true, -- Inflamed Pyres of the Rift
    [5808]  = true, -- Darkness Blooms in Rivenspire
    [5853]  = true, -- Culinary Justice in Greenshade
}
for questId=5814, 5830 do -- Madness in...
    DAS.questIds[zoneId][questId] = true
end
for questId=5780, 5796 do -- Dark Anchors in...
    DAS.questIds[zoneId][questId] = true
end