local DAS = DailyAutoShare

local optionsData
local questShareDefault

function DAS.CreateMenu(savedVars, defaults)
    
    questShareDefault = defaults.questShareString
	local LAM = LibStub:GetLibrary("LibAddonMenu-2.0")
	local panelData = {
		type    = "panel",
		name    = DAS.name,
		displayname    = name,
	 	author = DAS.author,
		version = DAS.version,
		slashCommand = "/das",
	}

	LAM:RegisterAddonPanel("DailyAutoShare_OptionsPanel", panelData)

	optionsData = { -- optionsData
		{ -- Use global configuration?
			type    = "checkbox",
			name    = "Turn on debugging?",			
			getFunc = function() return DAS.GetDebugMode() end,
			setFunc = function(value) DAS.SetDebugMode(value) end
		},	
	
		{ -- header: Use global variables?
			type    = "header",
			name    = "Use global variables?"
		},
		{ -- Use global configuration?
			type    = "checkbox",
			tooltip = "Use the same settings for all characters?",
			name    = "Use global configuration?",
			getFunc = function() return DAS.GetUseGlobalSettings() end,
			setFunc = function(value) DAS.SetUseGlobalSettings(value) end
			},
		{ -- header: Show/Hide?
			type    = "header",
			name    = "Show/Hide?"
		},
		{ -- checkbox: Hide UI window
			type    = "checkbox",
			name    = "Hide UI window",
			getFunc = function() return DAS.GetHidden() end,
			setFunc = function(value) DAS.SetHidden(value) end
		},
		{ -- header: be elaborate?
			type    = "header",
			name    = "Speak English instead of bingo?"
		},
		{ -- checkbox: don't use bingo 
			type    = "checkbox",
			name    = "Speak in whole sentences?",
			tooltip = "While this is optional, you will sound far less ludicrous if you don't talk like a telegram.\nIf you don't know what that is, please get older before unchecking this box.",
			getFunc = function() return not DAS.GetSpeakStupid() end,
			setFunc = function(value) DAS.SetSpeakStupid(not value) end
		},
    

		{ -- header: activate add-on in...
			type    = "submenu",
			name    = "Activate auto quest stuff in...",
			controls = {
                
				{
					type    = "submenu",
					name    = "Clockwork City", 
					controls = {
                        { -- checkbox: Clockwork City?
                            type    = "checkbox",
                            tooltip = "activate",
                            name    = "Activate in Clockwork City?",
                            getFunc = function() return DAS.GetActiveIn(980) end,
                            setFunc = function(value) 
                                DAS.SetActiveIn(980, value) 
                                DAS.SetActiveIn(981, value) 
                                DAS.SetActiveIn(983, value) 
                            end
                        },
						{ -- header: CC Worldbosses
							type    = "header",
							name    = "Worldbosses"
						},
						{ -- checkbox: relic
							type    = "checkbox",
							tooltip = "Enable world boss dailies",
							name    = "Enable?",
							getFunc = function() return DAS.GetQuestListItem(980, "boss", "active") end,
							setFunc = function(value) DAS.SetQuestListItem(980, "boss", "active", value) end
						},
						{ -- checkbox: relic
							type    = "checkbox",
							name    = "Hide",
							tooltip = "Don't show world boss dailies on UI list \nKeeps sharing on group invite",
							getFunc = function() return DAS.GetQuestListItem(980, "boss", "invisible") end,
							setFunc = function(value) DAS.SetQuestListItem(980, "boss", "invisible", value) end
						},
						{ -- header: CC Slagtown gathering dailies
							type    = "header",
							name    = "Slagtown: Gathering dailies"
						},
						{ -- checkbox: Slagtown gathering dailies
							type    = "checkbox",
							name    = "Enable?",
							tooltip = "Slagtown gathering dailies?",
							getFunc = function() return DAS.GetQuestListItem(980, "craft", "active") end,
							setFunc = function(value) DAS.SetQuestListItem(980, "craft", "active", value) end
						},
						{ -- checkbox: Hide Slagtown gathering dailies
							type    = "checkbox",
							name    = "Hide",
							tooltip = "Don't show Slagtown gathering dailies on UI list",
							getFunc = function() return DAS.GetQuestListItem(980, "craft", "invisible") end,
							setFunc = function(value) DAS.SetQuestListItem(980, "craft", "invisible", value) end
						},
						{ -- header: CC: Delves
							type    = "header",
							name    = "Clockwork City: Delves"
						},
						{ -- checkbox: delve
							type    = "checkbox",
							name    = "Enable?",
							tooltip = "Clockwork City delve dailies?",
							getFunc = function() return DAS.GetQuestListItem(980, "delve", "active") end,
							setFunc = function(value) DAS.SetQuestListItem(980, "delve", "active", value) end
						},
						{ -- checkbox: Clockwork City: Delves
							type    = "checkbox",
							name    = "Hide?",
							tooltip = "Don't show Clockwork City delve dailies on UI list",
							
							getFunc = function() return DAS.GetQuestListItem(980, "delve", "invisible") end,
							setFunc = function(value) DAS.SetQuestListItem(980, "delve", "invisible", value) end
						},
						{ -- header: Vivec: Delves
							type    = "header",
							name    = "Clockwork City: Crow"
						},
						{ -- checkbox: Clockwork City crow
							type    = "checkbox",
							name    = "Enable?",
							tooltip = "Enable Clockwork City crow dailies?",
							getFunc = function() return DAS.GetQuestListItem(980, "crow", "active") end,
							setFunc = function(value) DAS.SetQuestListItem(980, "crow", "active", value) end
						},
						{ -- checkbox: Clockwork City crow hide
							type    = "checkbox",
							name    = "Hide?",
							tooltip = "Don't show Clockwork City crow dailies on UI list",
							getFunc = function() return DAS.GetQuestListItem(980, "crow", "invisible") end,
							setFunc = function(value) DAS.SetQuestListItem(980, "crow", "invisible", value) end
						},
					},
				},
				{ -- checkbox: Morrowind
					type    = "checkbox",
					tooltip = "Vvardenfell?",
					name    = "Activate in Vvardenfell?",
					getFunc = function() return DAS.GetActiveIn(849) end,
					setFunc = function(value) DAS.SetActiveIn(849, value) end
				},
				{
					type        = "submenu",
					name        = "Vvardenfell", 
					controls    = {
						{ -- header: Ashlander: Relics
							type    = "header",
							name    = "Ashlander: Relics"
						},
						{ -- checkbox: relic
							type    = "checkbox",
							tooltip = "Go relic hunting for the Urshilaku?",
							name    = "Enable?",
							getFunc = function() return DAS.GetQuestListItem(849, "relic", "active") end,
							setFunc = function(value) DAS.SetQuestListItem(849, "relic", "active", value) end
						},
						{ -- checkbox: relic
							type    = "checkbox",
							name    = "Hide",
							tooltip = "Don't show Ashlander relic dailies on UI list \nKeeps sharing on group invite",
							getFunc = function() return DAS.GetQuestListItem(849, "relic", "invisible")end,
							setFunc = function(value) DAS.SetQuestListItem(849, "relic", "invisible", value) end
						},
						{ -- header: Ashlander: Hunt
							type    = "header",
							name    = "Ashlander: Hunt"
						},
						{ -- checkbox: Wrothgar
							type    = "checkbox",
							name    = "Enable?",
							tooltip = "Ashlander hunt dailies?",
							getFunc = function() return DAS.GetQuestListItem(849, "hunt", "active") end,
							setFunc = function(value) DAS.SetQuestListItem(849, "hunt", "active", value) end
						},
						{ -- checkbox: Wrothgar
							type    = "checkbox",
							name    = "Hide",
							tooltip = "Don't show Ashlander hunt dailies on UI list",
							getFunc = function() return DAS.GetQuestListItem(849, "hunt", "invisible") end,
							setFunc = function(value) DAS.SetQuestListItem(849, "hunt", "invisible", value) end
						},
						{ -- header: Vivec: Delves
							type    = "header",
							name    = "Vivec: Delves"
						},
						{ -- checkbox: Wrothgar
							type    = "checkbox",
							name    = "Enable?",
							tooltip = "Hall of Justice delve dailies?",
							getFunc = function() return DAS.GetQuestListItem(849, "delve", "active") end,
							setFunc = function(value) DAS.SetQuestListItem(849, "delve", "active", value) end
						},
						{ -- checkbox: Vivec: Delves
							type    = "checkbox",
							name    = "Hide?",
							tooltip = "Don't show Hall of Justice delve dailies on UI list",							
							getFunc = function() return DAS.GetQuestListItem(849, "delve", "invisible") end,
							setFunc = function(value) DAS.SetQuestListItem(849, "delve", "invisible", value) end
						},
						{ -- header: Vivec: Delves
							type    = "header",
							name    = "Vivec: Worldbosses"
						},
						{ -- checkbox: Wrothgar
							type    = "checkbox",
							name    = "Enable?",
							tooltip = "Enable Hall of Justice boss dailies?",
							getFunc = function() return DAS.GetQuestListItem(849, "boss", "active") end,
							setFunc = function(value) DAS.SetQuestListItem(849, "boss", "active", value) end
						},
						{ -- checkbox: Wrothgar
							type    = "checkbox",
							name    = "Hide?",
							tooltip = "Don't show Hall of Justice boss dailies on UI list",
							getFunc = function() return DAS.GetQuestListItem(849, "boss", "invisible") end,
							setFunc = function(value) DAS.SetQuestListItem(849, "boss", "invisible", value) end
						},
					},
				},
				{ -- checkbox: Wrothgar
					type    = "checkbox",
					tooltip = "Wrothgar?",
					name    = "Activate in Wrothgar?",
					getFunc = function() return DAS.GetActiveIn(684) end,
					setFunc = function(value) DAS.SetActiveIn(684, value) end
				},
				{ -- checkbox: The Gold Coast
					type    = "checkbox",
					tooltip = "The Gold Coast?",
					name    = "Activate in The Gold Coast?",
					getFunc = function() return DAS.GetActiveIn(823) end,
					setFunc = function(value) DAS.SetActiveIn(823, value) end
				},
				{ -- checkbox: The Gold Coast
					type    = "checkbox",
					tooltip = "Craglorn?",
					name    = "Activate in Craglorn?",
					getFunc = function() return DAS.GetActiveIn(888) end,
					setFunc = function(value) DAS.SetActiveIn(888, value) end
				},
				{ -- checkbox: Fighters Guild dailies?
					type    = "checkbox",
					tooltip = "Fighters/Mages Guild and Undaunted dailies? This is work in progress.",
					name    = "Guild quests?",
					getFunc = function() return DAS.GetActiveIn(57) end,
					setFunc = function(value)   
                        DAS.SetActiveIn(57, value) 
                    end
				},
                
				{
					type        = "submenu",
					name        = "Festivals", 
					controls = {						
						{ -- checkbox: relic
							type    = "checkbox",
							name    = "New Life",
							tooltip = "Enable New Life festival",
							getFunc = function() return DAS.GetActiveIn(101) end,
							setFunc = function(value)
								DAS.SetActiveFor("newLife", value)								
							end
						},
					},
				},
			},
		},
		
		
		{ -- header: Use global variables?
			type    = "header",
			name    = "User UI settings"
		},
		
		{ -- submenu: User UI settings
			type        = "submenu",
			name        = "Look and feel and behavior",
			controls    = {			
				{   -- editbox: Quest share text
                    type        = "editbox", 
                    isExtraWide = true, 
                    name        = "Quest share text",
                    tooltip     = ("Text to generate when you spam quest shares.\n" 
                                .. "<<1>> will be replaced with the quest names, <<2>> with the bingo codes.\n"
                                .. "Omit either to remove parameter. Include neither and sound like a fool."),
                    getFunc     = function() return DAS.GetSettings().questShareString end,
                    setFunc     = function(value) DAS.GetSettings().questShareString = value end,
                },                	
				{   -- editbox: Quest share text
                    type    = "button", 
                    name    = "Reset",
                    tooltip = "Reset quest share text to default value",
                    getFunc = function() return questShareDefault end,
                    setFunc = function(value) DAS.GetSettings().questShareString = questShareDefault end,
                    reference = "qsButton",
                },                
				{ -- checkbox: Lock UI window
					type    = "checkbox",
					name    = "Lock UI window",
					getFunc = function() return DAS.GetLocked() end,
					setFunc = function(value) DAS.SetLocked(value) end
				},
				{ -- checkbox: Tooltip position
					type    = "checkbox",
					name    = "Tooltip to the right?",
					tooltip = "Check this box to display the tooltip on the left side of the window",
					getFunc = function() return DAS.GetTooltipRight() end,
					setFunc = function(value) DAS.SetTooltipRight(value) end
				},
				{ -- checkbox: Reposition DropDown
					type    = "checkbox",
					name    = "DropUp instead of DropDown?",
					tooltip = "Check this if you want the questList to appear above the drag bar instead of below",
					getFunc = function() return DAS.GetUpsideDown() end,
					setFunc = function(value) DAS.SetUpsideDown(value) end
				},
				{ -- checkbox: Start up minimized?
					type    = "checkbox",
					name    = "Start up minimized?",
					tooltip = "Always minimize AddOn on first startup",
					getFunc = function() return DAS.GetSettings().startupMinimized end,
					setFunc = function(value) DAS.GetSettings().startupMinimized = value end
				},
				{ -- checkbox: AutoHide
					type    = "checkbox",
					name    = "Auto-hide when no open daily present?",
					tooltip = "Check this if you want the DASWindow to be hidden when you're done",
					getFunc = function() return DAS.GetAutoHide() end,
					setFunc = function(value) DAS.SetAutoHide(value) end
				},
				{ -- checkbox: AutoMinimize
					type    = "checkbox",
					name    = "Auto-minimize when no open daily present?",
					tooltip = "Check this if you want the DASWindow to be minimized when you're done. Will obviously be overridden by hide.",
					getFunc = function() return DAS.GetAutoMinimize() end,
					setFunc = function(value) DAS.SetAutoMinimize(value) end
				},
				{ -- checkbox: hide completed
					type    = "checkbox",
					name    = "Hide completed quests?",
					tooltip = "Usually, completed dailies will be shown in the list. Check this to make them vanish.",
					getFunc = function() return DAS.GetHideCompleted() end,
					setFunc = function(value) DAS.SetHideCompleted(value) end
				},
				{ -- slider: font size
					type 	= "slider",
					name 	= "Font size",
					tooltip = "adjust font size",
					min 	= 50,
					step	= 5, 
					max 	= 250,
					getFunc = function() return DAS.GetFontSize()*100 end,
					setFunc = function(value) DAS.SetFontSize(value/100) end
				},
				
			},
		}, -- submenu UI settings end
		{ -- behavior if hidden
			type    = "submenu",
			name    = "Behavior in inactive zones",
			controls = {
				{ -- checkbox: hide completed
					type    = "checkbox",
					name    = "Hide?",
					tooltip = "Usually, completed dailies will be shown in the list. Check this to make them vanish.",
					getFunc = function() return DAS.GetHiddenInInactiveZones() end,
					setFunc = function(value) DAS.SetHiddenInInactiveZones(value) end
				},
			}				
		},
		{ -- submenu: Guild settings
			type    = "submenu",
			name    = " Guild settings",
			controls = {
				{ -- checkbox: Mute add-on output?
					type    = "dropdown",
					tooltip = "Which guild should the add-on listen to?",
					choices = {"1","2","3","4","5",},
					name    = "Auto-invite for guild...",
					getFunc = function() return DAS.GetGuildInviteNumber() end,
					setFunc = function(value) DAS.SetGuildInviteNumber(value) end
				},
				{ -- checkbox: Lock UI window
					type    = "editbox",
					tooltip = "Invite on what..? Leave blank to disable invite. \nNeeds to be like 'word', will invite on '+word'",
					name    = "invite string",
					getFunc = function() return DAS.GetGuildInviteText() end,
					setFunc = function(value) DAS.SetGuildInviteText(value) end
				},
				{ -- checkbox: inviteFromGuild
					type    = "checkbox",
					tooltip = "do the bingo thing in guilds?",
					name    = "listen in guild chat",
					getFunc = function() return DAS.GetListenInGuilds() end,
					setFunc = function(value) DAS.SetListenInGuilds(value) end
				},

			},
		}, -- submenu UI settings end

		{ -- header: automatically
			type    = "header",
			name    = "automatically..."
		},

		{ -- auto-track
			type    = "checkbox",
			tooltip = "Auto-track active daily quest?",
			name    = "track active daily",
			getFunc = function() return DAS.GetAutoTrack() end,
			setFunc = function(value) DAS.SetAutoTrack(value) end
		},

		{ -- auto-accept
			type    = "checkbox",
			tooltip = "Accept repeatable quest if they are shared?",
			name    = "accept shared dailies",
			getFunc = function() return DAS.GetAutoAcceptShared() end,
			setFunc = function(value) DAS.SetAutoAcceptShared(value) end
		},
		{ -- auto-accept invites?
			type    = "checkbox",
			tooltip = "Skip quest accept dialogue? \n Needs localization to work",
			name    = "accept dailies from questgiver?",
			getFunc = function() return DAS.GetSettings().autoAcceptQuest end,
			setFunc = function(value) DAS.GetSettings().autoAcceptQuest = value end
		},

		{ --auto-invite
			type    = "checkbox",
			tooltip = "Are you the active kind? Check this box to auto-invite",
			name    = "invite from zone chat",
			getFunc = function() return DAS.GetAutoInvite() end,
			setFunc = function(value) DAS.SetAutoInvite(value) end
		},
		{ --auto-invite
			type    = "checkbox",
			tooltip = "Stop inviting when you leave a group?",
			name    = "stop inviting when the group disbands",
			getFunc = function() return DAS.GetStopInviteOnDegroup() end,
			setFunc = function(value) DAS.SetStopInviteOnDegroup(value) end
		},

		{ --auto-leave
			type    = "checkbox",
			tooltip = "Automatically leave group when you're searching while still grouped?",
			name    = "groupleave on new search",
			getFunc = function() return DAS.GetAutoLeave() end,
			setFunc = function(value) DAS.SetAutoLeave(value) end
		},
		{ -- auto-accept interval
			type    = "slider",
			tooltip = "After using the DAS spam button, auto-accept invites for how many seconds?",
			name    = "Accept auto-invite after hitting the spam buton for",
			min     = 0,
			max     = 60,
			getFunc = function() return DAS.GetAutoAcceptInviteInterval() end,
			setFunc = function(value) DAS.SetAutoAcceptInviteInterval(value) end
		},
	} -- optionsData end

	LAM:RegisterOptionControls("DailyAutoShare_OptionsPanel", optionsData)

end
