---@type
local addonName, addonTable = ...

-- Release names from Release.lua
--local E = addonTable.Shadowlands
local db = {}

-- Get reference
local AdiBags = LibStub("AceAddon-3.0"):GetAddon("AdiBags")

local Result = {}

local debugMode = false

if debugMode then
	--[==[@debug@
	--"Version: " .. '10.0.02'
	--@end-debug@]==]
end

-- Check for existing filter, to prevent errors.
local function CheckFilter(newFilter)
	local filterExists = false
	for key, value in AdiBags:IterateFilters() do
		if value.filterName == newFilter then
			filterExists = true
			return filterExists
		end
	end
	return filterExists
end

-- Create Filters
local function CreateFilter(name, uiName, uiDesc, title, items)
	local filter = AdiBags:RegisterFilter(uiName, 98, "ABEvent-1.0")
	-- Register Filter with adibags
	filter.uiName = uiName
	filter.uiDesc = uiDesc .. "     Version: " .. "10.0.02"
	filter.items = items

	function filter:OnInitialize()
		-- Assign item table to filter
		self.items = filter.items
	end

	function filter:Update()
		self:SendMessage("AdiBags_FiltersChanged")
	end

	function filter:OnEnable()
		AdiBags:UpdateFilters()
	end

	function filter:OnDisable()
		AdiBags:UpdateFilters()
	end

	function filter:Filter(slotData)
		if self.items[tonumber(slotData.itemId)] then
			return title
		end
	end
end

-- Run filters/check
local function AllFilters(db)
	for name, group in pairs(db.Filters) do
		-- Does filter already exist?
		local filterExists = CheckFilter(group.uiName)
		if not filterExists == nil or filterExists == false then
			CreateFilter(name, group.uiName, group.uiDesc, group.title, group.items)
		end
	end
end

-- Start here, check tables for xpacks
for key, value in pairs(addonTable.expansion) do
	db = addonTable[value]
	if ( db ~= nil ) then
		AllFilters(db)
	end
end
