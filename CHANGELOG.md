# DailyAutoShare ChangeLog

## 4.4.4 - released 2023-01-26, @mychaelo
- Prevent auto turn-in when excessive tickets are detected (#82, @mychaelo)
- (a)(c) Refinements to the ticket detection (@mychaelo)

## 4.4.3 - released 2022-11-05, @mychaelo
- Sync quest names with the 8.2.5 data (#80, @mychaelo)
- Make 'either of' portion of the chat spam customisable (#80, @mychaelo)

## 4.4.2 - released 2022-10-31, @mychaelo
- Update the 'Toggle hidden' binding to also hide/unhide DAS permanently (#74, @mychaelo)

## 4.4.1 - released 2022-10-29, @mychaelo
- Make DAS restore itself again when not hidden manually (#73, @mychaelo)

## 4.4.0 - released 2022-10-29, @mychaelo
- Added Galen daily quests (#71, @mychaelo)
- DAS Window now actually stays hidden (#71, @mychaelo)

## 4.3.0 - released 2022-06-08, @mychaelo
- Added High Isle daily quests (#67, @mychaelo)
- Modified quest logger to use character IDs instead of names (#66, @mychaelo)
- Added spanish localisation with a placeholder UI translation (#68, @mychaelo)

## 4.2.0 - released 2021-10-30, @mychaelo
- Added Fargrave (Deadlands DLC) daily quests (#64, @mychaelo)

## 4.1.4 - released 2021-09-30, @mychaelo
- Added a submenu to toggle quests in Southern Elsweyr (#62, @mychaelo)
- Safeguarded SetGuildInviteNumber() from invalid input (#61, @mychaelo)

## 4.1.3 - released 2021-09-25, @mychaelo
- Added Western Skyrim daily quests (#58, @mychaelo)
- Fixed the DAS window popping in front of inventory and other UI screens (#56, @mychaelo)
- Removed the prerequisite warnings for Vivec, Rimmen, and Senchal dailies (#57, @mychaelo)
- Changed the default bingo codes for Blackwood again, making them briefer (#59, @mychaelo)
- Swapped a couple of quests in Blackwood so that the delve dailies mirror their WB pairs (#59, @mychaelo)

## 4.1.2 - released 2021-09-19, @mychaelo
- Added The Reach daily quests, aye (#54, @mychaelo)
- Fixed and duct-taped a handful of GUI glitches with quest lists display (#52, @mychaelo)
- Hooked onto AssistNext() of the Quest Tracker (#52, @mychaelo)
- Fixed the guild quests hiding in the New Life zones if the New Life festival is not active (#53, @mychaelo)
- Expanded the guild quests settings to make them togglable individually (#53, @mychaelo)

## 4.1.1 - released 2021-09-16, @mychaelo
- Fixed the "Start up minimised" mode (#46, @mychaelo)
- Added an EVENT_GROUP_MEMBER_JOINED listener for autoshare (#47, @mychaelo)
- Made `xanmeer` the default code for "Call of the Ruinach" in Blackwood (#48, @mychaelo)
- Safeguarded an edge-case `nil` index for bingo checker (#49, @mychaelo)
- Updated localisations with placeholder translations (#50, @mychaelo)
- Added a "Right-click for options" hint to the quest tooltips (#50, @mychaelo)

## 4.1.0 - released 2021-09-14, @mychaelo & @vortex9
- Added Southern Elsweyr daily quests (#2, @vortex9)
- Added Craglorn daily quests (#4, @vortex9)
- Fixed Bolu name for Murkmire (#10, @mychaelo)
- Cleaned up and added quest IDs to Northern Elsweyr (#11, @mychaelo)
- Reformatted, annotated & synced localisations (#12, @mychaelo)
- Restored the button textures that got garbled a couple years ago (#15, @mychaelo)
- Fixed quest lists (#18, @mychaelo)
- Added LibCustomMenu (which was always required anyway) to DependsOn (#19, @mychaelo)
- Reworked the settings panel layout (#24, @mychaelo)
- Removed several stray GLOBALs (#25, @mychaelo)
- Reworked the completion logs to make them usable outside Europe (#26, @mychaelo)
- Switched to GROUP_UPDATE listeners instead of UNIT_CREATED/DESTROYED (#31, @mychaelo)
- Enabled DAS in Blackwood by default (#33, @mychaelo)
- Refactored, restored and expanded the quest data (#34, @mychaelo)
- Added Hew's Bane daily quests (#35, @mychaelo)
- Renovated the quest tooltips, showing prerequisite quests when those are not completed (#37, @mychaelo)
- The feedback button now routes to the add-on's GitHub page (#38, @mychaelo)
- Made UI fully localisable, provided full Russian translation for the settings panel (#42, @mychaelo)

## 4.0 - released 2021-06-19, @HowlyBlood
- Added Blackwood daily quests
- Quest lists management has been moved to the Advanced Settings submenu
- Author changed from "manavortex" to "HowlyBlood, on the initial work of manavortex"
- The feedback button now sends gold to `@HowlyBlood` instead of `@manavortex`
- The feedback button now prefills the message with the following content:
  ```
  Thanks to @manavortex which is the initial creator of this addon, and Thanks to you, @HowlyBlood for keeping it update after he stoped the game.
  I have a suggestion or I have a bug to report :
  <your suggestion or bug report here>
  ```

## 3.91 - released 2019-08-18, @manavortex
- Attempted to fix Ancane's exception (can't reproduce it on my side, but I've added an additional check)

## 3.9 + Reupload - released 2019-08-11, @manavortex
- After accidentally ignoring polysoft's comment with the translations for weeks because I missed the notification, German translations for Elsweyr added and bingo codes adjusted to what he said people were actually using. Also, bought Elsweyr!

## 3.81 - released 2019-05-05, @manavortex
- Added the remaining Elsweyr dailies. In case anything is amiss, I'm currently not playing and will pick up the expansion later - just let me know.

## 3.8 - released 2019-05-05, @manavortex
- Elsweyr support

## 3.7 - released 2019-01-23, @manavortex
- now with less memes

## 3.61a - released 2018-11-22, @manavortex
- Fixed exception

## 3.61 - released 2018-11-21, @manavortex
- Fixed that "missing function call" thing

## 3.6a - released 2018-11-19, @manavortex
- Reupload including the forgotten file (git commit -am, y u no add file)

## 3.6 - released 2018-11-18, @manavortex
- Hopefully fixed the quest state display in Clockwork City. There was some confusion with the sublists.
- Hooked up Murkmire properly
- Quest reset should now properly track whether a daily was completed before or after reset

## 3.51 - released 2018-10-29, @manavortex
- More murkmire fixing

## 3.5 - released 2018-10-29, @manavortex
- Added Murkmire daily quests (Thanks @Neltje and Sordrak for doing the real work. Not sure if auto-accept from share is working, I don't yet have the quest IDs.)

## 3.4.4 - released 2018-06-28, @manavortex
- just a reupload to make sure the exception stays fixed

## 3.4.3 - released 2018-06-25, @manavortex
- fixed an exception upon quest share

## 3.4.2 - released 2018-06-18, @manavortex
- Fixed a French translation string (removed trailing dots...)
- Removed a stray debug output

## 3.4.1 - released 2018-06-14, @manavortex
- Fixed an exception on startup
- Added French translations - thanks mulanimator

## 3.4.0 - released 2018-06-12, @manavortex
- The saved variables have been reset. If you need to restore your settings, check the file - put version 1 data into version 2
- You can now bingo spam on non-English clients (Tested with German)
- Added German translations for Summerset quests (thanks polysoft)
- Keybinds to toggle the UI have been put back into the code (they were there all the time, the file just wasn't loaded)
- Logs should now correctly consider the quest reset - if you log in before quest reset, yesterday's log will be copied. If you turn in a quest after quest reset, log entries for the same day from before quest reset will be removed.
- Cleaned out a lot of unused code. I didn't run into any exceptions while doing a metrick ****ton of dailies on Summerset, so I assume everything still works.

## 3.3.5 - released 2018-06-06, @manavortex
- fixed a typo. It should work now. -.-

## 3.3.4 - released 2018-06-05, @manavortex
- fixed bingo codes for autoinvite being screwed up
- fixed wrong bingo strings while spamming when having a quest

## 3.3.3 - released 2018-06-02, @manavortex
- fixed logging

## 3.3.2 - released 2018-06-02, @manavortex
- fixed an error on startup

## 3.3.1 - released 2018-05-27, @manavortex
- fixed an exception

## 3.3.0 - released 2018-05-27, @manavortex
- has a "whisper only"-option now

## 3.2.2 - released 2018-05-26, @manavortex
- Summerset data

## 3.1.5 - released 2018-04-23, @manavortex
- Not sure what happened to 3.1.3 and 3.1.4, I'm sure something
- Minor bugfixes handling the auto degroup option. Use at own risk though :P

## 3.1.1a, 3.1.2 - released 2018-04-20, @manavortex
- Fixed lua error

## 3.1.1 - released 2018-04-17, @manavortex
- Another try at quest reset
- quest share and group share delay have a setting now

## 3.1.0a - released 2018-04-14, @manavortex
- Took out quest reset, it's too trigger-happy

## 3.1.0 - released 2018-04-14, @manavortex
- Got rid of the pesky disconnects by doing everything asynchroneously
- Added bingo codes for the US people (your bingo codes are weird, peeps!)

## 3.07b - released 2018-04-13, @manavortex
- GUI can be moved again (thanks @ArseneLapin)
- Dailies should now be reset at 8AM (thanks @Dolgubon)

## 3.0.7 - released 2018-04-12, @manavortex
- Fixed an error when trying to update the log on a new day

## 3.0.6 - released 2018-04-12, @manavortex
- Fixed the dcs! \o/
- Ripped out a bunch of outdated functions

## 3.0.5a - released 2018-04-10, @manavortex
- Added LibAsync.lua to manifest. Sorry, polysoft, my bad.

## 3.0.5 - released 2018-04-10, @manavortex
- Fixed Wrothgar autoaccept

## 3.0.4+a - released 2018-04-09, @manavortex
- Reverted the reversion, missing files are now included
- Quest auto-accept and -turnin are now working. Some questgiver names will require translations.

## 3.0.3a - released 2018-04-09, @manavortex
- Reverted to 2.9x due to a missing file. Will fix in approx. 2.5 hours.

## 3.0.2a - released 2018-04-09, @manavortex
- Removed textures folder from root. That wasn't supposed to be there.

## 3.0.2 - released 2018-04-09, @manavortex
- Hooked up some more Clockwork City quests
- Pointered up subzones instead of setting them manually - why didn't I do that right away?

## 3.0.1 - released 2018-04-09, @manavortex
- Fixed Clockwork City quests

## 3.0 - released 2018-04-09, @manavortex
- Added auto-accept / turn-in feature like Dolgubon's Lazy Writ Crafter (thanks for the heads-up, Dol!). Requires localisation to work, so if you want to use it in your language, start translating!
- Hopefully fixed the disconnects for good now - asynchroneous message handling
- Added a missing French translation string

## 2.96a+b - released 2018-04-07, @manavortex
- Hopefully no more DCs
- Chat message evaluation is now smarter and happens with pCall

## 2.95a - released 2018-04-05, @manavortex
- Fixed the group leave bug (that wasn't intended)
- Hopefully no more DCs

## 2.94b+c - released 2018-04-05, @manavortex
- Hotfixed nil exception in Vvardenfell dungeons (I hope)

## 2.94a - released 2018-04-04, @manavortex
- Reupload because I'm stupid

## 2.94 - released 2018-04-04, @manavortex
- Fixed the spam kick in busy zones. Also changed channel listening check.

## 2.93 - released 2018-04-04, @manavortex
- Fixed auto invite on bingo code - the keys were swapped

## 2.92 - released 2018-03-31, @manavortex
- Renamed "The roar of the crowd" to "crowds", so that inviting will properly work
- Applied my new logic for bingo tables to all bingo tables, so that strings are now reliably generated

## 2.91 - released 2018-03-17, @manavortex
- Inviting in the gold coast now works reliably, at least for English clients. Spent quite some time fishing there, happily sharing mino.
- Fixed a bunch of performance drags when checking if the message qualifies for action. Guess I learned a bit since I wrote this. :D

## 2.9 - released 2018-03-12, @manavortex
- Added Russian translations (thanks to TERAB1T)
- Additional checks against nil to prevent errors

## 2.85a - released 2018-02-20, @manavortex
- Reupload

## 2.85 - released 2018-02-20, @manavortex
- Hopefully fixed the error when you try to look for quest shares in the gold coast on non-english clients (That's awfully specific :D)

## 2.84 - released 2017-11-19, @manavortex
- Quests will now be marked as completed again. Oops

## 2.83 - released 2017-11-18, @manavortex
- Fixed bingo code for the Wrothgar harpy quest daily, is now no longer barpy.

## 2.82 - released 2017-11-18, @manavortex
- fixed an exception in zones without quests

## 2.81 - released 2017-11-18, @manavortex
- Fixed the height calculation
- Added delve dailies in Wrothgar

## 2.8 - released 2017-11-18, @manavortex
- AddOn will now properly ignore quests that aren't on the list
- Fixed minimise/maximise behaviour

## 2.7 - released 2017-11-05, @manavortex
- Added "Return into the shadows" delve daily
- Added the option to scale the size of the labels
- Fixed the auto-hiding behavior in zones where the addon was active, but no quests were open
- Non-English clients will now use English quest names when spamming in chat
- Fixed a few forgotten localisation issues

## 2.63 - released 2017-10-30, @manavortex
- German and French localisation added, due to Ayantir being the greatest thing since sliced bread.

## 2.62 - released 2017-10-30, @manavortex
- Fixed German lua file - again. Can't wait for the API patch when everything will work on quest IDs!

## 2.61 - released 2017-10-30, @manavortex
- Fixed a LUA error

## 2.6 - released 2017-10-30, @manavortex
- More Clockwork City!
- DAS now has an option that you can disable, "speak English instead of Bingo". It will warn you that you are going to sound like a fool if you disable it.
- Fixed some right click menu positioning issues
- Fixed the quest list not being initialized upon the being loaded
- Added the Shadow Cleft and the Halls of Regulations as sub-zones of Clockwork City, so that you can track your delve quests in there

## 2.51, 2.52 - released 2017-10-29, @manavortex
- More Clockwork City!

## 2.5 - released 2017-10-22, @manavortex
- Clockwork City!

## 2.4.3 - released 2017-08-23, @manavortex
- More French translations (thanks, Dreaming Drummer!)
- Fixed another lua error for German clients. Gotta catch them all

## 2.4.2 - released 2017-08-20, @manavortex
- Fixed a lua error for German clients.

## 2.4.1 - released 2017-08-20, @manavortex
- Tidied up translation issues in Wrothgar - thanks Snakefish. Sorry for the ****up, my reallife is somewhat demanding attention atm...

## 2.4 - released 2017-08-16, @manavortex
- More German translation, thanks Snakefish!

## 2.3 - released 2017-07-15, @manavortex
- Fixed french translation, thanks to Tous :)
- Now with German translation (wip), thanks to T.Redfish
- Added the delve dailies to the Gold Coast
- New fancy feature: Can now turn off / hide quest groups on Vvardenfell!

## 2.2 - released 2017-07-09, @manavortex
- French translation, thanks to Tous :)
- Fixed Wrothgar being incomplete

## 2.1a+b - released 2017-07-05, @manavortex
- attempted to fix the LUA error

## 2.1 - released 2017-07-04, @manavortex
- Fixed the non-triggering auto invite

## 2.0g - released 2017-06-07, @manavortex
- Attempt to fix the error for non-English clients.

## 2.0f - released 2017-06-07, @manavortex
- AddOn will now auto-hide in zones where it's not active. No, really!

## 2.0e - released 2017-06-07, @manavortex
- Fixed an index where one label too much was hidden

## 2.0d - released 2017-06-07, @manavortex
- AddOn will now auto-hide in zones where it's not active.

## 2.0c - released 2017-06-06, @manavortex
- Fixed the messed-up Morrowind bingo codes

## 2.0b - released 2017-06-06, @manavortex
- Minimising and maximising will now cause the list to display properly

## 2.0a - released 2017-06-05, @manavortex
- Un-destroyed everything I had destroyed earlier. Oops

## 2.0 - released 2017-06-05, @manavortex
- Added Morrowind support
- Removed the lag when opening/closing bag by cleverly registering a scene fragment (Thanks, very helpful dev chat! o/)
- Restructured the localisation files to avoid a ton of redundancy
- Added donation button

## 1.9 - released 2016-09-25, @manavortex
- fixed an embarassing bug that broke the entire add-on

## 1.8e - released 2016-09-25, @manavortex
- stabbing at "pattern parsing error"

## 1.8d - released 2016-09-25, @manavortex
- Made sure that the ^Fx and ^Mx is cut from the user name before trying to invite
- Added the feature to automatically leave group if bingo-ing in chat while not leader and still grouped

## 1.8c - released 2016-09-19, @manavortex
- fixed an error

## 1.8b - released 2016-09-19, @manavortex
- Tweaked around in the code a bit - if you abandon a quest, the GUI should now properly display that.

## 1.8a - released 2016-09-19, @manavortex
- Changed to full internationalisation, the generated bingo string will now always be in English, no matter what language your client is in.

## 1.8 - released 2016-08-31, @manavortex
- Changed ZoneNames to ZoneIds, will now properly work for international clients
- Will no longer try to invite yourself
- Can now listen and invite in guild chats
- Will no longer be on top of other windows

## 1.7g - released 2016-08-13, @manavortex
- fixed a b ug because I'm stupid

## 1.7e+f - released 2016-08-13, @manavortex
- Fixed an incorrectly bundled LibAddonMenu - included the most recent version

## 1.7d - released 2016-08-12, @manavortex
- Fixed a lua error upon trying to compare string with brackets

## 1.7c - released 2016-08-11, @manavortex
- fixed the russian string. Again. Hopefully minion will publish it.

## 1.7b - released 2016-08-10, @manavortex
- fixed a bug that would not consider deactivated zones when checking GUI visibility

## 1.7a - released 2016-08-10, @manavortex
- fixed a premature check that would consider all dailies complete even if one wasn't

## 1.7 - released 2016-08-10, @manavortex
- Add-on now has an option to invert the dropdown direction
- Add-on will now check for bingo string on zone chat after regex "+", "%?$", "any group for", "can someone share"

## 1.6 - released 2016-08-07, @manavortex
- Fixed opacity and button behavior to indicate more clearly whether or not the add-on is active/inviting

## 1.5a - released 2016-08-07, @manavortex
- Fixed an issue with the quest list not correctly hiding on ActionLayerPush

## 1.5 - released 2016-08-06, @manavortex
- Fixed toggle visibility issues

## 1.4 - released 2016-08-05, @manavortex
- Now with minimise/maximise toggle

## 1.3 - released 2016-08-03, @manavortex
- Added the Gold Coast dailies, will recruit on +arena and +mino

## 1.2 - released 2016-04-29, @manavortex
- Quests can now be (un)marked as completed by a click on the corresponding quest name in the DAS window.

## 1.1* - released 2016-04-23, @manavortex
- Hopefully fixed the bug where new group members wouldn't cause the qeust to be shared

## 1.1 - released 2016-04-22, @manavortex
- Fixed the inverted tooltips for share, also tidied up the backend. New icons!

## 1.0 - released 2016-04-20, @manavortex
- Yay! We're leaving open beta! And now even without unnecessary debug output!
- Also, added libcustomtitles for the fun of it!

## 0.9c - released 2016-04-20, @manavortex
- Now with an even fancier GUI. And buttons!

## 0.9b - released 2016-04-18, @manavortex
- Someone writing "stop sharing" in group chat now turns quest sharing off until you leave the group.
- Fixed something about highlighting the currently active quest

## 0.9a - released 2016-04-17, @manavortex
- Fixed something about highlighting the currently active quest
- Now has tooltips, buttons, labels and more fancy stuff. I do not declare this stable yet, but it's definitely open beta by now.

## 0.1
- Created AddOn
- added libs