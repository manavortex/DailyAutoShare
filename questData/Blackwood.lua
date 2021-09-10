local zoneId	= 1261
local tbl   = {}
local tbl2  = {}
table.insert(tbl, GetString(DAS_BLACKWD_TOAD))
table.insert(tbl2, {[1] = "toad", [2] = "tongue", [3] = "any"})
table.insert(tbl, GetString(DAS_BLACKWD_RITUAL))
table.insert(tbl2, {[1] = "ritual", [2] = "Sul-Xan", [3] = "any"})
table.insert(tbl, GetString(DAS_BLACKWD_EXCAV))
table.insert(tbl2, {[1] = "excav", [2] = "excavation", [3] = "any", [3] = "bull"})
table.insert(tbl, GetString(DAS_BLACKWD_FROG))
table.insert(tbl2,  {[1] = "frog", [2] = "deathwart", [3] = "any"})
table.insert(tbl, GetString(DAS_BLACKWD_XANMEER))
table.insert(tbl2, {[1] = "ruinark", [2] = "xanmeer", [3] = "any"})
table.insert(tbl, GetString(DAS_BLACKWD_LAGOON))
table.insert(tbl2, {[1] = "lagoon",[2] = "xeemhok", [3] = "any"})

table.insert(tbl, GetString(DAS_BLACKWD_BLOODRUN))
table.insert(tbl2, {[1] = "ru", [2] = "Bloodrun", [3] = "any"})
table.insert(tbl, GetString(DAS_BLACKWD_BEAUTY))
table.insert(tbl2, {[1] = "beauty", [2] = "danger", [3] = "any"})
table.insert(tbl, GetString(DAS_BLACKWD_BLESS))
table.insert(tbl2, {[1] = "bless", [2] = "blessing", [3] = "any"})
table.insert(tbl, GetString(DAS_BLACKWD_CHAIN))
table.insert(tbl2, {[1] = "chain", [2] = "break", [3] = "any"})
table.insert(tbl, GetString(DAS_BLACKWD_INSECT))
table.insert(tbl2, {[1] = "insect", [2] = "savior", [3] = "any"})
table.insert(tbl, GetString(DAS_BLACKWD_CONFLICT))
table.insert(tbl2, {[1] = "conflict", [2] = "interest", [3] = "any"})
DAS.shareables[zoneId]      = tbl
DAS.makeBingoTable(zoneId, tbl2)

-- set up auto quest accept:
DAS.questStarter[zoneId] = {
  [GetString(DAS_QUEST_BW_BOSS)]	= true,  -- Questgiver 1
  [GetString(DAS_QUEST_BW_DELVE)]    	= true,  -- Questgiver 2
}
-- set up auto quest turnin:
DAS.questFinisher[zoneId] = {
  [GetString(DAS_QUEST_BW_BOSS)]  = true,
  [GetString(DAS_QUEST_BW_DELVE)]  = true,
}
DAS.questIds[zoneId] = {
	[6644]  = true, --	"A Proper Blessing",			DELVE
	[6645]  = true, --	"Legend of the Man-Bull	",		BOSS
	[6649]  = true, -- 	"Goblin Research",			BOSS
 	[6650]  = true, -- 	"Rites of the Sul-Xan",			BOSS
	[6651]  = true, --	"A Reign of Frogs",			BOSS
	[6652]  = true, -- 	"The Trophy-Taker",			BOSS	
	[6653]  = true, --	"Call of the Ruinach",			BOSS
	[6665]  = true, --	"Shadow Tactics",			DELVE
	[6668]  = true, --	"Beauty Amid Danger",			DELVE
	[6673]  = true, -- 	"Conflict of Interest",			DELVE
	[6674]  = true, --	"Breaking the Chain			DELVE
	[6675]  = true, --	"Insect Savior",			DELVE

}
