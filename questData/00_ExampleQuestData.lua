-- If I suddenly drop dead and you want to maintain this AddOn

-- specify the zone ID as local variable
local zoneId	= 666


-- have two local tables. The first is for quest names, the second is for the corresponding bingo codes.
local tbl   = {}
local tbl2  = {}



--[[  
  
  set up the tables. Order of quests in the UI depends on the order you add them here. 
  
  Important: You have to use GetString(YOUR_QUEST_NAME_CONSTANT) here, or localization won't work.
  Localization strings are defined in ../locale/<lang>.lua
  
--]]

table.insert(tbl, GetString(YOUR_QUEST_NAME_CONSTANT))
table.insert(tbl2, {[1] = "bingo", [2] = "das", [3] = "DailyAutoshare", [4] = "example", [5] = "inviteme", [6] = "test"})

-- rinse and repeat, until all your corresponding quest names / bingo strings are in your tables
table.insert(tbl, GetString(YOUR_QUEST_NAME_CONSTANT2))
table.insert(tbl2, "bingo")

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

DAS.subzones[zoneId+1] = zoneId
DAS.subzones[zoneId+2] = zoneId
DAS.subzones[zoneId+3] = zoneId

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
-- ]]

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