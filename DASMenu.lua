local DAS = DailyAutoShare
local LAM = LibAddonMenu2 or LibStub:GetLibrary("LibAddonMenu-2.0")
if not LAM then return end

function DAS.CreateMenu(savedVars, defaults)
	local panelData = {
		type               = "panel",
		name               = DAS.name,
		displayName        = "Daily|c89FFE3Auto|rShare",
		author             = DAS.author,
		version            = DAS.version,
		website            = 'https://www.esoui.com/downloads/fileinfo.php?id=1340',
		feedback           = 'https://github.com/manavortex/DailyAutoShare/issues',
		translation        = 'https://github.com/manavortex/DailyAutoShare/pulls',
		slashCommand       = "/das_menu",
		registerForRefresh = true,
	}
	local optionsData = {
		{
			type    = "header",
			name    = "General Settings"
		},
		{
			type    = "checkbox",
			tooltip = "Use the same settings for all characters?",
			name    = "Account-wide Settings",
			width   = "half",
			getFunc = function() return DAS.GetUseGlobalSettings() end,
			setFunc = function(value) DAS.SetUseGlobalSettings(value) end
		},
		{
			type    = "checkbox",
			name    = "Hide UI window",
			width   = "half",
			getFunc = function() return DAS.GetHidden() end,
			setFunc = function(value) DAS.SetHidden(value) end
		},
		{ -- activate menu
			type    = "submenu",
			name    = "Activate DailyAutoShare in...",
			tooltip = GetString(DAS_MENU_ACTIV_EXPLAIN),
			controls =
			{
				{
					type    = "header",
					name    = "Zones:"
				},
				{
					type    = "checkbox",
					tooltip = "Blackwood Chapter",
					name    = "Blackwood",
					getFunc = function() return DAS.GetActiveIn(1261) end,
					setFunc = function(value) DAS.SetActiveIn(1261, value) end
				},
				{
					type    = "checkbox",
					tooltip = "Clockwork City DLC",
					name    = "Clockwork City",
					getFunc = function() return DAS.GetActiveIn(980) end,
					setFunc = function(value)
						DAS.SetActiveIn(980, value)
						DAS.SetActiveIn(981, value)
						DAS.SetActiveIn(983, value)
					end
				},
				{ -- submenu: Clockwork City
					type     = "submenu",
					name     = "Clockwork City Options",
					disabled = function() return (not DAS.GetActiveIn(980)) end,
					controls =
					{
						{
							type    = "header",
							name    = "Brass Fortress: Delves"
						},
						{
							type    = "checkbox",
							name    = "Enable",
							tooltip = zo_strformat("Quest giver is |cFFFFFF<<1>>|r in the Brass Fortress\nRequires completing the following prerequisite quests (either of):\n• <<2>>\n• <<3>>", GetString(DAS_QUEST_CC_NOVICE), GetQuestName(6058), GetQuestName(6049)),
							width   = "half",
							getFunc = function() return DAS.GetQuestListItem(980, "delve", "active") end,
							setFunc = function(value) DAS.SetQuestListItem(980, "delve", "active", value) end
						},
						{
							type     = "checkbox",
							name     = "Hide",
							tooltip  = "Hide the quests from UI List but keep sharing them",
							width    = "half",
							disabled = function() return not DAS.GetQuestListItem(980, "delve", "active") end,
							getFunc  = function() return DAS.GetQuestListItem(980, "delve", "invisible") end,
							setFunc  = function(value) DAS.SetQuestListItem(980, "delve", "invisible", value) end
						},
						{
							type    = "header",
							name    = "Brass Fortress: World Bosses"
						},
						{
							type    = "checkbox",
							name    = "Enable",
							tooltip = zo_strformat("Quest giver is |cFFFFFF<<1>>|r in the Brass Fortress", GetString(DAS_QUEST_CC_ROBOT)),
							width   = "half",
							getFunc = function() return DAS.GetQuestListItem(980, "boss", "active") end,
							setFunc = function(value) DAS.SetQuestListItem(980, "boss", "active", value) end
						},
						{
							type     = "checkbox",
							name     = "Hide",
							tooltip  = "Hide the quests from UI List but keep sharing them",
							width    = "half",
							disabled = function() return not DAS.GetQuestListItem(980, "boss", "active") end,
							getFunc  = function() return DAS.GetQuestListItem(980, "boss", "invisible") end,
							setFunc  = function(value) DAS.SetQuestListItem(980, "boss", "invisible", value) end
						},
						{
							type    = "header",
							name    = "Slag Town: Gathering dailies"
						},
						{
							type    = "checkbox",
							name    = "Enable",
							tooltip = zo_strformat("Quest giver is |cFFFFFF<<1>>|r in the Brass Fortress", GetString(DAS_QUEST_CC_ORC)),
							width   = "half",
							getFunc = function() return DAS.GetQuestListItem(980, "craft", "active") end,
							setFunc = function(value) DAS.SetQuestListItem(980, "craft", "active", value) end
						},
						{
							type     = "checkbox",
							name     = "Hide",
							tooltip  = "Hide the quests from UI List but keep sharing them",
							width    = "half",
							disabled = function() return not DAS.GetQuestListItem(980, "craft", "active") end,
							getFunc  = function() return DAS.GetQuestListItem(980, "craft", "invisible") end,
							setFunc  = function(value) DAS.SetQuestListItem(980, "craft", "invisible", value) end
						},
						{
							type    = "header",
							name    = "Slag Town: Blackfeather Court"
						},
						{
							type    = "checkbox",
							name    = "Enable",
							tooltip = zo_strformat("Quest giver is |cFFFFFF<<1>>|r in the Brass Fortress\nRequires progressing the zone story past the following quest:\n• <<2>>", GetString(DAS_QUEST_CC_CROW), GetQuestName(6052)),
							width   = "half",
							getFunc = function() return DAS.GetQuestListItem(980, "crow", "active") end,
							setFunc = function(value) DAS.SetQuestListItem(980, "crow", "active", value) end
						},
						{
							type     = "checkbox",
							name     = "Hide",
							tooltip  = "Hide the quests from UI List but keep sharing them",
							width    = "half",
							disabled = function() return not DAS.GetQuestListItem(980, "crow", "active") end,
							getFunc  = function() return DAS.GetQuestListItem(980, "crow", "invisible") end,
							setFunc  = function(value) DAS.SetQuestListItem(980, "crow", "invisible", value) end
						},
					},
				}, -- end of submenu : Clockwork City
				{
					type    = "checkbox",
					name    = "Craglorn",
					getFunc = function() return DAS.GetActiveIn(888) end,
					setFunc = function(value) DAS.SetActiveIn(888, value) end
				},
				{
					type    = "checkbox",
					tooltip = "Auto-accept and turn-in support only",
					name    = "Cyrodiil Alliance Base",
					getFunc = function() return DAS.GetActiveIn(181) end,
					setFunc = function(value) DAS.SetActiveIn(181, value) end
				},
				{
					type    = "checkbox",
					tooltip = "Dark Brotherhood DLC",
					name    = "Gold Coast",
					getFunc = function() return DAS.GetActiveIn(823) end,
					setFunc = function(value) DAS.SetActiveIn(823, value) end
				},
				{
					type    = "checkbox",
					tooltip = "Thieves Guild DLC",
					name    = "Hew's Bane",
					getFunc = function() return DAS.GetActiveIn(816) end,
					setFunc = function(value) DAS.SetActiveIn(816, value) end
				},
				{
					type    = "checkbox",
					tooltip = "Murkmire DLC",
					name    = "Murkmire",
					getFunc = function() return DAS.GetActiveIn(726) end,
					setFunc = function(value) DAS.SetActiveIn(726, value) end
				},
				{ -- submenu: Murkmire
					type     = "submenu",
					name     = "Murkmire Options",
					disabled = function() return (not DAS.GetActiveIn(726)) end,
					controls =
					{
						{
							type    = "header",
							name    = "Lilmoth: Delves"
						},
						{
							type    = "checkbox",
							name    = "Enable",
							tooltip = zo_strformat("Quest giver is |cFFFFFF<<1>>|r in Lilmoth\nRequires completing the following prerequisite quest:\n• <<2>>", GetString(DAS_SLAVES_QUEST1), GetQuestName(6295)),
							width   = "half",
							getFunc = function() return DAS.GetQuestListItem(726, "delve", "active") end,
							setFunc = function(value) DAS.SetQuestListItem(726,   "delve", "active", value) end
						},
						{
							type     = "checkbox",
							name     = "Hide",
							tooltip  = "Hide the quests from UI List but keep sharing them",
							width    = "half",
							disabled = function() return not DAS.GetQuestListItem(726, "delve", "active") end,
							getFunc  = function() return DAS.GetQuestListItem(726, "delve", "invisible") end,
							setFunc  = function(value) DAS.SetQuestListItem(726,   "delve", "invisible", value) end
						},
						{
							type    = "header",
							name    = "Lilmoth: World Bosses"
						},
						{
							type    = "checkbox",
							name    = "Enable",
							tooltip = zo_strformat("Quest giver is |cFFFFFF<<1>>|r in Lilmoth\nRequires completing the following prerequisite quest:\n• <<2>>", GetString(DAS_SLAVES_QUEST3), GetQuestName(6295)),
							width   = "half",
							getFunc = function() return DAS.GetQuestListItem(726, "boss", "active") end,
							setFunc = function(value)   DAS.SetQuestListItem(726, "boss", "active", value) end
						},
						{
							type     = "checkbox",
							name     = "Hide",
							tooltip  = "Hide the quests from UI List but keep sharing them",
							width    = "half",
							disabled = function() return not DAS.GetQuestListItem(726, "boss", "active") end,
							getFunc  = function() return DAS.GetQuestListItem(726, "boss", "invisible") end,
							setFunc  = function(value) DAS.SetQuestListItem(726,   "boss", "invisible", value) end
						},
						{
							type    = "header",
							name    = "Root-Whisper Village"
						},
						{
							type    = "checkbox",
							name    = "Enable",
							tooltip = zo_strformat("Quest giver is |cFFFFFF<<1>>|r in Root-Whisper Village\nRequires completing the zone story", GetString(DAS_SLAVES_QUEST2)),
							width   = "half",
							getFunc = function() return DAS.GetQuestListItem(726, "root", "active") end,
							setFunc = function(value) DAS.SetQuestListItem(726,   "root", "active", value) end
						},
						{
							type     = "checkbox",
							name     = "Hide",
							tooltip  = "Hide the quests from UI List but keep sharing them",
							width    = "half",
							disabled = function() return not DAS.GetQuestListItem(726, "root", "active") end,
							getFunc  = function() return DAS.GetQuestListItem(726, "root", "invisible") end,
							setFunc  = function(value) DAS.SetQuestListItem(726,   "root", "invisible", value) end
						},
					},
				},-- end of submenu murkmire
				{
					type    = "checkbox",
					tooltip = "Elsweyr DLC",
					name    = "Northern Elsweyr",
					getFunc = function() return DAS.GetActiveIn(1086) end,
					setFunc = function(value) DAS.SetActiveIn(1086, value) end
				},
				{
					type    = "checkbox",
					tooltip = "Dragonhold DLC",
					name    = "Southern Elsweyr",
					getFunc = function() return DAS.GetActiveIn(1133) end,
					setFunc = function(value) DAS.SetActiveIn(1133, value) end
				},
				{
					type    = "checkbox",
					tooltip = "Summerset DLC",
					name    = "Summerset",
					getFunc = function() return DAS.GetActiveIn(1011) end,
					setFunc = function(value) DAS.SetActiveIn(1011, value) end
				},
				{
					type    = "checkbox",
					tooltip = "Morrowind DLC",
					name    = "Vvardenfell",
					getFunc = function() return DAS.GetActiveIn(849) end,
					setFunc = function(value) DAS.SetActiveIn(849, value) end
				},
				{ -- submenu: Morrowind
					type     = "submenu",
					name     = "Vvardenfell Options",
					disabled = function() return (not DAS.GetActiveIn(849)) end,
					controls =
					{
						{
							type    = "header",
							name    = "Ashlander: Relics",
						},
						{
							type    = "checkbox",
							tooltip = zo_strformat("Quest giver is |cFFFFFF<<1>>|r in Ald'ruhn\nRequires completing the following prerequisite quests:\n• <<2>>\n• <<3>>", GetString(DAS_QUEST_M_NUMANI), GetQuestName(5885), GetQuestName(6008)),
							name    = "Enable",
							width   = "half",
							getFunc = function() return DAS.GetQuestListItem(849, "relic", "active") end,
							setFunc = function(value) DAS.SetQuestListItem(849, "relic", "active", value) end
						},
						{
							type     = "checkbox",
							name     = "Hide",
							tooltip  = "Hide the quests from UI List but keep sharing them",
							width    = "half",
							disabled = function() return not DAS.GetQuestListItem(849, "relic", "active") end,
							getFunc  = function() return DAS.GetQuestListItem(849, "relic", "invisible") end,
							setFunc  = function(value) DAS.SetQuestListItem(849, "relic", "invisible", value) end
						},
						{
							type    = "header",
							name    = "Ashlander: Hunt"
						},
						{
							type    = "checkbox",
							name    = "Enable",
							tooltip = zo_strformat("Quest giver is |cFFFFFF<<1>>|r in Ald'ruhn\nRequires completing the following prerequisite quests:\n• <<2>>\n• <<3>>", GetString(DAS_QUEST_M_ASHLANDER), GetQuestName(5885), GetQuestName(6008)),
							width   = "half",
							getFunc = function() return DAS.GetQuestListItem(849, "hunt", "active") end,
							setFunc = function(value) DAS.SetQuestListItem(849, "hunt", "active", value) end
						},
						{
							type     = "checkbox",
							name     = "Hide",
							tooltip  = "Hide the quests from UI List but keep sharing them",
							width    = "half",
							disabled = function() return not DAS.GetQuestListItem(849, "hunt", "active") end,
							getFunc  = function() return DAS.GetQuestListItem(849, "hunt", "invisible") end,
							setFunc  = function(value) DAS.SetQuestListItem(849, "hunt", "invisible", value) end
						},
						{
							type    = "header",
							name    = "Vivec: Delves"
						},
						{
							type    = "checkbox",
							name    = "Enable",
							tooltip = zo_strformat("Quest giver is |cFFFFFF<<1>>|r in Vivec's Hall of Justice\nRequires completing the following prerequisite quest:\n• <<2>>", GetString(DAS_QUEST_M_TRAYLAN), GetQuestName(6007)),
							width   = "half",
							getFunc = function() return DAS.GetQuestListItem(849, "delve", "active") end,
							setFunc = function(value) DAS.SetQuestListItem(849, "delve", "active", value) end
						},
						{
							type     = "checkbox",
							name     = "Hide",
							tooltip  = "Hide the quests from UI List but keep sharing them",
							width    = "half",
							disabled = function() return not DAS.GetQuestListItem(849, "delve", "active") end,
							getFunc  = function() return DAS.GetQuestListItem(849, "delve", "invisible") end,
							setFunc  = function(value) DAS.SetQuestListItem(849, "delve", "invisible", value) end
						},
						{
							type    = "header",
							name    = "Vivec: World Bosses"
						},
						{
							type    = "checkbox",
							name    = "Enable",
							tooltip = zo_strformat("Quest giver is |cFFFFFF<<1>>|r in Vivec's Hall of Justice\nRequires completing the following prerequisite quest:\n• <<2>>", GetString(DAS_QUEST_M_BELERU), GetQuestName(6007)),
							width   = "half",
							getFunc = function() return DAS.GetQuestListItem(849, "boss", "active") end,
							setFunc = function(value) DAS.SetQuestListItem(849, "boss", "active", value) end
						},
						{
							type     = "checkbox",
							name     = "Hide",
							tooltip  = "Hide the quests from UI List but keep sharing them",
							width    = "half",
							disabled = function() return not DAS.GetQuestListItem(849, "boss", "active") end,
							getFunc  = function() return DAS.GetQuestListItem(849, "boss", "invisible") end,
							setFunc  = function(value) DAS.SetQuestListItem(849, "boss", "invisible", value) end
						},
					},
				}, -- end of submenu : Morrowind
				{
					type    = "checkbox",
					tooltip = "Orsinium DLC",
					name    = "Wrothgar",
					getFunc = function() return DAS.GetActiveIn(684) end,
					setFunc = function(value) DAS.SetActiveIn(684, value) end
				},
				{
					type    = "header",
					name    = "Guild activities:"
				},
				{
					type    = "checkbox",
					name    = "Fighters / Mages Guilds & Undaunted",
					getFunc = function() return DAS.GetActiveIn("guilds") end,
					setFunc = function(value) DAS.SetActiveFor("guilds", value) end
				},
				{ -- Submenu : Guild Dailies
					type        = "submenu",
					name        = "Guild dailies options",
					disabled    = function() return not DAS.GetActiveIn("guilds") end,
					controls    =
					{
						{
							type     = "checkbox",
							tooltip  = "Hide the quests from UI List but keep sharing them",
							name     = "Hide Fighters Guild dailies in Capitals",
							getFunc  = function() return DAS.GetQuestListItem(57, "fg", "invisible") end,
							setFunc  = function(value)
								DAS.SetQuestListItem(57, "fg", "invisible", value)
								DAS.SetQuestListItem(19, "fg", "invisible", value)
								DAS.SetQuestListItem(383, "fg", "invisible", value)
							end
						},
						{
							type     = "checkbox",
							tooltip  = "Hide the quests from UI List but keep sharing them",
							name     = "Hide Mages Guild dailies in Capitals",
							getFunc  = function() return DAS.GetQuestListItem(57, "mg", "invisible") end,
							setFunc  = function(value)
								DAS.SetQuestListItem(57, "mg", "invisible", value)
								DAS.SetQuestListItem(19, "mg", "invisible", value)
								DAS.SetQuestListItem(383, "mg", "invisible", value)
							end
						},
						{
							type     = "checkbox",
							tooltip  = "Hide the quests from UI List but keep sharing them",
							name     = "Hide Undaunted dailies in Capitals",
							getFunc  = function() return DAS.GetQuestListItem(57, "ud", "invisible") end,
							setFunc  = function(value)
								DAS.SetQuestListItem(57, "ud", "invisible", value)
								DAS.SetQuestListItem(19, "ud", "invisible", value)
								DAS.SetQuestListItem(383, "ud", "invisible", value)
							end
						},
					},
				}, -- end of submenu : Guild Dailies
				{
					type    = "header",
					name    = "Festivals:"
				},
				{
					type    = "checkbox",
					name    = "New Life",
					tooltip = "Enable New Life festival",
					getFunc = function() return DAS.GetActiveIn("newLife") end,
					setFunc = function(value) DAS.SetActiveFor("newLife", value) end
				},
			}, -- end of activate menu
		},
		{
			type    = "checkbox",
			name    = "Hide in non-active zones",
			tooltip = "Usually the completed dailies will be shown in the list. Check this to make them vanish.",
			getFunc = function() return DAS.GetHiddenInInactiveZones() end,
			setFunc = function(value) DAS.SetHiddenInInactiveZones(value) end
		},
		{ -- behaviour menu
			type     = "submenu",
			name     = "Invitation text & behaviour",
			controls =
			{
				{
					type        = "editbox",
					isExtraWide = true,
					name        = "Quest Share text",
					tooltip     = ("Text to generate when you spam quest shares.\n"
					.. "<<1>> will be replaced with the quest names, <<2>> with the bingo codes.\n"
					.. "Omit either to remove parameter. Include neither and sound like a fool."),
					getFunc     = function() return DAS.GetSettings().questShareString end,
					setFunc     = function(value) DAS.GetSettings().questShareString = value end,
				},
				{
					type    = "button",
					name    = "Reset",
					tooltip = "Reset Quest Share text to its default value",
					func    = function() DAS.GetSettings().questShareString = defaults.questShareString end,
				},
				{
					type    = "checkbox",
					name    = "Use Whisper-only Mode",
					tooltip = "This will ignore bingo spam in the zone chat!",
					getFunc = function() return DAS.GetWhisperOnly() end,
					setFunc = function(value) DAS.GetSettings().whisperOnly = value end
				},
				{
					type        = "editbox",
					isExtraWide = true,
					name        = "Whisper-only text",
					disabled    = function() return not DAS.GetWhisperOnly() end,
					tooltip     = "Will replace everything after <<1>> in the Quest Share text above",
					getFunc     = function() return DAS.GetSettings().whisperString end,
					setFunc     = function(value) DAS.GetSettings().whisperString = value end,
				},
				{
					type    = "header",
					name    = "Auto-Invite from Guild Chat"
				},
				{
					type    = "dropdown",
					tooltip = "Which guild should the add-on listen to?",
					choices = {
						"(none)",
						GetGuildName(GetGuildId(1)),
						GetGuildName(GetGuildId(2)),
						GetGuildName(GetGuildId(3)),
						GetGuildName(GetGuildId(4)),
						GetGuildName(GetGuildId(5))
					},
					choicesValues = {
						0,
						1,
						2,
						3,
						4,
						5
					},
					name    = "Auto-invite from the guild chat of...",
					getFunc = function() return DAS.GetGuildInviteNumber() end,
					setFunc = function(value) DAS.SetGuildInviteNumber(value) end,
				},
				{
					type     = "editbox",
					name     = "Auto-invite code",
					tooltip  = "Leave blank to disable.\nSet as |cFFFFFFblah|r to auto-invite on |cFFFFFF+blah|r and so on",
					disabled = function() return 0 == DAS.GetGuildInviteNumber() end,
					getFunc  = function() return DAS.GetGuildInviteText() end,
					setFunc  = function(value) DAS.SetGuildInviteText(value) end
				},
				{
					type    = "checkbox",
					name    = "Listen for bingo codes in all guild chats",
					getFunc = function() return DAS.GetListenInGuilds() end,
					setFunc = function(value) DAS.SetListenInGuilds(value) end
				},
			},
		}, -- end of behaviour menu
		{ -- window menu
			type        = "submenu",
			name        = "DAS Window's Look and Feel",
			controls    =
			{
				-- {
				-- 	type    = "checkbox",
				-- 	name    = "Show Map markers?",
				-- 	getFunc = function() return DAS.GetMarkerVisibility() end,
				-- 	setFunc = function(value) DAS.SetMarkerVisibility(value) end
				-- },
				{
					type    = "checkbox",
					name    = "Lock window position",
					getFunc = function() return DAS.GetLocked() end,
					setFunc = function(value) DAS.SetLocked(value) end
				},
				{
					type    = "checkbox",
					name    = "Draw tooltips and sublists on the right side",
					tooltip = "Switch this off to display tooltips and sublists on the left instead",
					getFunc = function() return DAS.GetSettings().tooltipRight end,
					setFunc = function(value)
						DAS.GetSettings().tooltipRight = value
						DAS.AnchorList()
					end
				},
				{
					type    = "checkbox",
					name    = "DropUp instead of DropDown",
					tooltip = "Check this if you want the questList to appear above the drag bar instead of below",
					getFunc = function() return DAS.GetUpsideDown() end,
					setFunc = function(value) DAS.SetUpsideDown(value) end
				},
				{
					type    = "checkbox",
					name    = "Start up minimised",
					tooltip = "Always minimise the DAS Window on first startup",
					getFunc = function() return DAS.GetSettings().startupMinimized end,
					setFunc = function(value) DAS.GetSettings().startupMinimized = value end
				},
				{
					type    = "checkbox",
					name    = "Auto-hide if all dailies are complete",
					tooltip = "Check this if you want the DAS Window to be hidden when you're done",
					getFunc = function() return DAS.GetAutoHide() end,
					setFunc = function(value) DAS.SetAutoHide(value) end
				},
				{
					type     = "checkbox",
					name     = "Auto-minimise if all dailies are complete",
					tooltip  = "Check this if you want the DAS Window to be minimised when you're done. Will obviously be overridden by hide.",
					disabled = function() return DAS.GetAutoHide() end,
					getFunc  = function() return DAS.GetAutoMinimize() end,
					setFunc  = function(value) DAS.SetAutoMinimize(value) end
				},
				{
					type    = "checkbox",
					name    = "Hide the completed quests",
					tooltip = "Usually the completed dailies are shown in the list. Check this to make them vanish.",
					getFunc = function() return DAS.GetHideCompleted() end,
					setFunc = function(value) DAS.SetHideCompleted(value) end
				},
				{
					type 	= "slider",
					name 	= "Font size",
					tooltip = "Make the text bigger or smaller. 80 is a good starting point for zones like Vvardenfell.",
					min 	= 50,
					step	= 5,
					max 	= 250,
					getFunc = function() return DAS.GetFontSize()*100 end,
					setFunc = function(value) DAS.SetFontSize(value/100) end
				},
			},
		}, -- end of window menu
		{
			type    = "header",
			name    = "Automatically..."
		},
		{
			type    = "checkbox",
			tooltip = "Accept repeatable quests when they are shared?",
			name    = "accept shared dailies",
			getFunc = function() return DAS.GetAutoAcceptShared() end,
			setFunc = function(value) DAS.SetAutoAcceptShared(value) end
		},
		{
			type    = "checkbox",
			tooltip = "Skip all dialogue for the daily quest NPCs?",
			name    = "accept dailies from questgivers",
			getFunc = function() return DAS.GetSettings().autoAcceptQuest end,
			setFunc = function(value) DAS.GetSettings().autoAcceptQuest = value end
		},
		{
			type    = "checkbox",
			tooltip = "Are you the active kind? Check this box to auto-invite\nDoes the same thing as the toggle button in DAS Window",
			name    = "invite from zone chat",
			getFunc = function() return DAS.GetAutoInvite() end,
			setFunc = function(value) DAS.SetAutoInvite(value) end
		},
		{
			type    = "checkbox",
			tooltip = "Deactivate auto-invite when you leave the group?",
			name    = "stop inviting when the group disbands",
			getFunc = function() return DAS.GetStopInviteOnDegroup() end,
			setFunc = function(value) DAS.SetStopInviteOnDegroup(value) end
		},
		{
			type    = "checkbox",
			tooltip = "Reactivate quest auto-sharing when you leave the group?",
			name    = "re-enable auto-share when the group disbands",
			getFunc = function() return DAS.GetResetAutoShareOnNewGroup() end,
			setFunc = function(value) DAS.SetResetAutoShareOnNewGroup(value) end
		},
		{
			type    = "checkbox",
			tooltip = "Automatically leave the group when you're searching while still grouped?",
			name    = "groupleave on a new search",
			getFunc = function() return DAS.GetAutoLeave() end,
			setFunc = function(value) DAS.SetAutoLeave(value) end
		},
		{
			type    = "slider",
			tooltip = ("After you've been looking for quest share, "
			.. "how long do you want to automatically accept group-invites?\n"
			.. "Set to 0 to disable"),
			name    = "Accept auto-invite after +bingo in zone for ... seconds",
			min     = 0,
			max     = 60,
			getFunc = function() return DAS.GetAutoAcceptInviteInterval() end,
			setFunc = function(value) DAS.SetAutoAcceptInviteInterval(value) end
		},
		{
			type    = "header",
			name    = "Throttle"
		},
		{
			type 	= "slider",
			name 	= "Group invite delay (in ms)",
			tooltip = "Adjust this if you encounter disconnects when trying to create a group.\n1000 ms are one second.",
			min 	= 250,
			step	= 10,
			max 	= 2500,
			getFunc = function() return DAS.GetGroupInviteDelay() end,
			setFunc = function(value) DAS.SetGroupInviteDelay(value) end
		},
		{
			type 	= "slider",
			name 	= "Quest share delay (in ms)",
			tooltip = "Adjust this if you encounter disconnects when new group members join.\n1000 ms are one second.",
			min 	= 250,
			step	= 10,
			max 	= 2500,
			getFunc = function() return DAS.GetQuestShareDelay() end,
			setFunc = function(value) DAS.SetQuestShareDelay(value) end
		},
		{
			type    = "header",
			name    = "Miscellaneous"
		},
		{
			type    = "checkbox",
			name    = "Debug Mode",
			getFunc = function() return DAS.GetDebugMode() end,
			setFunc = function(value) DAS.SetDebugMode(value) end
		},
	} -- optionsData end
	LAM:RegisterAddonPanel("DailyAutoShare_OptionsPanel", panelData)
	LAM:RegisterOptionControls("DailyAutoShare_OptionsPanel", optionsData)
end
