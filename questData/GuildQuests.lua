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
  108,
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
DAS.QuestListTitles = DAS.QuestListTitles or {}
DAS.QuestListTitles[zoneId] = {
	[1] = GetString(DAS_GUILD_ANCHORS),
	[2] = GetString(DAS_GUILD_MADNESS),
}
DAS.QuestListTitles[zoneId2] = DAS.QuestListTitles[zoneId]
DAS.QuestListTitles[zoneId3] = DAS.QuestListTitles[zoneId]
local zoneIds = {
    [104] = {["fg"] = GetString(DAS_FG_ALIKR), ["mg"] = GetString(DAS_MG_ALIKR), ["ud"] = GetString(DAS_UD_ALIKR)}, -- Alik'r Desert
    [381] = {["fg"] = GetString(DAS_FG_AURID), ["mg"] = GetString(DAS_MG_AURID), ["ud"] = GetString(DAS_UD_AURID)}, -- Auridon
    [92 ] = {["fg"] = GetString(DAS_FG_BANGK), ["mg"] = GetString(DAS_MG_BANGK), ["ud"] = GetString(DAS_UD_BANGK)}, -- Bangkorai
    [57 ] = {["fg"] = GetString(DAS_FG_DESHA), ["mg"] = GetString(DAS_MG_DESHA), ["ud"] = GetString(DAS_UD_DESHA)}, -- Deshaan
    [101] = {["fg"] = GetString(DAS_FG_EASTM), ["mg"] = GetString(DAS_MG_EASTM), ["ud"] = GetString(DAS_UD_EASTM)}, -- Eastmarch
    [3  ] = {["fg"] = GetString(DAS_FG_GLENU), ["mg"] = GetString(DAS_MG_GLENU), ["ud"] = GetString(DAS_UD_GLENU)}, -- Glenumbra
    [383] = {["fg"] = GetString(DAS_FG_GRAHT), ["mg"] = GetString(DAS_MG_GRAHT), ["ud"] = GetString(DAS_UD_GRAHT)}, -- Grahtwood
    [108] = {["fg"] = GetString(DAS_FG_GREEN), ["mg"] = GetString(DAS_MG_GREEN), ["ud"] = GetString(DAS_UD_GREEN)}, -- Greenshade
    [58 ] = {["fg"] = GetString(DAS_FG_MALAB), ["mg"] = GetString(DAS_MG_MALAB), ["ud"] = GetString(DAS_UD_MALAB)}, -- Malabal Tor
    [382] = {["fg"] = GetString(DAS_FG_REAPE), ["mg"] = GetString(DAS_MG_REAPE), ["ud"] = GetString(DAS_UD_REAPE)}, -- Reaper's March
    [103] = {["fg"] = GetString(DAS_FG_RIFT),  ["mg"] = GetString(DAS_MG_RIFT),  ["ud"] = GetString(DAS_UD_RIFT)},  -- The Rift
    [20 ] = {["fg"] = GetString(DAS_FG_RIVEN), ["mg"] = GetString(DAS_MG_RIVEN), ["ud"] = GetString(DAS_UD_RIVEN)}, -- Rivenspire
    [117] = {["fg"] = GetString(DAS_FG_SHADO), ["mg"] = GetString(DAS_MG_SHADO), ["ud"] = GetString(DAS_UD_SHADO)}, -- Shadowfen
    [41 ] = {["fg"] = GetString(DAS_FG_STONE), ["mg"] = GetString(DAS_MG_STONE), ["ud"] = GetString(DAS_UD_STONE)}, -- Stonefalls
    [19 ] = {["fg"] = GetString(DAS_FG_STORM), ["mg"] = GetString(DAS_MG_STORM), ["ud"] = GetString(DAS_UD_STORM)}, -- Stormhaven
}
for id, guildStrings in pairs(zoneIds) do
    DAS.shareables[id]      = DAS.shareables[id]    or {}
    DAS.QuestLists[id]      = DAS.QuestLists[id]    or {}
    DAS.QuestLists[id].fg   = DAS.QuestLists[id].fg or {}
    DAS.QuestLists[id].mg   = DAS.QuestLists[id].mg or {}
    DAS.QuestLists[id].ud   = DAS.QuestLists[id].ud or {}
    -- local bingoTable        = DAS.bingo[id]         or {}
    table.insert(DAS.shareables[id],    guildStrings.fg)
    -- table.insert(bingoTable,            fgBingo)
    table.insert(DAS.shareables[id],    guildStrings.mg)
    -- table.insert(bingoTable,            mgBingo)
    table.insert(DAS.shareables[id],    guildStrings.ud)
    -- table.insert(bingoTable,            udBingo)
    -- DAS.makeBingoTable(id,              bingoTable)
    table.insert(DAS.QuestLists[zoneId].fg, guildStrings.fg)
    table.insert(DAS.QuestLists[zoneId].mg, guildStrings.mg)
    table.insert(DAS.QuestLists[zoneId].ud, guildStrings.ud)
end

table.insert(tbl1, DAS.QuestLists[zoneId].fg)
-- table.insert(tbl2, fgBingo)
table.insert(tbl1, DAS.QuestLists[zoneId].mg)
-- table.insert(tbl2, mgBingo)

for idx, questName in pairs(DAS.QuestLists[zoneId].ud) do
    table.insert(tbl1, questName)
    -- table.insert(tbl2, udBingo)
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
    -- Undaunted
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
    [5800]  = true, -- Cursed Baubles of Stormhaven
    [5802]  = true, -- Inflamed Pyres of the Rift
    [5808]  = true, -- Darkness Blooms in Rivenspire
    [5853]  = true, -- Culinary Justice in Greenshade
    
    -- Mages Guild
    [5814]  = true, -- Madness in Alik'r Desert
    [5816]  = true, -- Madness in Auridon
    [5818]  = true, -- Madness in Bangkorai
    [5819]  = true, -- Madness in Deshaan
    [5820]  = true, -- Madness in Eastmarch
    [5822]  = true, -- Madness in Glenumbra
    [5823]  = true, -- Madness in Grahtwood
    [5824]  = true, -- Madness in Greenshade
    [5825]  = true, -- Madness in Malabal Tor
    [5826]  = true, -- Madness in Reaper's March
    [5827]  = true, -- Madness in Rivenspire
    [5828]  = true, -- Madness in Shadowfen
    [5829]  = true, -- Madness in Stonefalls
    [5830]  = true, -- Madness in Stormhaven
    [5831]  = true, -- Madness in the Rift
    
    -- Fighters Guild
    [5833]  = true, -- Dark Anchors in Glenumbra
    [5784]  = true, -- Dark Anchors in Stormhaven
    [5785]  = true, -- Dark Anchors in Rivenspire
    [5786]  = true, -- Dark Anchors in Alik'r Desert
    [5787]  = true, -- Dark Anchors in Bangkorai
    [5788]  = true, -- Dark Anchors in Stonefalls
    [5789]  = true, -- Dark Anchors in Deshaan
    [5790]  = true, -- Dark Anchors in Shadowfen
    [5791]  = true, -- Dark Anchors in Eastmarch
    [5792]  = true, -- Dark Anchors in the Rift
    [5793]  = true, -- Dark Anchors in Auridon
    [5794]  = true, -- Dark Anchors in Grahtwood
    [5795]  = true, -- Dark Anchors in Malabal Tor
    [5796]  = true, -- Dark Anchors in Greenshade
    [5797]  = true, -- Dark Anchors in Reaper's March
}
DAS.questIds[zoneId2] = DAS.questIds[zoneId]
DAS.questIds[zoneId3] = DAS.questIds[zoneId]