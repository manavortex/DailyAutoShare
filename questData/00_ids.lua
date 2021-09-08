DailyAutoShare              = DailyAutoShare or {}
DAS                         = DailyAutoShare
DAS.subzones = {
    -- CC
	[985]			= 980,		-- Halls of Regulation
	[986]			= 980,		-- Shadow Cleft
	[993]			= 980,		-- Planisphere
    -- Gold Coast
	[824]			= 823,		-- Hrota Cave
    -- Wrothgar
	[689]			= 684,		-- Nikolovara's Kennel
	[690]			= 684,		--
	[691]			= 684,		--
	[692]			= 684,		--
	[693]			= 684,		-- Argent Mine
	[694]			= 684,		-- Argent Mine
}
DAS_QUEST_IDS  = {
    -- Murkmire
    -- Summerset
    [6152]   = true, -- Pilgrimage's End
    [6153]   = true, --
    [6154]   = true, --
    [6155]   = true, --
    [6156]   = true, -- Snuffing Out the Light
    [6157]   = true, --
    [6158]   = true, --
    [6159]   = true, -- Culling Serpents
    [6083]   = true, -- Taming the Wild
    [6084]   = true, -- The Abyssal Alchemist
    [6085]   = true, --
    [6086]   = true, -- Never Forgotten
    -- Clockwork City
	[6076]	 = true, -- Inciting the Imperfect,
	[6077]	 = true, -- A Fine-Feathered Foe,
	[6039]	 = true, -- Loose Strands,
	[6040]	 = true, -- A Sticky Solution,
	[6041]	 = true, -- Enchanted Accumulation,
	[6038]	 = true, -- A Daily Grind,
	[6042]	 = true, -- A Bitter Pill,
	[6037]	 = true, -- Fuel for our Fires,
	[6088]	 = true, -- Changing the Filters,
	[6081]	 = true, -- Oiling the Fans,
	[6089]	 = true, -- Replacing the Commutators,
	[6080]	 = true, -- A Shadow Malfunction,
	[6073]	 = true, -- A Shadow Misplaced,
	[6079]	 = true, -- Again Into the Shadows,
	[6110]	 = true, -- Glitter and Gleam,
	[6106]	 = true, -- A Matter of Tributes,
	[6070]	 = true, -- Nibbles and Bits,
	[6071]	 = true, -- Morsels and Pecks,
	[6072]	 = true, -- A Matter of Respect,
	-- Morrowind dailies
	[5924]  = true, -- "Relics of Yasammidan",
	[5925]  = true, -- "Relics of Assarnatamat",
	[5926]  = true, -- "Relics of Maelkashishi",
	[5927]  = true, -- "Relics of Ashurnabitashpi",
	[5928]  = true, -- "Relics of Ebernanit",
	[5929]  = true, -- "Relics of Dushariran",
	[5930]  = true, -- "Relics of Ashalmawia",
	[5907]  = true, -- "Great Zexxin Hunt",
	[5908]  = true, -- "Tarra-Suj Hunt",
	[5909]  = true, -- "Writhing Sveeth Hunt",
	[5910]  = true, -- "Mother Jagged-Claw Hunt",
	[5911]  = true, -- "Ash-Eater Hunt",
	[5912]  = true, -- "Old Stomper Hunt",
	[5913]  = true, -- "King Razor-Tusk Hunt",
	-- Cave dailies (Hall of Justice)
	[5956]  = true, -- "Daedric Disruptions",
	[5958]  = true, -- "Unsettled Syndicate",
	[5961]  = true, -- "Planting Misinformation",
	[5962]  = true, -- "Kwama Conundrum",
	[5934]  = true, -- "Tax Deduction",
	[5915]  = true, -- "Tribal Troubles",
	[5958]  = true, -- "Unsettled Syndicate",
	-- World boss dailies (Hall of Justice)
	[5916]  = true, -- "The Anxious Apprentice",
	[5918]  = true, -- "A Creeping Hunger",
	[5865]  = true, -- "Culling the Swarm",
	[5866]  = true, -- "Oxen Free",
	[5904]  = true, -- "Salothan's Curse",
	[5906]  = true, -- "Siren's Song",
	-- wrothgar dailies
	[5518]  = true, -- "Meat for the Masses",
	[5519]  = true, -- "Scholarly Salvage",
	[5520]  = true, -- "Flames of Forge and Fallen",
	[5521]  = true, -- "Nature's Bounty",
	[5522]  = true, -- "Heresy of Ignorance",
	[5523]  = true, -- "Snow and Steam",
	[5524]  = true, -- "Reeking of Foul Play",
	-- wrothgar single
	[5507]  = true, -- "Breakfast of the Bizarre",
	[5515]  = true, -- "Free Spirits",
	[5514]  = true, -- "Getting a Bellyful",
	[5509]  = true, -- "Parts of the Whole",
	[5504]  = true, -- "The Skin Trade",
	[5505]  = true, -- "Fire in the Hold",
	-- gold coast
	[5603]  = true, -- "Buried Evil",
	[5604]  = true, -- "The Common Good",
	[5605]  = true, -- "Looming Shadows",
	[5606]  = true, -- "The Roar of the Crowds",
	-- new life
	[5845]  = true, -- "Castle Charm Challenge",
	[5837]  = true, -- "Lava Foot Stomp",
	[5838]  = true, -- "Mud Ball Merriment",
	[5839]  = true, -- "Signal Fire Sprint",
	[5855]  = true, -- "Fish Boon Feast",
	[5852]  = true, -- "War Orphan's Sojourn",
	[5834]  = true, -- "The Trial of Five-Clawed Guile",
	[5856]  = true, -- "Stonetooth Bash",
	[5811]  = true, -- "Snow Bear Plunge",
	-- craglorn
	-- lower
	[5108]  = true, -- "Critical Mass",
	[5756]  = true, -- "Critical Mass",
	[5749]  = true, -- "The Seeker's Archive",
	[5750]  = true, -- "The Fallen City of Shada",
	[5751]  = true, -- "The Trials of Rahni'Za",
	[5754]  = true, -- "Waters Run Foul",
	[5755]  = true, -- "Supreme Power",
	[5762]  = true, -- "The Reason We Fight",
	-- upper
	[5767]  = true, -- "The Blood of Nirn",
	[5777]  = true, -- "The Gray Passage",
	[5766]  = true, -- "Iron and Scales",
	[5770]  = true, -- "Souls of the Betrayed",
	[5765]  = true, -- "Taken Alive",
	[5764]  = true, -- "The Truer Fangs",
	[5772]  = true, -- "Uncaged",
    -- guild
    [5733]  = true, -- Ancient Armaments in Bangkorai
    [5734]  = true, -- The Spirit Trap in Malabal Tor
    [5735]  = true, -- Ancestor Wards in Deshaan
    [5737]  = true, -- Dwarven Relics of Stonefalls
    [5738]  = true, -- Ayleid Trinkets in Grahtwood
    [5739]  = true, -- Red Rook Ransack in Glenumbra
    [5740]  = true, -- Ancestor Wards in Deshaan
    [5744]  = true, -- Mascot Theft in Reaper's March
    [5745]  = true, -- Molten Pearls of Alik'r Desert
    [5778]  = true, -- Give and Take in Shadowfen
    [5779]  = true, -- Icy Intrigue in Eastmarch
    [5798]  = true, -- Veiled Darkness in Auridon
    [5800]  = true, --  Cursed Baubles of Stormhaven ??
    [5802]  = true, -- Inflamed Pyres of the Rift
    [5808]  = true, -- Darkness Blooms in Rivenspire
    [5853]  = true, -- Culinary Justice in Greenshade
}
for questId=5814, 5830 do -- Madness in...
    DAS_QUEST_IDS[questId] = true
end
for questId=5780, 5796 do -- Dark Anchors in...
    DAS_QUEST_IDS[questId] = true
end