--WiP

local zoneId	= 1261
local tbl   = {}
local tbl2  = {}
table.insert(tbl, GetString(DAS_BLACKWD_TOAD))
table.insert(tbl2, {[1] = "toad", [2] = "tongue"})
table.insert(tbl, GetString(DAS_BLACKWD_RITUAL))
table.insert(tbl2, {[1] = "ritual", [2] = "test"})
table.insert(tbl, GetString(DAS_BLACKWD_EXCAV))
table.insert(tbl2, {[1] = "excav", [2] = "excavation"})
table.insert(tbl, GetString(DAS_BLACKWD_FROG))
table.insert(tbl2,  {[1] = "frog", [2] = "deathwart"})
table.insert(tbl, GetString(DAS_BLACKWD_XANMEER))
table.insert(tbl2, {[1] = "toad", [2] = "xanmeer"})
table.insert(tbl, GetString(DAS_BLACKWD_LAGOON))
table.insert(tbl2, {[1] = "lagoon",[2] = "test"})
DAS.shareables[zoneId]      = tbl
DAS.makeBingoTable(zoneId, tbl2)

-- If there are subzones, you register them like this but I don't know it it is the case:
--DAS.subzones[zoneId+1] = zoneId
--DAS.subzones[zoneId+2] = zoneId
--DAS.subzones[zoneId+3] = zoneId

local zoneId = DAS.GetZoneId()
local quests = DAS.shareables[zoneId] or DAS.shareables[DAS.subzones[zoneId]] or {}

--[[ Not checked further as i don't haveall these ID

-- set up auto quest accept:
DAS.questStarter[zoneId] = {
  [GetString(DAS_QUEST_YOUR_NPC1)]    = true,  -- Questgiver 1
  [GetString(DAS_QUEST_YOUR_NPC2)]    = true,  -- Questgiver 2
  [GetString(DAS_QUEST_YOUR_NPC3)]    = true,  -- Questgiver 3
}
-- set up auto quest turnin:
DAS.questFinisher[zoneId] = {
  [GetString(DAS_QUEST_YOUR_NPC1)]  = true,
  [GetString(DAS_QUEST_YOUR_NPC2)]  = true,
  -- fictional NPC3 just hands out, doesn't accept
}
--[[
  I'm matching against the quest IDs for auto accepting quest shares.
  Reason: Comparing numbers is a tonne cheaper than comparing strings.
  Make sure you register the quest IDs. Unfortunately, you can only see them
  when you get a quest shared OR via iteration after yu have completed those.
-- ]
-- Set up like below (Morrowind example):
DAS.questIds[zoneId] = {
  [5924]  = true, -- "Relics of Yasammidan",
	[5925]  = true, -- "Relics of Assarnatamat",
}
-- or by loop (Summerset example)
DAS.questIds[zoneId] = {}
for i=6082, 6087 do
  DAS.questIds[zoneId][i] = true
  DAS_QUEST_IDS[i] = true
end
-- now hook up additiona subzone IDs (like Clockwork City - Brass Citadel has its own ID
DAS.zoneHasAdditionalId(zoneId2, zoneId)
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
