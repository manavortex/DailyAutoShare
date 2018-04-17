DAS.shareables 	        = DAS.shareables    or {}
DAS.bingo 		        = DAS.bingo 	    or {}
DAS.questFinisher       = DAS.questFinisher    or {}
DAS.questStarter        = DAS.questStarter     or {}

local zoneId    = 57    -- Deshaan
local zoneId2   = 19    -- Stormhaven
local zoneId3   = 383   -- Grahtwood

DAS.shareables[zoneId] = {
    
}
DAS.shareables[zoneId2] = DAS.shareables[zoneId]
DAS.shareables[zoneId3] = DAS.shareables[zoneId]

DAS.bingo[zoneId]       = {
    
}
DAS.bingo[zoneId2]      = DAS.bingo[zoneId]
DAS.bingo[zoneId3]      = DAS.bingo[zoneId]


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