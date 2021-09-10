local zoneId	= 1133
local tbl   = {}
local tbl2  = {}

-- Bruccius Baenius
--	A Rogue and His Rice
table.insert(tbl, GetString(DAS_SE_RICE))
table.insert(tbl2, {[1] = "rice", [2] = "rogue"})
--	Goutfang Pariah
table.insert(tbl, GetString(DAS_SE_PARIAH))
table.insert(tbl2, {[1] = "pariah", [2] = "fang"})
--	Helping the Healers
table.insert(tbl, GetString(DAS_SE_HEAL))
table.insert(tbl2, {[1] = "heal"})
-- Dust Smote
table.insert(tbl, GetString(DAS_SE_DUST))
table.insert(tbl2, {[1] = "dust", [2] = "smote"})
-- Fletching Fetching
table.insert(tbl, GetString(DAS_SE_FLETCH))
table.insert(tbl2, {[1] = "fletch", [2] = "fetch"})
-- Scholarly Observations
table.insert(tbl, GetString(DAS_SE_SCHOL))
table.insert(tbl2, {[1] = "schol", [2] = "observ"})

-- Guybert Flaubert
--	Solace By Candlelight
table.insert(tbl, GetString(DAS_SE_CANDLE))
table.insert(tbl2, {[1] = "candle"})
--	Sourcing the Ensorcelled (Acquire cursed swords)
table.insert(tbl, GetString(DAS_SE_SWORD))
table.insert(tbl2, {[1] = "sword"})
--	Lilies for Remembrance
table.insert(tbl, GetString(DAS_SE_LILY))
table.insert(tbl2, {[1] = "lily", [2] = "lilies"})
-- An Answer in Blood
table.insert(tbl, GetString(DAS_SE_BLOOD))
table.insert(tbl2, {[1] = "blood"})
--	Tomes of the Tsaesci
table.insert(tbl, GetString(DAS_SE_TOMES))
table.insert(tbl2, {[1] = "tomes", [2] = "tome"})
--	Moonlit Mushrooms
table.insert(tbl, GetString(DAS_SE_MUSH))
table.insert(tbl2, {[1] = "mush", [2] = "moon"})

--Chizbari the Chipper (same bingo!)
-- Dawn of the Dragonguard
table.insert(tbl, GetString(DAS_SE_DRAGON1))
table.insert(tbl2, {[1] = "dragon"})
-- The Dragonguard's Quarry
table.insert(tbl, GetString(DAS_SE_DRAGON2))
table.insert(tbl2, {[1] = "dragon"})

--Dirge Truptor
--	File Under D
table.insert(tbl, GetString(DAS_SE_FILE))
table.insert(tbl2, {[1] = "file"})
--	Sticks and Bones
table.insert(tbl, GetString(DAS_SE_BONES))
table.insert(tbl2, {[1] = "bones", [2] = "sticks", [3] = "stick", [4] = "bone"})
--	Rude Awakening
table.insert(tbl, GetString(DAS_SE_AWAK))
table.insert(tbl2, {[1] = "awak", [2] = "rude"})
-- Taking Them to Tusk
table.insert(tbl, GetString(DAS_SE_TUSK))
table.insert(tbl2, {[1] = "tusk"})
-- Digging Up the Garden
table.insert(tbl, GetString(DAS_SE_GARD))
table.insert(tbl2, {[1] = "garden", [2] = "gard"})
--	A Lonely Grave
table.insert(tbl, GetString(DAS_SE_GRAVE))
table.insert(tbl2, {[1] = "grave"})

DAS.shareables[zoneId]      = tbl
DAS.makeBingoTable(zoneId, tbl2)
DAS.subzones[1138] = 1133 -- Dragonhold
DAS.subzones[1146] = 1133 -- Tideholm
DAS.subzones[1134] = 1133 -- Forsaken Citadel
DAS.subzones[1135] = 1133 -- Moonlite Cove
-- set up auto quest accept:
DAS.questStarter[zoneId] = {
  [GetString(DAS_QUEST_SE_BOSS)]    = true,  -- Senchal/WB/Bruccius Baenius
  [GetString(DAS_QUEST_SE_DELVE)]    = true,  -- Senchal/Delve/Guybert Flaubert
  [GetString(DAS_QUEST_SE_DRAGONS)]    = true,  -- Dragon island/Dragons
  [GetString(DAS_QUEST_SE_DELVE2)]    = true,  -- Dragon island/Delve relic
}
-- set up auto quest turnin:
DAS.questFinisher[zoneId] = {
  [GetString(DAS_QUEST_SE_BOSS)]    = true,  -- Senchal/WB/Bruccius Baenius
  [GetString(DAS_QUEST_SE_DELVE)]    = true,  -- Senchal/Delve/Guybert Flaubert
  [GetString(DAS_QUEST_SE_DRAGONS)]    = true,  -- Dragon island/Dragons
  [GetString(DAS_QUEST_SE_DELVE2)]    = true,  -- Dragon island/Delve relic
}
DAS.questIds[zoneId] = {
  --Bruccius Baenius
  [6422] = true, --	A Rogue and His Rice	Бродяга и рис
  [6376] = true, --	Goutfang Pariah	Отверженный Кровавого клыка
  [6421] = true, --	Helping the Healers	Помощь целителям
  [6423] = true, --	Dust Smote	Выбивание пыли
  [6425] = true, --	Fletching Fetching	За стрелами
  [6424] = true, --	Scholarly Observations	Наблюдения ученых
--Guybert Flaubert
  [6432] = true, --	Solace By Candlelight	Утешение в свете свечи
  [6431] = true, --	Sourcing the Ensorcelled	Зачарованные мечи
  [6436] = true, --	Lilies for Remembrance	Поминальные лилии
  [6438] = true, --	An Answer in Blood	Ответы — в крови
  [6419] = true, --	Tomes of the Tsaesci	Книги цаэски
  [6437] = true, --	Moonlit Mushrooms	Грибы в лунном свете
--Chizbari the Chipper
  [6444] = true, -- Dawn of the Dragonguard	Рассвет Драконьей стражи
  [6434] = true, -- The Dragonguard's Quarry	Добыча Драконьей стражи
  --[6435] Another Dragon quest??
--Dirge Truptor
  [6430] = true, --	File Under D	Бумаги под литерой «Д»
  [6428] = true, --	Sticks and Bones	Палки и кости
  [6433] = true, --	Rude Awakening	Грубое пробуждение
  [6405] = true, --	Taking Them to Tusk	Поднять их на бивни
  [6429] = true, --	Digging Up the Garden	Копание в саду
  [6406] = true, --	A Lonely Grave	Одинокая могила
}