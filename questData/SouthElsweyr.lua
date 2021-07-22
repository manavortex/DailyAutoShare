-- If I suddenly drop dead and you want to maintain this AddOn
-- specify the zone ID as local variable
local zoneId	= 1133
-- have two local tables. The first is for quest names, the second is for the corresponding bingo codes.
local tbl   = {}
local tbl2  = {}
--[[
  set up the tables. Order of quests in the UI depends on the order you add them here.
  Important: You have to use GetString(YOUR_QUEST_NAME_CONSTANT) here, or localization won't work.
  Localization strings are defined in ../locale/<lang>.lua
--]]

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

-- ...
-- now set the table with the quest names for the zone
DAS.shareables[zoneId]      = tbl
-- call the func to make the bingo table.
DAS.makeBingoTable(zoneId, tbl2)
--[[ you now have two maps:
  --        {questName -> questId}
  --        {bingoCode -> questId}
  -- to save performance, the quest ID is stored in the control, on top of that there's a table somewhere in the DAS table that holds
  -- the active quest IDs. There's a lot of redundancy in this AddOn, since I've dropped dead, feel free to optimize.
-- ]]
-- If there are subzones, you register them like this:
DAS.subzones[1138] = 1133 -- Dragonhold
DAS.subzones[1146] = 1133 -- Tideholm
-- DAS.subzones[zoneId+1] = zoneId
-- DAS.subzones[zoneId+2] = zoneId
-- DAS.subzones[zoneId+3] = zoneId
-- Quest lookup happens via
local zoneId = DAS.GetZoneId()
local quests = DAS.shareables[zoneId] or DAS.shareables[DAS.subzones[zoneId]] or {}
--[[
  That way, if you're in a zone's subzone, it will show the zone's parent quests, unless
  you feel like setting up extra tables for those that only show the current (delve) quest.
  See Morrowind.lua for examples of that.
-- ]]
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
--[[
  I'm matching against the quest IDs for auto accepting quest shares.
  Reason: Comparing numbers is a tonne cheaper than comparing strings.
  Make sure you register the quest IDs. Unfortunately, you can only see them
  when you get a quest shared OR via iteration after yu have completed those.
-- ]]
-- Set up like below (Morrowind example):
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
-- or by loop (Summerset example)
--[[DAS.questIds[zoneId] = {}
for i=6082, 6087 do
  DAS.questIds[zoneId][i] = true
  DAS_QUEST_IDS[i] = true
end
]]
-- now hook up additiona subzone IDs (like Clockwork City - Brass Citadel has its own ID
--DAS.zoneHasAdditionalId(zoneId2, zoneId)
--[[
  Don't forget to register the zone ID in the options. If the AddOn isn't detecting active in the settings
  for its zone ID, it won't show.
  ..\00_startup
  defaults.tracked[zoneId]
  You also need to register a menu setting so users can toggle it on and off
  ..\DASMenu.lua
  Hook up your new quest data file in the AddOn's manifest file:
  ..\DailyAutoShare.txt
  ... and you're good to go.
]]