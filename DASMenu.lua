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
		translation        = GetString(DAS_MENU_URI_LOC),
		slashCommand       = "/das_menu",
		registerForRefresh = true,
	}
	local optionsData = {
		{
			type    = "header",
			name    = GetString(DAS_MENU_H_GENERAL)
		},
		{
			type    = "checkbox",
			tooltip = GetString(DAS_MENU_CB_GLOBAL_TIP),
			name    = GetString(DAS_MENU_CB_GLOBAL),
			width   = "half",
			getFunc = function() return DAS.GetUseGlobalSettings() end,
			setFunc = function(value) DAS.SetUseGlobalSettings(value) end
		},
		{
			type    = "checkbox",
			name    = GetString(DAS_MENU_CB_HIDE),
			width   = "half",
			getFunc = function() return DAS.GetHidden() end,
			setFunc = function(value) DAS.SetHidden(value) end
		},
		{
			type    = "submenu",
			name    = GetString(DAS_MENU_SM_ACT),
			tooltip = GetString(DAS_MENU_SM_ACT_TIP),
			controls =
			{
				{
					type    = "header",
					name    = GetString(DAS_MENU_H_ZONES)
				},
				{
					type    = "checkbox",
					tooltip = "Blackwood Chapter",
					name    = GetString(DAS_MENU_CB_BWOOD),
					getFunc = function() return DAS.GetActiveIn(1261) end,
					setFunc = function(value) DAS.SetActiveIn(1261, value) end
				},
				{
					type    = "checkbox",
					tooltip = "Clockwork City DLC",
					name    = GetString(DAS_MENU_CB_CCITY),
					getFunc = function() return DAS.GetActiveIn(980) end,
					setFunc = function(value)
						DAS.SetActiveIn(980, value)
						DAS.SetActiveIn(981, value)
						DAS.SetActiveIn(983, value)
					end
				},
				{ -- submenu: Clockwork City
					type     = "submenu",
					name     = GetString(DAS_MENU_SM_CCITY),
					disabled = function() return (not DAS.GetActiveIn(980)) end,
					controls =
					{
						{
							type    = "header",
							name    = GetString(DAS_MENU_CB_CC_DELV)
						},
						{
							type    = "checkbox",
							name    = GetString(DAS_MENU_CB_SUB_ENABLE),
							tooltip = zo_strformat(GetString(DAS_MENU_CB_CC_DELV_TIP), GetString(DAS_QUEST_CC_NOVICE), GetQuestName(6058), GetQuestName(6049)),
							width   = "half",
							getFunc = function() return DAS.GetQuestListItem(980, "delve", "active") end,
							setFunc = function(value) DAS.SetQuestListItem(980, "delve", "active", value) end
						},
						{
							type     = "checkbox",
							name     = GetString(DAS_MENU_CB_SUB_HIDE),
							tooltip  = GetString(DAS_MENU_CB_SUB_HIDE_T),
							width    = "half",
							disabled = function() return not DAS.GetQuestListItem(980, "delve", "active") end,
							getFunc  = function() return DAS.GetQuestListItem(980, "delve", "invisible") end,
							setFunc  = function(value) DAS.SetQuestListItem(980, "delve", "invisible", value) end
						},
						{
							type    = "header",
							name    = GetString(DAS_MENU_CB_CC_BOSS)
						},
						{
							type    = "checkbox",
							name    = GetString(DAS_MENU_CB_SUB_ENABLE),
							tooltip = zo_strformat(GetString(DAS_MENU_CB_CC_BOSS_TIP), GetString(DAS_QUEST_CC_ROBOT)),
							width   = "half",
							getFunc = function() return DAS.GetQuestListItem(980, "boss", "active") end,
							setFunc = function(value) DAS.SetQuestListItem(980, "boss", "active", value) end
						},
						{
							type     = "checkbox",
							name     = GetString(DAS_MENU_CB_SUB_HIDE),
							tooltip  = GetString(DAS_MENU_CB_SUB_HIDE_T),
							width    = "half",
							disabled = function() return not DAS.GetQuestListItem(980, "boss", "active") end,
							getFunc  = function() return DAS.GetQuestListItem(980, "boss", "invisible") end,
							setFunc  = function(value) DAS.SetQuestListItem(980, "boss", "invisible", value) end
						},
						{
							type    = "header",
							name    = GetString(DAS_MENU_CB_CC_SLAG)
						},
						{
							type    = "checkbox",
							name    = GetString(DAS_MENU_CB_SUB_ENABLE),
							tooltip = zo_strformat(GetString(DAS_MENU_CB_CC_SLAG_TIP), GetString(DAS_QUEST_CC_ORC)),
							width   = "half",
							getFunc = function() return DAS.GetQuestListItem(980, "craft", "active") end,
							setFunc = function(value) DAS.SetQuestListItem(980, "craft", "active", value) end
						},
						{
							type     = "checkbox",
							name     = GetString(DAS_MENU_CB_SUB_HIDE),
							tooltip  = GetString(DAS_MENU_CB_SUB_HIDE_T),
							width    = "half",
							disabled = function() return not DAS.GetQuestListItem(980, "craft", "active") end,
							getFunc  = function() return DAS.GetQuestListItem(980, "craft", "invisible") end,
							setFunc  = function(value) DAS.SetQuestListItem(980, "craft", "invisible", value) end
						},
						{
							type    = "header",
							name    = GetString(DAS_MENU_CB_CC_CROW)
						},
						{
							type    = "checkbox",
							name    = GetString(DAS_MENU_CB_SUB_ENABLE),
							tooltip = zo_strformat(GetString(DAS_MENU_CB_CC_CROW_TIP), GetString(DAS_QUEST_CC_CROW), GetQuestName(6052)),
							width   = "half",
							getFunc = function() return DAS.GetQuestListItem(980, "crow", "active") end,
							setFunc = function(value) DAS.SetQuestListItem(980, "crow", "active", value) end
						},
						{
							type     = "checkbox",
							name     = GetString(DAS_MENU_CB_SUB_HIDE),
							tooltip  = GetString(DAS_MENU_CB_SUB_HIDE_T),
							width    = "half",
							disabled = function() return not DAS.GetQuestListItem(980, "crow", "active") end,
							getFunc  = function() return DAS.GetQuestListItem(980, "crow", "invisible") end,
							setFunc  = function(value) DAS.SetQuestListItem(980, "crow", "invisible", value) end
						},
					},
				}, -- end of submenu : Clockwork City
				{
					type    = "checkbox",
					name    = GetString(DAS_MENU_CB_CRAG),
					getFunc = function() return DAS.GetActiveIn(888) end,
					setFunc = function(value) DAS.SetActiveIn(888, value) end
				},
				{
					type    = "checkbox",
					tooltip = GetString(DAS_MENU_CB_CYRO_TIP),
					name    = GetString(DAS_MENU_CB_CYRO),
					getFunc = function() return DAS.GetActiveIn(181) end,
					setFunc = function(value) DAS.SetActiveIn(181, value) end
				},
				{
					type    = "checkbox",
					tooltip = "Dark Brotherhood DLC",
					name    = GetString(DAS_MENU_CB_DARKB),
					getFunc = function() return DAS.GetActiveIn(823) end,
					setFunc = function(value) DAS.SetActiveIn(823, value) end
				},
				{
					type    = "checkbox",
					tooltip = "Thieves Guild DLC",
					name    = GetString(DAS_MENU_CB_THGLD),
					getFunc = function() return DAS.GetActiveIn(816) end,
					setFunc = function(value) DAS.SetActiveIn(816, value) end
				},
				{
					type    = "checkbox",
					tooltip = "Murkmire DLC",
					name    = GetString(DAS_MENU_CB_MURK),
					getFunc = function() return DAS.GetActiveIn(726) end,
					setFunc = function(value) DAS.SetActiveIn(726, value) end
				},
				{ -- submenu: Murkmire
					type     = "submenu",
					name     = GetString(DAS_MENU_SM_MURK),
					disabled = function() return (not DAS.GetActiveIn(726)) end,
					controls =
					{
						{
							type    = "header",
							name    = GetString(DAS_MENU_CB_MM_DELV)
						},
						{
							type    = "checkbox",
							name    = GetString(DAS_MENU_CB_SUB_ENABLE),
							tooltip = zo_strformat(GetString(DAS_MENU_CB_MM_DELV_TIP), GetString(DAS_SLAVES_QUEST1), GetQuestName(6295)),
							width   = "half",
							getFunc = function() return DAS.GetQuestListItem(726, "delve", "active") end,
							setFunc = function(value) DAS.SetQuestListItem(726,   "delve", "active", value) end
						},
						{
							type     = "checkbox",
							name     = GetString(DAS_MENU_CB_SUB_HIDE),
							tooltip  = GetString(DAS_MENU_CB_SUB_HIDE_T),
							width    = "half",
							disabled = function() return not DAS.GetQuestListItem(726, "delve", "active") end,
							getFunc  = function() return DAS.GetQuestListItem(726, "delve", "invisible") end,
							setFunc  = function(value) DAS.SetQuestListItem(726,   "delve", "invisible", value) end
						},
						{
							type    = "header",
							name    = GetString(DAS_MENU_CB_MM_BOSS)
						},
						{
							type    = "checkbox",
							name    = GetString(DAS_MENU_CB_SUB_ENABLE),
							tooltip = zo_strformat(GetString(DAS_MENU_CB_MM_BOSS_TIP), GetString(DAS_SLAVES_QUEST3), GetQuestName(6295)),
							width   = "half",
							getFunc = function() return DAS.GetQuestListItem(726, "boss", "active") end,
							setFunc = function(value)   DAS.SetQuestListItem(726, "boss", "active", value) end
						},
						{
							type     = "checkbox",
							name     = GetString(DAS_MENU_CB_SUB_HIDE),
							tooltip  = GetString(DAS_MENU_CB_SUB_HIDE_T),
							width    = "half",
							disabled = function() return not DAS.GetQuestListItem(726, "boss", "active") end,
							getFunc  = function() return DAS.GetQuestListItem(726, "boss", "invisible") end,
							setFunc  = function(value) DAS.SetQuestListItem(726,   "boss", "invisible", value) end
						},
						{
							type    = "header",
							name    = GetString(DAS_MENU_CB_MM_ROOT)
						},
						{
							type    = "checkbox",
							name    = GetString(DAS_MENU_CB_SUB_ENABLE),
							tooltip = zo_strformat(GetString(DAS_MENU_CB_MM_ROOT_TIP), GetString(DAS_SLAVES_QUEST2)),
							width   = "half",
							getFunc = function() return DAS.GetQuestListItem(726, "root", "active") end,
							setFunc = function(value) DAS.SetQuestListItem(726,   "root", "active", value) end
						},
						{
							type     = "checkbox",
							name     = GetString(DAS_MENU_CB_SUB_HIDE),
							tooltip  = GetString(DAS_MENU_CB_SUB_HIDE_T),
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
					name    = GetString(DAS_MENU_CB_NELWR),
					getFunc = function() return DAS.GetActiveIn(1086) end,
					setFunc = function(value) DAS.SetActiveIn(1086, value) end
				},
				{
					type    = "checkbox",
					tooltip = "Markarth DLC",
					name    = GetString(DAS_MENU_CB_PIKEYS),
					getFunc = function() return DAS.GetActiveIn(1207) end,
					setFunc = function(value) DAS.SetActiveIn(1207, value) end
				},
				{
					type    = "checkbox",
					tooltip = "Dragonhold DLC",
					name    = GetString(DAS_MENU_CB_SELWR),
					getFunc = function() return DAS.GetActiveIn(1133) end,
					setFunc = function(value) DAS.SetActiveIn(1133, value) end
				},
				{
					type    = "checkbox",
					tooltip = "Summerset DLC",
					name    = GetString(DAS_MENU_CB_ELVES),
					getFunc = function() return DAS.GetActiveIn(1011) end,
					setFunc = function(value) DAS.SetActiveIn(1011, value) end
				},
				{
					type    = "checkbox",
					tooltip = "Morrowind DLC",
					name    = GetString(DAS_MENU_CB_MWIND),
					getFunc = function() return DAS.GetActiveIn(849) end,
					setFunc = function(value) DAS.SetActiveIn(849, value) end
				},
				{ -- submenu: Morrowind
					type     = "submenu",
					name     = GetString(DAS_MENU_SM_MWIND),
					disabled = function() return (not DAS.GetActiveIn(849)) end,
					controls =
					{
						{
							type    = "header",
							name    = GetString(DAS_MENU_CB_M_RELC),
						},
						{
							type    = "checkbox",
							tooltip = zo_strformat(GetString(DAS_MENU_CB_M_RELC_TIP), GetString(DAS_QUEST_M_NUMANI), GetQuestName(5885), GetQuestName(6008)),
							name    = GetString(DAS_MENU_CB_SUB_ENABLE),
							width   = "half",
							getFunc = function() return DAS.GetQuestListItem(849, "relic", "active") end,
							setFunc = function(value) DAS.SetQuestListItem(849, "relic", "active", value) end
						},
						{
							type     = "checkbox",
							name     = GetString(DAS_MENU_CB_SUB_HIDE),
							tooltip  = GetString(DAS_MENU_CB_SUB_HIDE_T),
							width    = "half",
							disabled = function() return not DAS.GetQuestListItem(849, "relic", "active") end,
							getFunc  = function() return DAS.GetQuestListItem(849, "relic", "invisible") end,
							setFunc  = function(value) DAS.SetQuestListItem(849, "relic", "invisible", value) end
						},
						{
							type    = "header",
							name    = GetString(DAS_MENU_CB_M_HUNT)
						},
						{
							type    = "checkbox",
							name    = GetString(DAS_MENU_CB_SUB_ENABLE),
							tooltip = zo_strformat(GetString(DAS_MENU_CB_M_HUNT_TIP), GetString(DAS_QUEST_M_ASHLANDER), GetQuestName(5885), GetQuestName(6008)),
							width   = "half",
							getFunc = function() return DAS.GetQuestListItem(849, "hunt", "active") end,
							setFunc = function(value) DAS.SetQuestListItem(849, "hunt", "active", value) end
						},
						{
							type     = "checkbox",
							name     = GetString(DAS_MENU_CB_SUB_HIDE),
							tooltip  = GetString(DAS_MENU_CB_SUB_HIDE_T),
							width    = "half",
							disabled = function() return not DAS.GetQuestListItem(849, "hunt", "active") end,
							getFunc  = function() return DAS.GetQuestListItem(849, "hunt", "invisible") end,
							setFunc  = function(value) DAS.SetQuestListItem(849, "hunt", "invisible", value) end
						},
						{
							type    = "header",
							name    = GetString(DAS_MENU_CB_M_DELV)
						},
						{
							type    = "checkbox",
							name    = GetString(DAS_MENU_CB_SUB_ENABLE),
							tooltip = zo_strformat(GetString(DAS_MENU_CB_M_DELV_TIP), GetString(DAS_QUEST_M_TRAYLAN), GetQuestName(6007)),
							width   = "half",
							getFunc = function() return DAS.GetQuestListItem(849, "delve", "active") end,
							setFunc = function(value) DAS.SetQuestListItem(849, "delve", "active", value) end
						},
						{
							type     = "checkbox",
							name     = GetString(DAS_MENU_CB_SUB_HIDE),
							tooltip  = GetString(DAS_MENU_CB_SUB_HIDE_T),
							width    = "half",
							disabled = function() return not DAS.GetQuestListItem(849, "delve", "active") end,
							getFunc  = function() return DAS.GetQuestListItem(849, "delve", "invisible") end,
							setFunc  = function(value) DAS.SetQuestListItem(849, "delve", "invisible", value) end
						},
						{
							type    = "header",
							name    = GetString(DAS_MENU_CB_M_BOSS)
						},
						{
							type    = "checkbox",
							name    = GetString(DAS_MENU_CB_SUB_ENABLE),
							tooltip = zo_strformat(GetString(DAS_MENU_CB_M_BOSS_TIP), GetString(DAS_QUEST_M_BELERU), GetQuestName(6007)),
							width   = "half",
							getFunc = function() return DAS.GetQuestListItem(849, "boss", "active") end,
							setFunc = function(value) DAS.SetQuestListItem(849, "boss", "active", value) end
						},
						{
							type     = "checkbox",
							name     = GetString(DAS_MENU_CB_SUB_HIDE),
							tooltip  = GetString(DAS_MENU_CB_SUB_HIDE_T),
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
					name    = GetString(DAS_MENU_CB_ORCS),
					getFunc = function() return DAS.GetActiveIn(684) end,
					setFunc = function(value) DAS.SetActiveIn(684, value) end
				},
				{
					type    = "header",
					name    = GetString(DAS_MENU_H_GUILDS)
				},
				{
					type           = "checkbox",
					name           = GetString(DAS_MENU_CB_GUILD),
					getFunc        = function() return DAS.GetActiveIn("guilds") end,
					setFunc        = function(value)
						DAS.SetActiveFor("guilds", value)
						DAS.SetActiveFor("fg", value)
						DAS.SetActiveFor("mg", value)
						DAS.SetActiveFor("ud", value)
					end,
				},
				{ -- Submenu : Guild Dailies
					type        = "submenu",
					name        = GetString(DAS_MENU_SM_GUILD),
					disabled    = function() return not DAS.GetActiveIn("guilds") end,
					controls    =
					{
						{
							type    = "header",
							name    = GetString(DAS_MENU_CB_G_FG)
						},
						{
							type    = "checkbox",
							name    = GetString(DAS_MENU_CB_SUB_ENABLE),
							tooltip = zo_strformat(GetString(DAS_MENU_CB_G_FG_TIP), GetString(DAS_QUEST_CAP_CARDEA)),
							width   = "half",
							getFunc = function() return DAS.GetActiveIn("fg") end,
							setFunc = function(value) DAS.SetActiveFor("fg", value) end
						},
						{
							type     = "checkbox",
							name     = GetString(DAS_MENU_CB_G_FG_HIDE),
							tooltip  = GetString(DAS_MENU_CB_SUB_HIDE_T),
							width   = "half",
							disabled = function() return not DAS.GetActiveIn("fg") end,
							getFunc  = function() return DAS.GetQuestListItem(57, "fg", "invisible") end,
							setFunc  = function(value)
								DAS.SetQuestListItem(57, "fg", "invisible", value)
								DAS.SetQuestListItem(19, "fg", "invisible", value)
								DAS.SetQuestListItem(383, "fg", "invisible", value)
							end
						},
						{
							type    = "header",
							name    = GetString(DAS_MENU_CB_G_MG)
						},
						{
							type    = "checkbox",
							name    = GetString(DAS_MENU_CB_SUB_ENABLE),
							tooltip = zo_strformat(GetString(DAS_MENU_CB_G_MG_TIP), GetString(DAS_QUEST_CAP_ALVUR)),
							width   = "half",
							getFunc = function() return DAS.GetActiveIn("mg") end,
							setFunc = function(value) DAS.SetActiveFor("mg", value) end
						},
						{
							type     = "checkbox",
							name     = GetString(DAS_MENU_CB_G_MG_HIDE),
							tooltip  = GetString(DAS_MENU_CB_SUB_HIDE_T),
							width    = "half",
							disabled = function() return not DAS.GetActiveIn("mg") end,
							getFunc  = function() return DAS.GetQuestListItem(57, "mg", "invisible") end,
							setFunc  = function(value)
								DAS.SetQuestListItem(57, "mg", "invisible", value)
								DAS.SetQuestListItem(19, "mg", "invisible", value)
								DAS.SetQuestListItem(383, "mg", "invisible", value)
							end
						},
						{
							type    = "header",
							name    = GetString(DAS_MENU_CB_G_UD)
						},
						{
							type    = "checkbox",
							name    = GetString(DAS_MENU_CB_SUB_ENABLE),
							tooltip = zo_strformat(GetString(DAS_MENU_CB_G_UD_TIP), GetString(DAS_QUEST_CAP_BOLGRUL)),
							width   = "half",
							getFunc = function() return DAS.GetActiveIn("ud") end,
							setFunc = function(value) DAS.SetActiveFor("ud", value) end
						},
						{
							type     = "checkbox",
							name     = GetString(DAS_MENU_CB_G_UD_HIDE),
							tooltip  = GetString(DAS_MENU_CB_SUB_HIDE_T),
							width    = "half",
							disabled = function() return not DAS.GetActiveIn("ud") end,
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
					name    = GetString(DAS_MENU_H_EVENTS)
				},
				{
					type           = "checkbox",
					name           = GetString(DAS_MENU_CB_E_NL),
					tooltip        = GetString(DAS_MENU_CB_E_NL_TIP),
					getFunc        = function() return DAS.GetActiveIn("newLife") end,
					setFunc        = function(value) DAS.SetActiveFor("newLife", value) end,
				},
			}, -- end of activate menu
		},
		{
			type    = "checkbox",
			name    = GetString(DAS_MENU_CB_HIDE_NA),
			tooltip = GetString(DAS_MENU_CB_HIDE_NA_TIP),
			getFunc = function() return DAS.GetHiddenInInactiveZones() end,
			setFunc = function(value) DAS.SetHiddenInInactiveZones(value) end
		},
		{ -- behaviour menu
			type     = "submenu",
			name     = GetString(DAS_MENU_SM_INVITE),
			controls =
			{
				{
					type        = "editbox",
					isExtraWide = true,
					name        = GetString(DAS_MENU_TB_QST),
					tooltip     = GetString(DAS_MENU_TB_QST_TIP),
					getFunc     = function() return DAS.GetSettings().questShareString end,
					setFunc     = function(value) DAS.GetSettings().questShareString = value end,
				},
				{
					type    = "button",
					name    = GetString(DAS_MENU_BTN_QSTRST),
					tooltip = GetString(DAS_MENU_BTN_QSTRST_TIP),
					func    = function() DAS.GetSettings().questShareString = defaults.questShareString end,
				},
				{
					type    = "checkbox",
					name    = GetString(DAS_MENU_CB_WOMOD),
					tooltip = GetString(DAS_MENU_CB_WOMOD_TIP),
					getFunc = function() return DAS.GetWhisperOnly() end,
					setFunc = function(value) DAS.GetSettings().whisperOnly = value end
				},
				{
					type        = "editbox",
					isExtraWide = true,
					name        = GetString(DAS_MENU_TB_WOT),
					disabled    = function() return not DAS.GetWhisperOnly() end,
					tooltip     = GetString(DAS_MENU_TB_WOT_TIP),
					getFunc     = function() return DAS.GetSettings().whisperString end,
					setFunc     = function(value) DAS.GetSettings().whisperString = value end,
				},
				{
					type    = "header",
					name    = GetString(DAS_MENU_H_GLDAUTOINV)
				},
				{
					type    = "dropdown",
					tooltip = GetString(DAS_MENU_DD_GAI_TIP),
					choices = {
						GetString(DAS_MENU_DD_GAI_NONE),
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
					name    = GetString(DAS_MENU_DD_GAI),
					getFunc = function() return DAS.GetGuildInviteNumber() end,
					setFunc = function(value) DAS.SetGuildInviteNumber(value) end,
				},
				{
					type     = "editbox",
					name     = GetString(DAS_MENU_TB_GAICODE),
					tooltip  = GetString(DAS_MENU_TB_GAICODE_TIP),
					disabled = function() return 0 == DAS.GetGuildInviteNumber() end,
					getFunc  = function() return DAS.GetGuildInviteText() end,
					setFunc  = function(value) DAS.SetGuildInviteText(value) end
				},
				{
					type    = "checkbox",
					name    = GetString(DAS_MENU_CB_GCHAT),
					getFunc = function() return DAS.GetListenInGuilds() end,
					setFunc = function(value) DAS.SetListenInGuilds(value) end
				},
			},
		}, -- end of behaviour menu
		{ -- window menu
			type        = "submenu",
			name        = GetString(DAS_MENU_H_GUI),
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
					name    = GetString(DAS_MENU_CB_GUILOCK),
					getFunc = function() return DAS.GetLocked() end,
					setFunc = function(value) DAS.SetLocked(value) end
				},
				{
					type    = "checkbox",
					name    = GetString(DAS_MENU_CB_TTRIGHT),
					tooltip = GetString(DAS_MENU_CB_TTRIGHT_TIP),
					getFunc = function() return DAS.GetSettings().tooltipRight end,
					setFunc = function(value)
						DAS.GetSettings().tooltipRight = value
						DAS.AnchorList()
					end
				},
				{
					type    = "checkbox",
					name    = GetString(DAS_MENU_CB_GUIUP),
					tooltip = GetString(DAS_MENU_CB_GUIUP_TIP),
					getFunc = function() return DAS.GetUpsideDown() end,
					setFunc = function(value) DAS.SetUpsideDown(value) end
				},
				{
					type    = "checkbox",
					name    = GetString(DAS_MENU_CB_GUISM),
					tooltip = GetString(DAS_MENU_CB_GUISM_TIP),
					getFunc = function() return DAS.GetSettings().startupMinimized end,
					setFunc = function(value) DAS.GetSettings().startupMinimized = value end
				},
				{
					type    = "checkbox",
					name    = GetString(DAS_MENU_CB_HIDE_CQ),
					tooltip = GetString(DAS_MENU_CB_HIDE_CQ_TIP),
					getFunc = function() return DAS.GetAutoHide() end,
					setFunc = function(value) DAS.SetAutoHide(value) end
				},
				{
					type     = "checkbox",
					name     = GetString(DAS_MENU_CB_MINI_CQ),
					tooltip  = GetString(DAS_MENU_CB_MINI_CQ_TIP),
					disabled = function() return DAS.GetAutoHide() end,
					getFunc  = function() return DAS.GetAutoMinimize() end,
					setFunc  = function(value) DAS.SetAutoMinimize(value) end
				},
				{
					type    = "checkbox",
					name    = GetString(DAS_MENU_CB_DEL_CQ),
					tooltip = GetString(DAS_MENU_CB_DEL_CQ_TIP),
					getFunc = function() return DAS.GetHideCompleted() end,
					setFunc = function(value) DAS.SetHideCompleted(value) end
				},
				{
					type 	= "slider",
					name 	= GetString(DAS_MENU_CB_FSIZE),
					tooltip = GetString(DAS_MENU_CB_FSIZE_TIP),
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
			name    = GetString(DAS_MENU_H_AUTOM)
		},
		{
			type    = "checkbox",
			name    = GetString(DAS_MENU_CB_ACCEPT),
			tooltip = GetString(DAS_MENU_CB_ACCEPT_TIP),
			getFunc = function() return DAS.GetAutoAcceptShared() end,
			setFunc = function(value) DAS.SetAutoAcceptShared(value) end
		},
		{
			type    = "checkbox",
			name    = GetString(DAS_MENU_CB_DSKIP),
			tooltip = GetString(DAS_MENU_CB_DSKIP_TIP),
			getFunc = function() return DAS.GetSettings().autoAcceptQuest end,
			setFunc = function(value) DAS.GetSettings().autoAcceptQuest = value end
		},
		{
			type    = "checkbox",
			name    = GetString(DAS_MENU_CB_INVITE),
			tooltip = GetString(DAS_MENU_CB_INVITE_TIP),
			getFunc = function() return DAS.GetAutoInvite() end,
			setFunc = function(value) DAS.SetAutoInvite(value) end
		},
		{
			type    = "checkbox",
			name    = GetString(DAS_MENU_CB_GLAIOFF),
			tooltip = GetString(DAS_MENU_CB_GLAIOFF_TIP),
			getFunc = function() return DAS.GetStopInviteOnDegroup() end,
			setFunc = function(value) DAS.SetStopInviteOnDegroup(value) end
		},
		{
			type    = "checkbox",
			name    = GetString(DAS_MENU_CB_GLASHON),
			tooltip = GetString(DAS_MENU_CB_GLASHON_TIP),
			getFunc = function() return DAS.GetResetAutoShareOnNewGroup() end,
			setFunc = function(value) DAS.SetResetAutoShareOnNewGroup(value) end
		},
		{
			type    = "checkbox",
			name    = GetString(DAS_MENU_CB_AGLSPAM),
			tooltip = GetString(DAS_MENU_CB_AGLSPAM_TIP),
			getFunc = function() return DAS.GetAutoLeave() end,
			setFunc = function(value) DAS.SetAutoLeave(value) end
		},
		{
			type    = "slider",
			name    = GetString(DAS_MENU_SL_AJBINGO),
			tooltip = GetString(DAS_MENU_SL_AJBINGO_TIP),
			min     = 0,
			max     = 60,
			getFunc = function() return DAS.GetAutoAcceptInviteInterval() end,
			setFunc = function(value) DAS.SetAutoAcceptInviteInterval(value) end
		},
		{
			type    = "header",
			name    = GetString(DAS_MENU_H_POLITE)
		},
		{
			type 	= "slider",
			name 	= GetString(DAS_MENU_SL_INVTIME),
			tooltip = GetString(DAS_MENU_SL_INVTIME_TIP),
			min 	= 250,
			step	= 10,
			max 	= 2500,
			getFunc = function() return DAS.GetGroupInviteDelay() end,
			setFunc = function(value) DAS.SetGroupInviteDelay(value) end
		},
		{
			type 	= "slider",
			name 	= GetString(DAS_MENU_CB_SHRTIME),
			tooltip = GetString(DAS_MENU_CB_SHRTIME_TIP),
			min 	= 250,
			step	= 10,
			max 	= 2500,
			getFunc = function() return DAS.GetQuestShareDelay() end,
			setFunc = function(value) DAS.SetQuestShareDelay(value) end
		},
		{
			type    = "header",
			name    = GetString(DAS_MENU_CB_H_STUFF)
		},
		{
			type    = "checkbox",
			name    = GetString(DAS_MENU_CB_DEBUG),
			getFunc = function() return DAS.GetDebugMode() end,
			setFunc = function(value) DAS.SetDebugMode(value) end
		},
	} -- optionsData end
	LAM:RegisterAddonPanel("DailyAutoShare_OptionsPanel", panelData)
	LAM:RegisterOptionControls("DailyAutoShare_OptionsPanel", optionsData)
end
