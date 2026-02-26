-- AdiBags_fishing - Adds various lures,poles,hats and boots to filter out
-- Created by Frost, character is Frost-Lightbringer please credit whenever.

---@type
---
local addonName, addonTable = ...

-- Get the common name for Release
local E = addonTable.expansion
local Expansion = E["Dragonflight"]

-- Create addon table
local db = {}

db.name = "Adibags " .. Expansion .. " Fishing"
db.desc = "Itemsfound in " .. Expansion

-- Filter info
db.Filters = {
	["fishing"] = {
		uiName = Expansion .. " Fishing",
		uiDesc = "Fishing items found in " .. Expansion,
		title = "Fishing items",
		items = {-- ID,	--Item name
			[133755] = true, -- Underlight Angler - +60 fishskill and Teleport to pools
			[44050] = true, -- Mastercraft Kalu'ak Fishing Pole - +30 fishskill and Underwaterbreathing
			[25978] = true, -- Seth's Graphite Fishing Pole - +20 fishskill
			[19022] = true, -- Big Iron Fishing Pole - +10 fishskill
			[6367] = true, --  
			[6366] = true, --  
			[120163] = true, --  
			[45858] = true, --  
			[19970] = true, --  
			[84661] = true, -- 
			[45991] = true, -- 
			[118381] = true, -- 
			[45992] = true, --
			[46337] = true, --
			[12225] = true, --
			[6365] = true, --
			[116826] = true, --
			[84660] = true, --
			[116825] = true, --
			[6256] = true, --
			[168804] = true, --
			[173044] = true, --
			[180136] = true, --
			[117405] = true, --
			[19972] = true, --
			[19969] = true, --
			[33820] = true, --
			[50287] = true, --
			[93732] = true, --
			[88710] = true, --
			[118393] = true, --
			[118380] = true, --
			[88535] = true, --
			[68796] = true, --
			[34836] = true, --
			[19971] = true, --
			[116117] = true, --
			[34832] = true, --
			[19979] = true, --
			[67404] = true, --
			[6529] = true, --
			[6530] = true, --
			[6811] = true, --
			[6532] = true, --
			[7307] = true, --
			[6533] = true, --
			[62673] = true, --
			[34861] = true, --
			[46006] = true, --
			[68049] = true, --
			[133725] = true, --
			[133726] = true, --
			[133727] = true, --
			[133701] = true, --
			[133702] = true, --
			[133703] = true, --
			[133704] = true, --
			[133733] = true, --
			[133732] = true, --
			[133731] = true, --
			[133709] = true, --
			[133710] = true, --
			[133712] = true, --
			[133711] = true, --
			[133736] = true, --
			[133734] = true, --
			[133735] = true, --
			[133713] = true, --
			[133714] = true, --
			[133715] = true, --
			[133716] = true, --
			[133730] = true, --
			[133728] = true, --
			[133729] = true, --
			[133705] = true, --
			[133707] = true, --
			[133708] = true, --
			[133739] = true, --
			[133738] = true, --
			[133737] = true, --
			[133720] = true, --
			[133719] = true, --
			[139175] = true, --
			[136376] = true, --
			[136375] = true, --
			[141975] = true, --
			[138777] = true, --
			[133717] = true, --
			[133741] = true, --
			[133740] = true, --
			[133742] = true, --
			[133723] = true, --
			[133721] = true, --
			[133722] = true, --
			[133724] = true, --
			[133795] = true, --
			[128229] = true, --
			[127994] = true, --
			[124674] = true, --
			[122742] = true, --
			[110294] = true, --
			[110293] = true, --
			[110292] = true, --
			[110291] = true, --
			[110290] = true, --
			[110289] = true, --
			[110274] = true, --
			[146848] = true, --
			[136377] = true, --
			[173038] = true, --
			[173040] = true, --
			[173041] = true, --
			[173039] = true, --
			[173042] = true, --
			[173043] = true, --
			[180168] = true, --
			[194725] = true, --
			----------------------------- War within entrys -----------------------------
			[224752] = true, -- Soaked Journal Entry (increase fishing skill by 10 stacks till 300)
			[221790] = true, -- Fishing pole, Bismuth
			[221791] = true, -- Fishing pole, agirite
			[224085] = true, -- temp fish cap - hightfish cap
			[224084] = true, -- temp fish cap - tentacled hat
			[222842] = true, -- fishing hat
			[225771] = true, -- Seekerthread for fish increase
			[225770] = true, -- Anglerthread for fish increase
			[225729] = true, -- Weaverline - completed all threads
			[220138] = true, --
			[220152] = true, --
			[220134] = true, --
			[220136] = true, --
			[220135] = true, --
			[220137] = true, --
			[228954] = true, -- Anglers guide to learn "find fish"
			----------------------------- Midnight entrys -----------------------------
			-- Poles
			[244711] = true, -- Farstrider Hobbyist Rod | +55 Perception | +8 Midnight Fishing
			[244712] = true, -- Sin'dorei Angler's Rod | +56 Perception | +18 Midnight Fishing
			[259179] = true, -- Sin'dorei Reeler's Rod | +56 Perception | +18 Midnight Fishing

			-- Lures
			[241147] = true, -- Blood Hunter Lure
			[241145] = true, -- Lucky Loa Lure
			[241149] = true, -- Ominous Octopus Lure
			[241150] = true, -- Sunwell Fish Lure
			[241148] = true, -- Amani Angler's Ward | Anti Lure: Prevents Blood Hunter Spirits from spawning

			-- Enchants
			[262796] = true, -- Midnight Angler's Grand Line | Double Treasure chance
			[262795] = true, -- Angler's Bloomline
			[262793] = true, -- Stranded Bloomline
			[262794] = true, -- Weak Bloomline
			[262800] = true, -- Angler's Glimmerline
			[262797] = true, -- Shredded Glimmerline
			[262798] = true, -- Stranded Glimmerline
			[262799] = true, -- Weak Glimmerline

			-- Other
			[255157] = true, -- Abyss Angler's Fish Log | Increase Midnight Fishing skill by 3, max 300
			[262649] = true, -- An Angler's Deep Dive | Increase Midnight Fishing skill by 10, max 300
			[243343] = true, -- Angler's Anomaly | Release the Voidstorm creating an Oceanic Vortex to cast into

			-- Pet
			[260942] = true, -- Bubbly Snapling
		}
	}
}

-- db pass
addonTable.Dragonflight = db
