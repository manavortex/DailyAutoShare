DAS.shareables 	= DAS.shareables or {}
DAS.bingo 		= DAS.bingo 	 or {}

local zoneId	= 823


local tbl = {}

table.insert(tbl, GetString(DAS_DB_MINO))
table.insert(tbl, GetString(DAS_DB_ARENA))
table.insert(tbl, GetString(DAS_DB_GOOD))
table.insert(tbl, GetString(DAS_DB_EVIL))

DAS.shareables[zoneId] = tbl

local tbl2 = {}
table.insert(tbl2, "mino")
table.insert(tbl2, "arena")
table.insert(tbl2, "good")
table.insert(tbl2, "evil")

DAS.bingo[zoneId] = {}

for key, value in pairs(tbl2) do
	DAS.bingo[zoneId][key] = value
end
