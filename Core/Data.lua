--[[

	Atlas, a World of Warcraft instance map browser
	Copyright 2011 ~ 2026 - Arith Hsu, Atlas Team 

	This file is part of Atlas.

	Atlas is free software; you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation; either version 2 of the License, or
	(at your option) any later version.

	Atlas is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with Atlas; if not, write to the Free Software
	Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

--]]
-----------------------------------------------------------------------
-- Upvalued Lua API.
-----------------------------------------------------------------------
local _G = getfenv(0)

local _, private = ...
local LibStub = _G.LibStub
local BZ = Atlas_GetLocaleLibBabble("LibBabble-SubZone-3.0")
local BF = Atlas_GetLocaleLibBabble("LibBabble-Faction-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale(private.addon_name)
local ALC = LibStub("AceLocale-3.0"):GetLocale("Atlas")
---@type AtlasAddon
local Atlas = LibStub("AceAddon-3.0"):GetAddon("Atlas")
---@type AtlasDataModule
local Cata = Atlas:GetModule(private.module_name)

local db = {}
Cata.db = db

local constants = Atlas.constants
local labelcolors = constants.colors.labels
local BLUE = labelcolors.BLUE
local GREN = labelcolors.GREN
local GREY = labelcolors.GREY
local LBLU = labelcolors.LBLU
local _RED = labelcolors._RED
local ORNG = labelcolors.ORNG
local PINK = labelcolors.PINK
local PURP = labelcolors.PURP
local WHIT = labelcolors.WHIT
local YLOW = labelcolors.YLOW
local INDENT = labelcolors.INDENT

-- local helper functions
local function getBossName(bossname, encounterID, creatureIndex)
	return Atlas:GetBossName(bossname, encounterID, creatureIndex, private.module_name)
end

local function getCreatureName(creatureName, creatureID)
	return getCreatureName(creatureName, creatureID)
end

local function getQuestTitlebyID(title, id)
	return Atlas:GetQuestTitlebyID(title, id)
end

local function getItemTitlebyID(title, id)
	return Atlas:GetItemTitlebyID(title, id)
end

-- local constants for easier access
local SLASH = ALC["Slash"]
local COLON = ALC["Colon"]
local COMMA = ALC["Comma"]
local L_PAREN = ALC["L-Parenthesis"]
local R_PAREN = ALC["R-Parenthesis"]
local ENTRANCE = ALC["Entrance"]
local WANDERS = ALC["Wanders"]
local UPPER = ALC["Upper"]
local CONNECTION = ALC["Connection"]
local RARE = ALC["Rare"]
local RANDOM = ALC["Random"]

db.AtlasMaps = {
	BlackrockMountainEnt = {
		ZoneName = { BZ["Blackrock Mountain"]..L_PAREN..ENTRANCE..R_PAREN },
		Location = { BZ["Searing Gorge"]..SLASH..BZ["Burning Steppes"] },
		LevelRange = "49-100+",
		MinLevel = "47",
		PlayerLimit = { 5, 10, 25, 40 },
		Acronym = L["BRM"],
		Module = "Atlas_Cataclysm",
		{ BLUE.." A) "..BZ["Searing Gorge"], 10001 },
		{ BLUE.." B) "..BZ["Burning Steppes"], 10002 },
		{ BLUE.." C) "..BZ["Blackrock Depths"], 10003 },
		{ BLUE.." D) "..BZ["Lower Blackrock Spire"], 10004 },
		{ BLUE..INDENT..BZ["Upper Blackrock Spire"] },
		{ GREN..INDENT..L["Bodley"]..L_PAREN..L["Ghost"]..R_PAREN },
		{ BLUE.." E) "..BZ["The Molten Core"], 10005 },
		{ GREN..INDENT..L["Lothos Riftwaker"] },
		{ BLUE.." F) "..BZ["Blackwing Lair"], 10006 },
		{ GREN..INDENT..L["Orb of Command"] },
		{ BLUE.." G) "..BZ["Blackrock Caverns"], 10007 },
		{ ORNG.." 1) "..L["Scarshield Quartermaster <Scarshield Legion>"]..L_PAREN..UPPER..R_PAREN, 10008 },
		{ ORNG.." 2) "..L["The Behemoth"]..L_PAREN..RARE..COMMA..WANDERS..R_PAREN, 10009 },
		{ ORNG.." 3) "..getBossName("Overmaster Pyron")..L_PAREN..WANDERS..R_PAREN, 10010 },
		{ GREN.." 1') "..L["Meeting Stone"]..L_PAREN..BZ["Blackrock Depths"]..R_PAREN, 10011 },
		{ GREN.." 2') "..L["Meeting Stone"]..L_PAREN..BZ["Lower Blackrock Spire"]..COMMA..BZ["Upper Blackrock Spire"]..R_PAREN, 10012 },
	},
	BaradinHold = {
		ZoneName = { BZ["Baradin Hold"] },
		Location = { BZ["Tol Barad"] },
		DungeonID = 328,
		DungeonHeroicID = 329,
		Acronym = L["BH"],
		PlayerLimit = { 10, 25 },
		WorldMapID = 282,
		JournalInstanceID = 75,
		Module = "Atlas_Cataclysm",
		{ ORNG..REPUTATION..COLON..BF["Baradin's Wardens"]..L_PAREN..FACTION_ALLIANCE..R_PAREN },
		{ ORNG..REPUTATION..COLON..BF["Hellscream's Reach"]..L_PAREN..FACTION_HORDE..R_PAREN },
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ WHIT.." 1) "..getBossName("Argaloth", 139), 139 },
		{ WHIT.." 2) "..getBossName("Occu'thar", 140), 140 },
		{ WHIT.." 3) "..getBossName("Alizabal, Mistress of Hate", 339), 339 },
		{ "" },
		{ LBLU..ACHIEVEMENTS..COLON },
		{ "Pit Lord Argaloth", "ac=5416" },
		{ "Occu'thar", "ac=6045" },
		{ "Baradin Hold Guild Run", "ac=5425" },
	},
	BlackrockCaverns = {
		ZoneName = { BZ["Blackrock Mountain"]..COLON..BZ["Blackrock Caverns"] },
		Location = { BZ["Searing Gorge"]..SLASH..BZ["Burning Steppes"] },
		DungeonID = 303,
		DungeonHeroicID = 323,
		Acronym = L["BRC"],
		WorldMapID = 283,
		JournalInstanceID = 66,
		Module = "Atlas_Cataclysm",
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ WHIT.." 1) "..getBossName("Rom'ogg Bonecrusher", 105), 105 },
		{ WHIT.." 2) "..getBossName("Corla, Herald of Twilight", 106), 106 },
		{ WHIT.." 3) "..getBossName("Karsh Steelbender", 107), 107 },
		{ WHIT.." 4) "..getBossName("Beauty", 108), 108 },
		{ WHIT.." 5) "..getBossName("Ascendant Lord Obsidius", 109), 109 },
		{ GREN.." 1') "..L["Finkle Einhorn"], 10002 },
		{ GREN..INDENT..ALC["Teleporter"] },
		{ GREN.." 2') "..ALC["Teleporter"], 10003 },
		{ "" },
		{ LBLU..ACHIEVEMENTS..COLON },
		{ "Crushing Bones and Cracking Skulls", "ac=5281" },
		{ "Arrested Development", "ac=5282" },
		{ "Too Hot to Handle", "ac=5283" },
		{ "Ascendant Descending", "ac=5284" },
		{ "Blackrock Caverns", "ac=4833" },
		{ "Heroic: Blackrock Caverns", "ac=5060" },
		{ "Heroic: Blackrock Caverns Guild Run", "ac=5134" },
	},
	BlackwingDescent = {
		ZoneName = { BZ["Blackrock Mountain"]..COLON..BZ["Blackwing Descent"] },
		Location = { BZ["Searing Gorge"]..SLASH..BZ["Burning Steppes"] },
		DungeonID = 313,
		DungeonHeroicID = 314,
		Acronym = L["BWD"],
		PlayerLimit = { 10, 25 },
		WorldMapID = 285,
		JournalInstanceID = 73,
		Module = "Atlas_Cataclysm",
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ WHIT.." 1) "..getBossName("Magmaw", 170), 170 },
		{ WHIT.." 2) "..getBossName("Omnotron Defense System", 169), 169 },
		{ WHIT.." 3) "..getBossName("Chimaeron", 172), 172 },
		{ WHIT.." 4) "..getBossName("Maloriak", 173), 173 },
		{ WHIT.." 5) "..getBossName("Atramedes", 171), 171 },
		{ WHIT.." 6) "..getBossName("Nefarian's End", 174), 174 },
		{ "" },
		{ LBLU..ACHIEVEMENTS..COLON },
		{ "Parasite Evening", "ac=5306" },
		{ "Achieve-a-tron", "ac=5307" },
		{ "Silence is Golden", "ac=5308" },
		{ "Full of Sound and Fury", "ac=5309" },
		{ "Aberrant Behavior", "ac=5310" },
		{ "Keeping it in the Family", "ac=4849" },
		{ "Blackwing Descent", "ac=4842" },
		{ "Heroic: Magmaw", "ac=5094" },
		{ "Heroic: Omnotron Defense System", "ac=5107" },
		{ "Heroic: Maloriak", "ac=5108" },
		{ "Heroic: Atramedes", "ac=5109" },
		{ "Heroic: Chimaeron", "ac=5115" },
		{ "Heroic: Nefarian", "ac=5116" },
		{ "Blackwing Descent Guild Run", "ac=4985" },
		{ "Heroic: Nefarian Guild Run", "ac=5462" },
		{ "Realm First! Nefarian", "ac=5409" },
	},
	CavernsOfTimeEnt = {
		ZoneName = { BZ["Caverns of Time"]..L_PAREN..ENTRANCE..R_PAREN },
		Location = { BZ["Tanaris"] },
		LevelRange = "66-85+",
		MinLevel = "66",
		PlayerLimit = { 5, 10, 25 },
		Acronym = L["CoT"],
		Module = "Atlas_Cataclysm",
		{ BLUE.." A) "..L["Entrance"], 10001 },
		{ BLUE.." B) "..BZ["Hyjal Summit"], 10002 },
		{ BLUE.." C) "..BZ["Old Hillsbrad Foothills"], 10003 },
		{ BLUE.." D) "..BZ["The Black Morass"], 10004 },
		{ BLUE.." E) "..BZ["The Culling of Stratholme"], 10005 },
		{ BLUE.." F) "..BZ["Dragon Soul"], 10006 },
		{ BLUE.." G) "..BZ["End Time"], 10007 },
		{ BLUE.." H) "..BZ["Well of Eternity"], 10008 },
		{ BLUE.." I) "..BZ["Hour of Twilight"], 10009 },
		{ GREN.." 1') "..L["Steward of Time <Keepers of Time>"], 10010 },
		{ GREN.." 2') "..L["Alexston Chrome <Tavern of Time>"], 10011 },
		{ GREN.." 3') "..L["Graveyard"], 10012 },
		{ GREN.." 4') "..L["Yarley <Armorer>"], 10013 },
		{ GREN.." 5') "..L["Bortega <Reagents & Poison Supplies>"], 10014 },
		{ GREN..INDENT..L["Alurmi <Keepers of Time Quartermaster>"] },
		{ GREN..INDENT..L["Galgrom <Provisioner>"] },
		{ GREN.." 6') "..L["Zaladormu"], 10015 },
		{ GREN..INDENT..L["Soridormi <The Scale of Sands>"]..L_PAREN..WANDERS..R_PAREN },
		{ GREN..INDENT..L["Arazmodu <The Scale of Sands>"]..L_PAREN..WANDERS..R_PAREN },
		{ GREN.." 7') "..L["Moonwell"], 10016 },
		{ GREN.." 8') "..L["Andormu <Keepers of Time>"]..L_PAREN..ALC["Child"]..R_PAREN, 10017 },
		{ GREN..INDENT..L["Nozari <Keepers of Time>"]..L_PAREN..ALC["Child"]..R_PAREN },
		{ GREN.." 9') "..L["Anachronos <Keepers of Time>"], 10018 },
		{ GREN.."10') "..L["Andormu <Keepers of Time>"]..L_PAREN..ALC["Adult"]..R_PAREN, 10019 },
		{ GREN..INDENT..L["Nozari <Keepers of Time>"]..L_PAREN..ALC["Adult"]..R_PAREN },
	},
--    [824] = { mapFile = "DragonSoul", [1] = 410, [2] = 411, [3] = 412, [4] = 413, [5] = 414, [6] = 415, [0] = 409},
	CoTDragonSoulA = {
		ZoneName = { BZ["Caverns of Time"]..COLON..BZ["Dragon Soul"]..ALC["MapA"] },
		Location = { BZ["Tanaris"] },
		DungeonID = 447,
		DungeonHeroicID = 448,
		Acronym = L["CoT-DS"],
		PlayerLimit = { 10, 25 },
		WorldMapID = 410,
		JournalInstanceID = 187,
		Module = "Atlas_Cataclysm",
		NextMap = "CoTDragonSoulB",
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ BLUE.." B) "..ALC["Portal"], 10002 },
		{ WHIT.." 1) "..getBossName("Morchok", 311), 311 },
		{ WHIT.." 5) "..getBossName("Ultraxion", 331)..L_PAREN..UPPER..R_PAREN, 331 },
		{ GREN..INDENT..L["Dasnurimi <Geologist & Conservator>"]..L_PAREN..ALC["Lower"]..R_PAREN },
		{ GREN..INDENT..L["Lord Afrasastrasz"]..L_PAREN..ALC["Lower"]..R_PAREN },
		{ "" },
		{ LBLU..ACHIEVEMENTS..COLON },
		{ "Fall of Deathwing", "ac=6107" },
		{ "Destroyer's End", "ac=6177" },
		{ "Don't Stand So Close to Me", "ac=6174" },
		{ "Ping Pong Champion", "ac=6128" },
		{ "Taste the Rainbow!", "ac=6129" },
		{ "Holding Hands", "ac=6175" },
		{ "Minutes to Midnight", "ac=6084" },
		{ "Deck Defender", "ac=6105" },
		{ "Maybe He'll Get Dizzy...", "ac=6133" },
		{ "Chromatic Champion", "ac=6180" },
		{ "Heroic: Morchok", "ac=6109" },
		{ "Heroic: Warlord Zon'ozz", "ac=6110" },
		{ "Heroic: Yor'sahj the Unsleeping", "ac=6111" },
		{ "Heroic: Hagara the Stormbinder", "ac=6112" },
		{ "Heroic: Ultraxion", "ac=6113" },
		{ "Heroic: Warmaster Blackhorn", "ac=6114" },
		{ "Heroic: Spine of Deathwing", "ac=6115" },
		{ "Heroic: Madness of Deathwing", "ac=6116" },
		{ "Dragon Soul Guild Run", "ac=6123" },
		{ "Heroic: Deathwing Guild Run", "ac=6125" },
		{ "Realm First! Deathwing", "ac=6126" },
	},
	CoTDragonSoulB = {
		ZoneName = { BZ["Caverns of Time"]..COLON..BZ["Dragon Soul"]..ALC["MapB"] },
		Location = { BZ["Tanaris"] },
		DungeonID = 447,
		DungeonHeroicID = 448,
		Acronym = L["CoT-DS"],
		PlayerLimit = { 10, 25 },
		WorldMapID = 410,
		JournalInstanceID = 187,
		Module = "Atlas_Cataclysm",
		PrevMap = "CoTDragonSoulA",
		NextMap = "CoTDragonSoulC",
		{ BLUE.." C-E) "..ALC["Portal"], 10001 },
		{ WHIT.." 2) "..getBossName("Warlord Zon'ozz", 324), 324 },
		{ WHIT.." 3) "..getBossName("Yor'sahj the Unsleeping", 325), 325 },
		{ WHIT.." 4) "..getBossName("Hagara the Stormbinder", 317), 317 },
		{ "" },
		{ LBLU..ACHIEVEMENTS..COLON },
		{ "Fall of Deathwing", "ac=6107" },
		{ "Destroyer's End", "ac=6177" },
		{ "Don't Stand So Close to Me", "ac=6174" },
		{ "Ping Pong Champion", "ac=6128" },
		{ "Taste the Rainbow!", "ac=6129" },
		{ "Holding Hands", "ac=6175" },
		{ "Minutes to Midnight", "ac=6084" },
		{ "Deck Defender", "ac=6105" },
		{ "Maybe He'll Get Dizzy...", "ac=6133" },
		{ "Chromatic Champion", "ac=6180" },
		{ "Heroic: Morchok", "ac=6109" },
		{ "Heroic: Warlord Zon'ozz", "ac=6110" },
		{ "Heroic: Yor'sahj the Unsleeping", "ac=6111" },
		{ "Heroic: Hagara the Stormbinder", "ac=6112" },
		{ "Heroic: Ultraxion", "ac=6113" },
		{ "Heroic: Warmaster Blackhorn", "ac=6114" },
		{ "Heroic: Spine of Deathwing", "ac=6115" },
		{ "Heroic: Madness of Deathwing", "ac=6116" },
		{ "Dragon Soul Guild Run", "ac=6123" },
		{ "Heroic: Deathwing Guild Run", "ac=6125" },
		{ "Realm First! Deathwing", "ac=6126" },
	},
	CoTDragonSoulC = {
		ZoneName = { BZ["Caverns of Time"]..COLON..BZ["Dragon Soul"]..ALC["MapC"] },
		Location = { BZ["Tanaris"] },
		DungeonID = 447,
		DungeonHeroicID = 448,
		Acronym = L["CoT-DS"],
		PlayerLimit = { 10, 25 },
		WorldMapID = 410,
		JournalInstanceID = 187,
		Module = "Atlas_Cataclysm",
		PrevMap = "CoTDragonSoulB",
		{ WHIT.." 6) "..getBossName("Warmaster Blackhorn", 332), 332 },
		{ WHIT.." 7) "..getBossName("Spine of Deathwing", 318), 318 },
		{ WHIT.." 8) "..getBossName("Madness of Deathwing", 333), 333 },
		{ "" },
		{ LBLU..ACHIEVEMENTS..COLON },
		{ "Fall of Deathwing", "ac=6107" },
		{ "Destroyer's End", "ac=6177" },
		{ "Don't Stand So Close to Me", "ac=6174" },
		{ "Ping Pong Champion", "ac=6128" },
		{ "Taste the Rainbow!", "ac=6129" },
		{ "Holding Hands", "ac=6175" },
		{ "Minutes to Midnight", "ac=6084" },
		{ "Deck Defender", "ac=6105" },
		{ "Maybe He'll Get Dizzy...", "ac=6133" },
		{ "Chromatic Champion", "ac=6180" },
		{ "Heroic: Morchok", "ac=6109" },
		{ "Heroic: Warlord Zon'ozz", "ac=6110" },
		{ "Heroic: Yor'sahj the Unsleeping", "ac=6111" },
		{ "Heroic: Hagara the Stormbinder", "ac=6112" },
		{ "Heroic: Ultraxion", "ac=6113" },
		{ "Heroic: Warmaster Blackhorn", "ac=6114" },
		{ "Heroic: Spine of Deathwing", "ac=6115" },
		{ "Heroic: Madness of Deathwing", "ac=6116" },
		{ "Dragon Soul Guild Run", "ac=6123" },
		{ "Heroic: Deathwing Guild Run", "ac=6125" },
		{ "Realm First! Deathwing", "ac=6126" },
	},
--    [820] = { mapFile = "EndTime", [1] = 402, [2] = 403, [3] = 404, [4] = 405, [5] = 406, [0] = 401},
	CoTEndTime = {
		ZoneName = { BZ["Caverns of Time"]..COLON..BZ["End Time"] },
		Location = { BZ["Tanaris"] },
		DungeonID = 435,
		Acronym = L["CoT-ET"],
		WorldMapID = 401,
		JournalInstanceID = 184,
		Module = "Atlas_Cataclysm",
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ GREN..INDENT..L["Alurmi"] },
		{ GREN..INDENT..L["Nozdormu"] },
		{ GREN..INDENT..ALC["Teleporter"] },
		{ WHIT.." 1) "..getBossName("Echo of Baine", 340)..L_PAREN..RANDOM..R_PAREN, 340 },
		{ WHIT.." 2) "..getBossName("Echo of Jaina", 285)..L_PAREN..RANDOM..R_PAREN, 285 },
		{ WHIT.." 3) "..getBossName("Echo of Sylvanas", 323)..L_PAREN..RANDOM..R_PAREN, 323 },
		{ WHIT.." 4) "..getBossName("Echo of Tyrande", 283)..L_PAREN..RANDOM..R_PAREN, 283 },
		{ WHIT.." 5) "..getBossName("Murozond", 289), 289 },
		{ GREN.." 1') "..ALC["Teleporter"], 10002 },
		{ "" },
		{ LBLU..ACHIEVEMENTS..COLON },
		{ "Moon Guard", "ac=5995" },
		{ "Severed Ties", "ac=6130" },
		{ "Heroic: End Time", "ac=6117" },
		{ "Heroic: End Time Guild Run", "ac=6120" },
	},
	CoTHourOfTwilight = {
		ZoneName = { BZ["Caverns of Time"]..COLON..BZ["Hour of Twilight"] },
		Location = { BZ["Tanaris"] },
		DungeonID = 439,
		Acronym = L["CoT-HoT"],
		WorldMapID = 399,
		JournalInstanceID = 186,
		Module = "Atlas_Cataclysm",
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ GREN..INDENT..L["Thrall"] },
		{ GREN..INDENT..ALC["Teleporter"] },
		{ WHIT.." 1) "..getBossName("Arcurion", 322), 322 },
		{ WHIT.." 2) "..getBossName("Asira Dawnslayer", 342), 342 },
		{ WHIT.." 3) "..getBossName("Archbishop Benedictus", 341), 341 },
		{ BLUE..INDENT..ALC["Portal"]..L_PAREN..BZ["Stormwind"]..SLASH..BZ["Orgrimmar"]..R_PAREN },
		{ "" },
		{ LBLU..ACHIEVEMENTS..COLON },
		{ "Eclipse", "ac=6132" },
		{ "Heroic: Hour of Twilight Guild Run", "ac=6122" },
	},
	CoTWellOfEternity = {
		ZoneName = { BZ["Caverns of Time"]..COLON..BZ["Well of Eternity"] },
		Location = { BZ["Tanaris"] },
		DungeonID = 437,
		Acronym = L["CoT-WoE"],
		WorldMapID = 398,
		JournalInstanceID = 185,
		Module = "Atlas_Cataclysm",
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ GREN..INDENT..L["Alurmi"] },
		{ GREN..INDENT..L["Nozdormu"] },
		{ GREN..INDENT..ALC["Teleporter"] },
		{ WHIT.." 1) "..getBossName("Peroth'arn", 290), 290 },
		{ WHIT.." 2) "..getBossName("Queen Azshara", 291), 291 },
		{ WHIT.." 3) "..getBossName("Mannoroth and Varo'then", 292), 292 },
		{ GREN..INDENT..L["Chromie"] },
		{ GREN.." 1') "..getBossName("Illidan Stormrage"), 10002 },
		{ GREN.." 2') "..ALC["Teleporter"], 10003 },
		{ "" },
		{ LBLU..ACHIEVEMENTS..COLON },
		{ "Lazy Eye", "ac=6127" },
		{ "That's Not Canon!", "ac=6070" },
		{ "Heroic: Well of Eternity", "ac=6118" },
		{ "Heroic: Well of Eternity Guild Run", "ac=6121" },
	},
	Firelands = {
		ZoneName = { BZ["Firelands"] },
		Location = { BZ["Mount Hyjal"] },
		DungeonID = 361,
		DungeonHeroicID = 362,
		Acronym = L["FL"],
		PlayerLimit = { 10, 25 },
		WorldMapID = 367,
		JournalInstanceID = 78,
		Module = "Atlas_Cataclysm",
		{ ORNG..REPUTATION..COLON..BF["Avengers of Hyjal"] },
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ GREN..INDENT..L["Lurah Wrathvine <Crystallized Firestone Collector>"] },
		{ GREN..INDENT..L["Naresir Stormfury <Avengers of Hyjal Quartermaster>"] },
		{ BLUE.." B) "..CONNECTION..L_PAREN..ALC["Portal"]..R_PAREN, 10002 },
		{ WHIT.." 1) "..getBossName("Beth'tilac", 192), 192 },
		{ WHIT.." 2) "..getBossName("Lord Rhyolith", 193), 193 },
		{ WHIT.." 3) "..getBossName("Alysrazor", 194), 194 },
		{ WHIT.." 4) "..getBossName("Shannox", 195), 195 },
		{ WHIT.." 5) "..getBossName("Baleroc, the Gatekeeper", 196), 196 },
		{ WHIT.." 6) "..getBossName("Majordomo Staghelm", 197), 197 },
		{ WHIT.." 7) "..getBossName("Ragnaros", 198), 198 },
		{ GREN.." 1') "..ALC["Teleporter"], 10003 },
		{ "" },
		{ LBLU..ACHIEVEMENTS..COLON },
		{ "Death from Above", "ac=5821" },
		{ "Only the Penitent...", "ac=5799" },
		{ "Firelands", "ac=5802" },
		{ "Heroic: Beth'tilac", "ac=5807" },
		{ "Heroic: Lord Rhyolith", "ac=5808" },
		{ "Heroic: Shannox", "ac=5806" },
		{ "Heroic: Alysrazor", "ac=5809" },
		{ "Heroic: Baleroc", "ac=5805" },
		{ "Heroic: Majordomo Fandral Staghelm", "ac=5804" },
		{ "Heroic: Ragnaros", "ac=5803" },
		{ "Firelands Guild Run", "ac=5983" },
		{ "Heroic: Ragnaros Guild Run", "ac=5984" },
		{ "Realm First! Ragnaros", "ac=5985" },
	},
	GrimBatol = {
		ZoneName = { BZ["Grim Batol"] },
		Location = { BZ["Twilight Highlands"] },
		DungeonID = 304,
		DungeonHeroicID = 322,
		Acronym = L["GB"],
		WorldMapID = 293,
		JournalInstanceID = 71,
		Module = "Atlas_Cataclysm",
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ WHIT.." 1) "..getBossName("General Umbriss", 131), 131 },
		{ WHIT.." 2) "..getBossName("Forgemaster Throngus", 132), 132 },
		{ WHIT.." 3) "..getBossName("Drahga Shadowburner", 133).." & "..getBossName("Valiona", 133, 2), 133 },
		{ WHIT.." 4) "..getBossName("Erudax, the Duke of Below", 134), 134 },
		{ GREN.." 1') "..L["Baleflame"], 10002 },
		{ GREN..INDENT..L["Farseer Tooranu <The Earthen Ring>"] },
		{ GREN..INDENT..L["Velastrasza"] },
		{ "" },
		{ LBLU..ACHIEVEMENTS..COLON },
		{ "Umbrage for Umbriss", "ac=5297" },
		{ "Don't Need to Break Eggs to Make an Omelet", "ac=5298" },
		{ "Grim Batol", "ac=4840" },
		{ "Heroic: Grim Batol", "ac=5062" },
		{ "Heroic: Grim Batol Guild Run", "ac=5138" },
	},
	HallsOfOrigination = {
		ZoneName = { BZ["Halls of Origination"] },
		Location = { BZ["Uldum"] },
		DungeonID = 305,
		DungeonHeroicID = 321,
		Acronym = L["HoO"],
		WorldMapID = 297,
		JournalInstanceID = 70,
		Module = "Atlas_Cataclysm",
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ WHIT.." 1) "..getBossName("Temple Guardian Anhuur", 124), 124 },
		{ WHIT.." 2) "..getBossName("Earthrager Ptah", 125), 125 },
		{ WHIT.." 3) "..getBossName("Anraphet", 126), 126 },
		{ WHIT.." 4) "..getBossName("Isiset, Construct of Magic", 127), 127 },
		{ WHIT.." 5) "..getBossName("Ammunae, Construct of Life", 128), 128 },
		{ WHIT.." 6) "..getBossName("Setesh, Construct of Destruction", 129), 129 },
		{ WHIT.." 7) "..getBossName("Rajh, Construct of Sun", 130), 130 },
		{ GREN.." 1') "..ALC["Teleporter"], 10002 },
		{ GREN.." 2') "..L["Brann Bronzebeard"], 10003 },
		{ GREN.." 3') "..L["Large Stone Obelisk"], 10004 },
		{ "" },
		{ LBLU..ACHIEVEMENTS..COLON },
		{ "I Hate That Song", "ac=5293" },
		{ "Straw That Broke the Camel's Back", "ac=5294" },
		{ "Faster Than the Speed of Light", "ac=5296" },
		{ "Sun of a....", "ac=5295" },
		{ "Halls of Origination", "ac=4841" },
		{ "Heroic: Halls of Origination", "ac=5065" },
		{ "Heroic: Halls of Origination Guild Run", "ac=5139" },
	},
	LostCityOfTolvir = {
		ZoneName = { BZ["Lost City of the Tol'vir"] },
		Location = { BZ["Uldum"] },
		DungeonID = 312,
		DungeonHeroicID = 325,
		Acronym = L["LCoT"],
		WorldMapID = 277,
		JournalInstanceID = 69,
		Module = "Atlas_Cataclysm",
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ GREN..INDENT..L["Captain Hadan"] },
		{ WHIT.." 1) "..getBossName("General Husam", 117), 117 },
		{ WHIT.." 2) "..getBossName("Lockmaw", 118), 118 },
		{ WHIT..INDENT..getBossName("Augh", 118, 2), 118 },
		{ WHIT.." 3) "..getBossName("High Prophet Barim", 119), 119 },
		{ WHIT.." 4) "..getBossName("Siamat", 122), 122 },
		{ GREN.." 1') "..L["Tol'vir Grave"], 10002 },
		{ "" },
		{ LBLU..ACHIEVEMENTS..COLON },
		{ "Kill It With Fire!", "ac=5290" },
		{ "Acrocalypse Now", "ac=5291" },
		{ "Headed South", "ac=5292" },
		{ "Lost City of the Tol'vir", "ac=4848" },
		{ "Heroic: Lost City of the Tol'vir", "ac=5066" },
		{ "Heroic: Lost City of the Tol'vir Guild Run", "ac=5140" },
	},
	--[[
	ShadowfangKeep = {
		ZoneName = { BZ["Shadowfang Keep"] },
		Location = { BZ["Silverpine Forest"] },
		DungeonID = 8,
		DungeonHeroicID = 327,
		Acronym = L["SFK"],
		WorldMapID = 310,
		JournalInstanceID = 64,
		Module = "Atlas_Cataclysm",
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ BLUE.." B-C) "..CONNECTION, 10002 },
		{ WHIT.." 1) "..getBossName("Baron Ashbury", 96), 96 },
		{ WHIT.." 2) "..getBossName("Baron Silverlaine", 97), 97 },
		{ WHIT..INDENT..Atlas_GetEJSectionTitle("Odo the Blindwatcher", 2121)..L_PAREN..RANDOM..COMMA..ALC["Summon"]..R_PAREN },
		{ WHIT..INDENT..Atlas_GetEJSectionTitle("Razorclaw the Butcher", 2125)..L_PAREN..RANDOM..COMMA..ALC["Summon"]..R_PAREN },
		{ WHIT..INDENT..Atlas_GetEJSectionTitle("Rethilgore", 2128)..L_PAREN..RANDOM..COMMA..ALC["Summon"]..R_PAREN },
		{ WHIT..INDENT..Atlas_GetEJSectionTitle("Wolf Master Nandos", 2130)..L_PAREN..RANDOM..COMMA..ALC["Summon"]..R_PAREN },
		{ WHIT.." 3) "..getBossName("Commander Springvale", 98), 98 },
		{ WHIT.." 4) "..getBossName("Lord Walden", 99), 99 },
		{ WHIT.." 5) "..getBossName("Lord Godfrey", 100), 100 },
		{ ORNG.." 1) "..L["Apothecary Trio"]..L_PAREN..ALC["Love is in the Air"]..R_PAREN, 10003 },
		{ ORNG..INDENT..L["Apothecary Hummel <Crown Chemical Co.>"] },
		{ ORNG..INDENT..L["Apothecary Baxter <Crown Chemical Co.>"] },
		{ ORNG..INDENT..L["Apothecary Frye <Crown Chemical Co.>"] },
		{ GREN.." 1') "..L["Packleader Ivar Bloodfang"]..L_PAREN..FACTION_ALLIANCE..R_PAREN, 10004 },
		{ GREN..INDENT..L["Deathstalker Commander Belmont"]..L_PAREN..FACTION_HORDE..R_PAREN },
		{ GREN.." 2') "..L["Haunted Stable Hand"]..L_PAREN..ALC["Teleporter"]..R_PAREN, 10005 },
		{ GREN.." 3') "..L["Investigator Fezzen Brasstacks"]..L_PAREN..ALC["Love is in the Air"]..R_PAREN, 10006 },
		{ "" },
		{ LBLU..ACHIEVEMENTS..COLON },
		{ "Pardon Denied", "ac=5503" },
		{ "To the Ground!", "ac=5504" },
		{ "Bullet Time", "ac=5505" },
		{ "Shadowfang Keep", "ac=631" },
		{ "Heroic: Shadowfang Keep", "ac=5093" },
		{ "Heroic: Shadowfang Keep Guild Run", "ac=5142" },
	},
	]]
	TheBastionOfTwilight = {
		ZoneName = { BZ["The Bastion of Twilight"] },
		Location = { BZ["Twilight Highlands"] },
		DungeonID = 315,
		DungeonHeroicID = 316,
		Acronym = L["BoT"],
		PlayerLimit = { 10, 25 },
		WorldMapID = 294,
		JournalInstanceID = 72,
		Module = "Atlas_Cataclysm",
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ BLUE.." B) "..CONNECTION, 10002 },
		{ WHIT.." 1) "..getBossName("Halfus Wyrmbreaker", 156), 156 },
		{ WHIT.." 2) "..getBossName("Theralion and Valiona", 157), 157 },
		{ GREN..INDENT..ALC["Teleporter destination"] },
		{ WHIT.." 3) "..getBossName("Ascendant Council", 158), 158 },
		{ GREN..INDENT..ALC["Teleporter destination"] },
		{ WHIT.." 4) "..getBossName("Cho'gall", 167), 167 },
		{ WHIT.." 5) "..getBossName("Sinestra", 168)..L_PAREN..ALC["Heroic"]..R_PAREN, 168 },
		{ GREN.." 1') "..ALC["Teleporter"], 10003 },
		{ "" },
		{ LBLU..ACHIEVEMENTS..COLON },
		{ "The Only Escape", "ac=5300" },
		{ "Double Dragon", "ac=4852" },
		{ "Elementary", "ac=5311" },
		{ "The Abyss Will Gaze Back Into You", "ac=5312" },
		{ "I Can't Hear You Over the Sound of How Awesome I Am", "ac=5313" },
		{ "The Bastion of Twilight Guild Run", "ac=4986" },
		{ "The Bastion of Twilight", "ac=4850" },
		{ "Heroic: Halfus Wyrmbreaker", "ac=5118" },
		{ "Heroic: Valiona and Theralion", "ac=5117" },
		{ "Heroic: Ascendant Council", "ac=5119" },
		{ "Heroic: Cho'gall", "ac=5120" },
		{ "Heroic: Sinestra", "ac=5121" },
		{ "Heroic: Cho'gall Guild Run", "ac=5461" },
		{ "Heroic: Sinestra Guild Run", "ac=5464" },
		{ "Realm First! Sinestra", "ac=5411" },
	},
--[[
	TheDeadminesEnt = {
		ZoneName = { BZ["The Deadmines"]..L_PAREN..ENTRANCE..R_PAREN },
		Location = { BZ["Westfall"] },
		LevelRange = "15-16 / 85",
		MinLevel = "15",
		PlayerLimit = { 5 },
		Acronym = L["VC"],
		WorldMapID = 291,
		JournalInstanceID = 63,
		Module = "Atlas_Cataclysm",
		NextMap = "TheDeadminesA",
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ GREN..INDENT..ALC["Meeting Stone"] },
		{ BLUE.." B) "..BZ["The Deadmines"], 10002 },
		{ ORNG.." 1) "..getBossName("Marisa du'Paige")..L_PAREN..RARE..COMMA..ALC["Varies"]..R_PAREN, 10003 },
		{ ORNG.." 2) "..getBossName("Brainwashed Noble")..L_PAREN..RARE..R_PAREN, 10004 },
		{ ORNG.." 3) "..getBossName("Foreman Thistlenettle"), 10005 },
	},
	TheDeadminesA = {
		ZoneName = { BZ["The Deadmines"]..ALC["MapA"] },
		Location = { BZ["Westfall"] },
		DungeonID = 6,
		DungeonHeroicID = 326,
		Acronym = L["VC"],
		WorldMapID = 291,
		DungeonLevel = 1,
		JournalInstanceID = 63,
		Module = "Atlas_Cataclysm",
		PrevMap = "TheDeadminesEnt",
		NextMap = "TheDeadminesB",
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ BLUE.." B) "..CONNECTION, 10002 },
		{ WHIT.." 1) "..getBossName("Glubtok", 89), 89 },
		{ WHIT.." 2) "..getBossName("Lumbering Oaf", 90, 2), 90 },
		{ WHIT..INDENT..getBossName("Helix Gearbreaker", 90), 90 },
		{ WHIT.." 3) "..getBossName("Foe Reaper 5000", 91), 91 },
		{ GREN.." 1') "..L["Goblin Teleporter"], 10004 },
		{ GREN.." 2') "..getCreatureName(L["Lieutenant Horatio Laine"], 46612)..L_PAREN..FACTION_ALLIANCE..R_PAREN, 10003 },
		{ GREN..INDENT..getCreatureName(L["Quartermaster Lewis <Quartermaster>"], 491)..L_PAREN..FACTION_ALLIANCE..R_PAREN },
		{ GREN..INDENT..getCreatureName(L["Slinky Sharpshiv"], 46906)..L_PAREN..FACTION_HORDE..R_PAREN },
		{ GREN..INDENT..getCreatureName(L["Kagtha"], 46889)..L_PAREN..FACTION_HORDE..R_PAREN },
		{ GREN..INDENT..getCreatureName(L["Miss Mayhem"], 46902)..L_PAREN..FACTION_HORDE..R_PAREN },
		{ GREN..INDENT..getCreatureName(L["Vend-O-Tron D-Luxe"], 24935)..L_PAREN..FACTION_HORDE..R_PAREN },
		{ "" },
		{ LBLU..ACHIEVEMENTS..COLON },
		{ "Ready for Raiding", "ac=5366" },
		{ "Rat Pack", "ac=5367" },
		{ "Prototype Prodigy", "ac=5368" },
		{ "It's Frost Damage", "ac=5369" },
		{ "I'm on a Diet", "ac=5370" },
		{ "Vigorous VanCleef Vindicator", "ac=5371" },
		{ "Deadmines", "ac=628" },
		{ "Heroic: Deadmines", "ac=5083" },
		{ "Heroic: Deadmines Guild Run", "ac=5141" },
	},
	TheDeadminesB = {
		ZoneName = { BZ["The Deadmines"]..ALC["MapB"] },
		Location = { BZ["Westfall"] },
		DungeonID = 6,
		DungeonHeroicID = 326,
		Acronym = L["VC"],
		WorldMapID = 292,
		DungeonLevel = 2,
		JournalInstanceID = 63,
		Module = "Atlas_Cataclysm",
		PrevMap = "TheDeadminesA",
		{ BLUE.." B) "..CONNECTION, 10002 },
		{ BLUE.." C) "..ALC["Exit"], 10003 },
		{ WHIT.." 4) "..getBossName("Admiral Ripsnarl", 92), 92 },
		{ WHIT..INDENT..getBossName("\"Captain\" Cookie", 93), 93 },
		{ WHIT..INDENT..getBossName("Vanessa VanCleef", 95)..L_PAREN..ALC["Heroic"]..R_PAREN, 95 },
		{ GREN.." 1') "..L["Goblin Teleporter"], 10004 },
		{ "" },
		{ LBLU..ACHIEVEMENTS..COLON },
		{ "Ready for Raiding", "ac=5366" },
		{ "Rat Pack", "ac=5367" },
		{ "Prototype Prodigy", "ac=5368" },
		{ "It's Frost Damage", "ac=5369" },
		{ "I'm on a Diet", "ac=5370" },
		{ "Vigorous VanCleef Vindicator", "ac=5371" },
		{ "Deadmines", "ac=628" },
		{ "Heroic: Deadmines", "ac=5083" },
		{ "Heroic: Deadmines Guild Run", "ac=5141" },
	},
]]
	TheStonecore = {
		ZoneName = { BZ["The Stonecore"] },
		Location = { BZ["Deepholm"] },
		DungeonID = 307,
		DungeonHeroicID = 320,
		Acronym = L["TSC"],
		WorldMapID = 324,
		JournalInstanceID = 67,
		Module = "Atlas_Cataclysm",
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ GREN..INDENT..L["Earthwarden Yrsa <The Earthen Ring>"] },
		{ BLUE.." B) "..ALC["Exit"], 10002 },
		{ WHIT.." 1) "..getBossName("Corborus", 110), 110 },
		{ WHIT.." 2) "..getBossName("Slabhide", 111), 111 },
		{ WHIT.." 3) "..getBossName("Ozruk", 112), 112 },
		{ WHIT.." 4) "..getBossName("High PRIESTess Azil", 113), 113 },
		{ GREN.." 1') "..ALC["Teleporter"], 10003 },
		{ "" },
		{ LBLU..ACHIEVEMENTS..COLON },
		{ "Rotten to the Core", "ac=5287" },
		{ "The Stonecore", "ac=4846" },
		{ "Heroic: The Stonecore", "ac=5063" },
		{ "Heroic: The Stonecore Guild Run", "ac=5136" },
	},
	TheVortexPinnacle = {
		ZoneName = { BZ["The Vortex Pinnacle"] },
		Location = { BZ["Uldum"] },
		DungeonID = 311,
		DungeonHeroicID = 319,
		Acronym = L["VP"],
		WorldMapID = 325,
		JournalInstanceID = 68,
		Module = "Atlas_Cataclysm",
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ GREN..INDENT..L["Itesh"] },
		{ WHIT.." 1) "..getBossName("Grand Vizier Ertan", 114), 114 },
		{ WHIT.." 2) "..getBossName("Altairus", 115), 115 },
		{ WHIT.." 3) "..getBossName("Asaad, Caliph of Zephyrs", 116), 116 },
		{ GREN.." 1') "..ALC["Teleporter"], 10002 },
		{ GREN.." 2') "..L["Magical Brazier"], 10003 },
		{ "" },
		{ LBLU..ACHIEVEMENTS..COLON },
		{ "No Static at All", "ac=5288" },
		{ "Extra Credit Bonus Stage", "ac=5289" },
		{ "The Vortex Pinnacle", "ac=4847" },
		{ "Heroic: The Vortex Pinnacle", "ac=5064" },
		{ "Heroic: The Vortex Pinnacle Guild Run", "ac=5137" },
	},
	ThroneOfTheFourWinds = {
		ZoneName = { BZ["Throne of the Four Winds"] },
		Location = { BZ["Uldum"] },
		DungeonID = 317,
		DungeonHeroicID = 318,
		Acronym = L["TWT"],
		PlayerLimit = { 10, 25 },
		WorldMapID = 328,
		JournalInstanceID = 74,
		Module = "Atlas_Cataclysm",
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ WHIT.." 1) "..getBossName("The Conclave of Wind", 154), 154 },
		{ WHIT..INDENT..getBossName("Anshal", 154, 1)..L_PAREN..ALC["West"]..R_PAREN, 154 },
		{ WHIT..INDENT..getBossName("Nezir", 154, 2)..L_PAREN..ALC["North"]..R_PAREN, 154 },
		{ WHIT..INDENT..getBossName("Rohash", 154, 3)..L_PAREN..ALC["East"]..R_PAREN, 154 },
		{ WHIT.." 2) "..getBossName("Al'Akir", 155), 155 },
		{ "" },
		{ LBLU..ACHIEVEMENTS..COLON },
		{ "Stay Chill", "ac=5304" },
		{ "Four Play", "ac=5305" },
		{ "Throne of the Four Winds", "ac=4851" },
		{ "Heroic: Conclave of Wind", "ac=5122" },
		{ "Heroic: Al'Akir", "ac=5123" },
		{ "Throne of the Four Winds Guild Run", "ac=4987" },
		{ "Heroic: Al'Akir Guild Run", "ac=5463" },
		{ "Realm First! Al'Akir", "ac=5410" },
	},
	ThroneOfTheTides = {
		ZoneName = { BZ["The Abyssal Maw"]..COLON..BZ["Throne of the Tides"] },
		Location = { BZ["Abyssal Depths"]..SLASH..BZ["The Abyssal Maw"] },
		DungeonID = 302,
		DungeonHeroicID = 324,
		Acronym = L["ToTT"],
		WorldMapID = 322,
		JournalInstanceID = 65,
		Module = "Atlas_Cataclysm",
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ GREN..INDENT..L["Captain Taylor"]..L_PAREN..FACTION_ALLIANCE..R_PAREN },
		{ GREN..INDENT..L["Legionnaire Nazgrim"]..L_PAREN..FACTION_HORDE..R_PAREN },
		{ BLUE.." B) "..CONNECTION, 10002 },
		{ WHIT.." 1) "..getBossName("Lady Naz'jar", 101), 101 },
		{ WHIT.." 2) "..getBossName("Commander Ulthok, the Festering Prince", 102), 102 },
		{ WHIT.." 3) "..getBossName("Erunak Stonespeaker").." & "..getBossName("Mindbender Ghur'sha", 103), 103 },
		{ WHIT.." 4) "..getBossName("Ozumat", 104), 104 },
		{ GREN..INDENT..L["Neptulon"] },
		{ GREN.." 1') "..ALC["Teleporter"], 10003 },
		{ "" },
		{ LBLU..ACHIEVEMENTS..COLON },
		{ "Old Faithful", "ac=5285" },
		{ "Prince of Tides", "ac=5286" },
		{ "Throne of the Tides", "ac=4839" },
		{ "Heroic: Throne of the Tides", "ac=5061" },
		{ "Heroic: Throne of the Tides Guild Run", "ac=5135" },
	},
	ZulAman = {
		ZoneName = { BZ["Zul'Aman"] },
		Location = { BZ["Ghostlands"] },
		DungeonID = 340,
		Acronym = L["ZA"],
		WorldMapID = 333,
		JournalInstanceID = 77,
		Module = "Atlas_Cataclysm",
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ GREN..INDENT..L["Vol'jin"] },
		{ GREN..INDENT..L["Witch Doctor T'wansi"] },
		{ GREN..INDENT..L["Blood Guard Hakkuz <Darkspear Elite>"] },
		{ GREN..INDENT..L["Voodoo Pile"] },
		{ WHIT.." 1) "..getBossName("Akil'zon", 186), 186 },
		{ GREN..INDENT..L["Bakkalzu"] },
		{ WHIT.." 2) "..getBossName("Nalorakk", 187), 187 },
		{ GREN..INDENT..L["Hazlek"] },
		{ GREN..INDENT..L["The Map of Zul'Aman"] },
		{ WHIT.." 3) "..getBossName("Jan'alai", 188), 188 },
		{ GREN..INDENT..L["Norkani"] },
		{ WHIT.." 4) "..getBossName("Halazzi", 189), 189 },
		{ GREN..INDENT..L["Kasha"] },
		{ WHIT.." 5) "..getBossName("Hex Lord Malacrass", 190), 190 },
		{ WHIT..INDENT..L["Thurg"]..L_PAREN..RANDOM..R_PAREN },
		{ WHIT..INDENT..L["Gazakroth"]..L_PAREN..RANDOM..R_PAREN },
		{ WHIT..INDENT..L["Lord Raadan"]..L_PAREN..RANDOM..R_PAREN },
		{ WHIT..INDENT..L["Darkheart"]..L_PAREN..RANDOM..R_PAREN },
		{ WHIT..INDENT..L["Alyson Antille"]..L_PAREN..RANDOM..R_PAREN },
		{ WHIT..INDENT..L["Slither"]..L_PAREN..RANDOM..R_PAREN },
		{ WHIT..INDENT..L["Fenstalker"]..L_PAREN..RANDOM..R_PAREN },
		{ WHIT..INDENT..L["Koragg"]..L_PAREN..RANDOM..R_PAREN },
		{ WHIT.." 6) "..getBossName("Daakara", 191), 191 },
		{ GREN.." 1') "..L["Zungam"], 10002 },
		{ GREN.." 2') "..L["Forest Frogs"], 10003 },
		{ GREN..INDENT..L["Eulinda <Reagents>"] },
		{ GREN..INDENT..L["Harald <Food Vendor>"] },
		{ GREN..INDENT..L["Arinoth"] },
		{ GREN..INDENT..L["Kaldrick"] },
		{ GREN..INDENT..L["Lenzo"] },
		{ GREN..INDENT..L["Mawago"] },
		{ GREN..INDENT..L["Melasong"] },
		{ GREN..INDENT..L["Melissa"] },
		{ GREN..INDENT..L["Micah"] },
		{ GREN..INDENT..L["Relissa"] },
		{ GREN..INDENT..L["Rosa"] },
		{ GREN..INDENT..L["Tyllan"] },
		{ "" },
		{ LBLU..ACHIEVEMENTS..COLON },
		{ "Tunnel Vision", "ac=5750" },
		{ "Hex Mix", "ac=5761" },
		{ "Bear-ly Made It", "ac=5858" },
		{ "Ring Out!", "ac=5760" },
		{ "Amani War Bear", "ac=430" },
		{ "Zul'Aman", "ac=691" },
		{ "Heroic: Zul'Aman", "ac=5769" },
		{ "Heroic: Zul'Aman Guild Run", "ac=5771" },
	},	
	ZulGurub = {
		ZoneName = { BZ["Zul'Gurub"] },
		Location = { BZ["Northern Stranglethorn"] },
		DungeonID = 334,
		Acronym = L["ZG"],
		WorldMapID = 337,
		JournalInstanceID = 76,
		Module = "Atlas_Cataclysm",
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ GREN.." 1') "..ALC["Meeting Stone"], 10002 },
		{ GREN.." 2') "..L["Briney Boltcutter <Blackwater Financial Interests>"], 10003 },
		{ GREN.." 3') "..L["Vehini <Assault Provisions>"], 10004 },
		{ GREN..INDENT..L["Overseer Blingbang"] },
		{ GREN..INDENT..L["Bloodslayer T'ara <Darkspear Veteran>"] },
		{ GREN..INDENT..L["Bloodslayer Vaena <Darkspear Veteran>"] },
		{ GREN..INDENT..L["Bloodslayer Zala <Darkspear Veteran>"] },
		{ GREN..INDENT..L["Helpful Jungle Monkey"] },
		{ GREN..INDENT..L["Voodoo Pile"] },
		{ WHIT.." 1) "..L["Venomancer Mauri <The Snake's Whisper>"], 10005 },
		{ GREN..INDENT..L["Zanzil's Cauldron of Toxic Torment"] },
		{ WHIT.." 2) "..L["Tiki Lord Mu'Loa"], 10006 },
		{ WHIT.." 3) "..L["Gub <Destroyer of Fish>"], 10007 },
		{ WHIT.." 4) "..L["Venomancer T'Kulu <The Toxic Bite>"], 10008 },
		{ GREN..INDENT..L["Zanzil's Cauldron of Toxic Torment"] },
		{ WHIT.." 5) "..getBossName("High PRIEST Venoxis", 175), 175 },
		{ WHIT.." 6) "..L["Tor-Tun <The Slumberer>"], 10009 },
		{ WHIT.." 7) "..L["Kaulema the Mover"], 10010 },
		{ WHIT.." 8) "..L["Berserking Boulder Roller"], 10011 },
		{ GREN.." 4') "..L["Zanzil's Cauldron of Frostburn Formula"], 10012 },
		{ WHIT.." 9) "..getBossName("Bloodlord Mandokir", 176), 176 },
		{ WHIT.."10) "..L["Mor'Lek the Dismantler"], 10013 },
		{ WHIT.."11) "..L["Witch Doctor Qu'in <Medicine Woman>"], 10014 },
		{ GREN.." 5') "..L["Zanza the Restless"], 10015 },
		{ WHIT.."12) "..BZ["The Cache of Madness"], 10016 },
		{ WHIT..INDENT..getBossName("Gri'lek", 177)..L_PAREN..RANDOM..R_PAREN, 177 },
		{ WHIT..INDENT..getBossName("Hazza'rah", 178)..L_PAREN..RANDOM..R_PAREN, 178 },
		{ WHIT..INDENT..getBossName("Renataki", 179)..L_PAREN..RANDOM..R_PAREN, 179 },
		{ WHIT..INDENT..getBossName("Wushoolay", 180)..L_PAREN..RANDOM..R_PAREN, 180 },
		{ WHIT.."13) "..L["Mortaxx <The Tolling Bell>"], 10017 },
		{ WHIT.."14) "..L["Tiki Lord Zim'wae"], 10018 },
		{ GREN..INDENT..L["Zanzil's Cauldron of Burning Blood"] },
		{ WHIT.."15) "..getBossName("High PRIESTess Kilnara", 181)..L_PAREN..ALC["Basement"]..R_PAREN, 181 },
		{ GREN.." 6') "..L["Zanzil's Cauldron of Frostburn Formula"], 10019 },
		{ WHIT.."16) "..getBossName("Zanzil", 184), 184 },
		{ GREN..INDENT..L["Zanzil's Cauldron of Toxic Torment"] },
		{ GREN..INDENT..L["Zanzil's Cauldron of Frostburn Formula"] },
		{ GREN..INDENT..L["Zanzil's Cauldron of Burning Blood"] },
		{ WHIT.."17) "..getBossName("Jin'do the Godbreaker", 185), 185 },
		{ "" },
		{ LBLU..ACHIEVEMENTS..COLON },
		{ "Gurubashi Headhunter", "ac=5744" },
		{ "It's Not Easy Being Green", "ac=5743" },
		{ "Ohganot So Fast!", "ac=5762" },
		{ "Spirit Twister", "ac=5759" },
		{ "Swift Zulian Tiger", "ac=880" },
		{ "Swift Razzashi Raptor", "ac=881" },
		{ "Deadliest Catch", "ac=560" },
		{ "Zul'Gurub", "ac=688" },
		{ "Heroic: Zul'Gurub", "ac=5768" },
		{ "Heroic: Zul'Gurub Guild Run", "ac=5770" },
	},
}

-- Atlas Map NPC Description Data
db.AtlasMaps_NPC_DB = {
	BaradinHold = {
		{ 1, 139, 425, 320 }, -- Argaloth
		{ 2, 140, 72, 319 }, -- Occu'thar
		{ 3, 339, 249, 139 }, -- Alizabal, Mistress of Hate
		{ "A", 10001, 252, 432 },
	},
	BlackrockMountainEnt = {
		{ "A", 10001, 271, 182 },
		{ "B", 10002, 255, 498},
		{ "C", 10003, 158, 12},
		{ "D", 10004, 362, 308},
		{ "E", 10005, 220, 286},
		{ "F", 10006, 334, 419},
		{ "G", 10007, 432, 357},
		{ "1", 10008, 405, 356},
		{ "2", 10009, 136, 191},
		{ "3", 10010, 130, 33},
		{ "1'", 10011, 281, 350},
		{ "2'", 10012, 341, 391},
	},
	BlackrockCaverns = {
		{ 1, 105, 166, 311 }, -- Rom'ogg Bonecrusher
		{ 2, 106, 143, 102 }, -- Corla, Herald of Twilight
		{ 3, 107, 281, 301 }, -- Karsh Steelbender
		{ 4, 108, 363, 381 }, -- Beauty
		{ 5, 109, 377, 236 }, -- Ascendant Lord Obsidius
		{ "A", 10001, 14, 285 },
		{ "1'", 10002, 66, 299 },
		{ "2'", 10003, 245, 269 },
	},
	BlackwingDescent = {
		{ 1, 170, 132, 370 }, -- Magmaw
		{ 2, 169, 311, 372 }, -- Omnotron Defense System
		{ 3, 172, 77, 246 }, -- Chimaeron
		{ 4, 173, 364, 247 }, -- Maloriak
		{ 5, 171, 224, 109 }, -- Atramedes
		{ 6, 174, 223, 246 }, -- Nefarian's End
		{ "A", 10001, 190, 435 },
	},
	CavernsOfTimeEnt = {
		{ "A", 10001, 405, 170 }, -- Entrance
		{ "B", 10002, 140, 79 }, -- Hyjal Summit
		{ "C", 10003, 18, 156 }, -- Old Hillsbrad Foothills
		{ "D", 10004, 65, 442 }, -- The Black Morass
		{ "E", 10005, 263, 411 }, -- The Culling of Stratholme
		{ "F", 10006, 291, 170 }, -- Dragon Soul
		{ "G", 10007, 261, 201 }, -- End Time
		{ "H", 10008, 28, 298 }, -- Well of Eternity
		{ "I", 10009, 329, 210 }, -- Hour of Twilight
		{ "1'", 10010, 426, 170 }, -- Steward of Time <Keepers of Time>
		{ "2'", 10011, 461, 159 }, -- Alexston Chrome <Tavern of Time>
		{ "3'", 10012, 355, 148 }, -- Graveyard
		{ "4'", 10013, 323, 303 }, -- Yarley <Armorer>
		{ "5'", 10014, 313, 329 }, -- Bortega <Reagents & Poison Supplies>
		{ "6'", 10015, 196, 293 }, -- Zaladormu
		{ "7'", 10016, 198, 157 }, -- Moonwell
		{ "8'", 10017, 161, 216 }, -- Andormu <Keepers of Time>
		{ "9'", 10018, 146, 263 }, -- Anachronos <Keepers of Time>
		{ "10'", 10019, 115, 317 }, -- Andormu <Keepers of Time>
	},
	CoTDragonSoulA = {
		{ 1, 311, 250, 301 }, -- Morchok
		{ 5, 331, 248, 252 }, -- Ultraxion
		{ "A", 10001, 251, 372 },
		{ "B", 10002, 254, 268 },
	},
	CoTDragonSoulB = {
		{ 2, 324, 135, 132 }, -- Warlord Zon'ozz
		{ 3, 325, 302, 370 }, -- Yor'sahj the Unsleeping
		{ 4, 317, 393, 130 }, -- Hagara the Stormbinder
		{ "C", 10001, 30, 99 },
		{ "D", 10001, 346, 468 },
		{ "E", 10001, 396, 81 },
	},
	CoTDragonSoulC = {
		{ 6, 332, 101, 86 }, -- Warmaster Blackhorn
		{ 7, 318, 69, 345 }, -- Spine of Deathwing
		{ 8, 333, 333, 318 }, -- Madness of Deathwing	
	},
	CoTEndTime = {
		{ 1, 340, 94, 143 }, -- Echo of Baine
		{ 2, 285, 294, 409 }, -- Echo of Jaina
		{ 3, 323, 218, 259 }, -- Echo of Sylvanas
		{ 4, 283, 380, 467 }, -- Echo of Tyrande
		{ 5, 289, 475, 183 }, -- Murozond
		{ "A", 10001, 482, 270 },
		{ "1'", 10002, 133, 142 },
		{ "1'", 10002, 175, 251 },
		{ "1'", 10002, 284, 419 },
		{ "1'", 10002, 380, 432 },
		{ "1'", 10002, 467, 206 },
	},
	CoTHourOfTwilight = {
		{ 1, 322, 340, 101 }, -- Arcurion
		{ 2, 342, 187, 231 }, -- Asira Dawnslayer
		{ 3, 341, 270, 435 }, -- Archbishop Benedictus
		{ "A", 10001, 271, 41 },
	},
	CoTWellOfEternity = {
		{ 1, 290, 138, 311 }, -- Peroth'arn
		{ 2, 291, 241, 278 }, -- Queen Azshara
		{ 3, 292, 424, 314 }, -- Mannoroth and Varo'then
		{ "A", 10001, 159, 357 },
		{ "1'", 10002, 126, 374 },
		{ "1'", 10002, 364, 399 },
		{ "2'", 10003, 164, 265 },
		{ "2'", 10003, 231, 266 },
		{ "2'", 10003, 364, 417 },
	},
	Firelands = {
		{ 1, 192, 140, 320 }, -- Beth'tilac
		{ 2, 193, 336, 438 }, -- Lord Rhyolith
		{ 3, 194, 339, 330 }, -- Alysrazor
		{ 4, 195, 263, 353 }, -- Shannox
		{ 5, 196, 264, 308 }, -- Baleroc, the Gatekeeper
		{ 6, 197, 265, 190 }, -- Majordomo Staghelm
		{ 7, 198, 264, 56 }, -- Ragnaros
		{ "A", 10001, 161, 483 },
		{ "B", 10002, 123, 196 },
		{ "B", 10002, 174, 288 },
		{ "1'", 10003, 283, 237 },
		{ "1'", 10003, 194, 438 },
	},
	GrimBatol = {
		{ 1, 131, 176, 320 }, -- General Umbriss
		{ 2, 132, 238, 181 }, -- Forgemaster Throngus
		{ 3, 133, 336, 135 }, -- Drahga Shadowburner
		{ 4, 134, 429, 343 }, -- Erudax, the Duke of Below
		{ "A", 10001, 7, 275 },
		{ "1'", 10002, 61, 270 },
	},
	HallsOfOrigination = {
		{ 1, 124, 85, 290 }, -- Temple Guardian Anhuur
		{ 2, 125, 348, 230 }, -- Earthrager Ptah
		{ 3, 126, 72, 93 }, -- Anraphet
		{ 4, 127, 170, 382 }, -- Isiset, Construct of Magic
		{ 5, 128, 245, 454 }, -- Ammunae, Construct of Life
		{ 6, 129, 319, 382 }, -- Setesh, Construct of Destruction
		{ 7, 130, 242, 306 }, -- Rajh, Construct of Sun
		{ "A", 10001, 41, 418 },
		{ "1'", 10002, 32, 405 },
		{ "1'", 10002, 75, 44 },
		{ "1'", 10002, 148, 229 },
		{ "1'", 10002, 236, 376 },
		{ "1'", 10002, 468, 229 },
		{ "2'", 10003, 74, 206 },
		{ "3'", 10004, 23, 281 },
	},
	LostCityOfTolvir = {
		{ 1, 117, 234, 219 }, -- General Husam
		{ 2, 118, 379, 313 }, -- Lockmaw
		{ 3, 119, 183, 286 }, -- High Prophet Barim
		{ 4, 122, 248, 253 }, -- Siamat
		{ "A", 10001, 214, 146 },
		{ "1'", 10002, 210, 160 },
	},
	--[[
	ShadowfangKeep = {
		{ 1, 96, 363, 408 }, -- Baron Ashbury
		{ 2, 97, 54, 339 }, -- Baron Silverlaine
		{ 3, 98, 171, 353 }, -- Commander Springvale
		{ 4, 99, 290, 173 }, -- Lord Walden
		{ 5, 100, 207, 51 }, -- Lord Godfrey
		{ "A", 10001, 383, 368 },
		{ "B", 10002, 163, 214 },
		{ "B", 10002, 219, 288 },
		{ "C", 10002, 43, 364 },
		{ "C", 10002, 106, 438 },
		{ "1", 10003, 226, 333 },
		{ "1'", 10004, 359, 361 },
		{ "2'", 10005, 392, 340 },
		{ "3'", 10006, 318, 372 },
	},
	]]
	TheBastionOfTwilight = {
		{ 1, 156, 154, 103 }, -- Halfus Wyrmbreaker
		{ 2, 157, 155, 280 }, -- Theralion and Valiona
		{ 3, 158, 112, 395 }, -- Ascendant Council
		{ 4, 167, 222, 458 }, -- Cho'gall
		{ 5, 168, 393, 302 }, -- Sinestra
		{ "A", 10001, 93, 210 },
		{ "B", 10002, 204, 457 },
		{ "B", 10002, 416, 394 },
		{ "1'", 10003, 77, 165 },
		{ "1'", 10003, 110, 165 },
	},
--[[
	TheDeadminesA = {
		{ 1, 89, 186, 307 }, -- Glubtok
		{ 2, 90, 262, 454 }, -- Helix Gearbreaker
		{ 3, 91, 333, 333 }, -- Foe Reaper 5000 
		{ "A", 10001, 87, 66 },
		{ "B", 10002, 472, 175 },
		{ "1'", 10004,  89, 139 }, -- Goblin Teleporter
		{ "1'", 10004, 231, 466 }, -- Goblin Teleporter
		{ "1'", 10004, 385, 320 }, -- Goblin Teleporter
		{ "2'", 10003, 108, 149 },
	},
	TheDeadminesB = {
		{ 4, 92, 324, 179 }, -- Admiral Ripsnarl
		{ 4, 93, 306, 179 }, -- "Captain"Cookie
		{ 4, 95, 304, 185 }, -- Vanessa VanCleef
		{ "B", 10002, 192, 208 },
		{ "C", 10003, 400, 193 },
		{ "1'", 10004, 286, 225 }, -- Goblin Teleporter
	},
	TheDeadminesEnt = {
		{ "A", 10001, 334, 20 }, -- Entrance
		{ "B", 10002, 79, 249 }, -- The Deadmines
		{ "1", 10003, 439, 204 }, -- Marisa du'Paige
		{ "1", 10003, 319, 324 }, -- Marisa du'Paige
		{ "2", 10004, 361, 363 }, -- Brainwashed Noble
		{ "3", 10005, 319, 449 }, -- Foreman Thistlenettle
	},
]]
	TheStonecore = {
		{ 1, 110, 336, 289 }, -- Corborus
		{ 2, 111, 128, 219 }, -- Slabhide
		{ 3, 112, 221, 108 }, -- Ozruk
		{ 4, 113, 282, 197 }, -- High Priestess Azil
		{ "A", 10001, 271, 493 },
		{ "B", 10002, 374, 200 },
		{ "1'", 10003, 123, 203 },
		{ "1'", 10003, 260, 481 },
	},
	TheVortexPinnacle = {
		{ 1, 114, 341, 216 }, -- Grand Vizier Ertan
		{ 2, 115, 312, 455 }, -- Altairus
		{ 3, 116, 100, 171 }, -- Asaad, Caliph of Zephyrs
		{ "A", 10001, 343, 35 },
		{ "1'", 10002, 348, 15 },
		{ "1'", 10002, 325, 38 },
		{ "1'", 10002, 372, 236 },
		{ "1'", 10002, 292, 438 },
		{ "2'", 10003, 416, 124 },
	},
	ThroneOfTheFourWinds = {
		{ 1, 154, 134, 250 }, -- The Conclave of Wind
		{ 1, 154, 249, 137 }, -- The Conclave of Wind
		{ 1, 154, 364, 251 }, -- The Conclave of Wind
		{ 2, 155, 248, 250 }, -- Al'Akir
		{ "A", 10001, 250, 363 },
	},
	ThroneOfTheTides = {
		{ 1, 101, 249, 45 }, -- Lady Naz'jar
		{ 2, 102, 248, 119 }, -- Commander Ulthok, the Festering Prince
		{ 3, 103, 339, 253 }, -- Mindbender Ghur'sha
		{ 4, 104, 158, 254 }, -- Ozumat
		{ "A", 10001, 252, 479 },
		{ "B", 10002, 253, 293 },
		{ "B", 10002, 249, 250 },
		{ "1'", 10003, 255, 155 },
		{ "1'", 10003, 242, 464 },
	},
	ZulAman = {
		{ 1, 186, 117, 145 }, -- Akil'zon
		{ 2, 187, 147, 364 }, -- Nalorakk
		{ 3, 188, 240, 343 }, -- Jan'alai
		{ 4, 189, 254, 143 }, -- Halazzi
		{ 5, 190, 328, 268 }, -- Hex Lord Malacrass
		{ 6, 191, 452, 268 }, -- Daakara
		{ "A", 10001, 37, 266 },
		{ "1'", 10002, 305, 205 },
		{ "2'", 10003, 180, 282 },
	},	
	ZulGurub = {
		{ 1, 10005, 164, 236 },
		{ 2, 10006, 255, 254 },
		{ 3, 10007, 251, 220 },
		{ 4, 10008, 305, 272 },
		{ 5, 175, 323, 293 }, -- High Priest Venoxis
		{ 6, 10009, 283, 290 },
		{ 7, 10010, 349, 333 },
		{ 8, 10011, 379, 397 },
		{ 9, 176, 414, 445 }, -- Bloodlord Mandokir
		{ 10, 10013, 371, 289 },
		{ 11, 10015, 350, 269 },
		{ 12, 10016, 402, 231 },
		{ 13, 10017, 429, 151 },
		{ 14, 10018, 289, 104 },
		{ 15, 181, 288, 72 }, -- High Priestess Kilnara
		{ 16, 184, 141, 103 }, -- Zanzil
		{ 17, 185, 306, 194 }, -- Jin'do the Godbreaker
		{ "A", 10001, 125, 245 },
		{ "1'", 10002, 114, 258 },
		{ "2'", 10003, 138, 254 },
		{ "3'", 10004, 137, 234 },
		{ "4'", 10012, 387, 432 },
		{ "5'", 10014, 383, 268 },
		{ "6'", 10019, 200, 115 },
	},
}

--[[
	AssocDefaults{}

	Default map to be auto-selected when no SubZone data is available.

	For example, "Dire Maul" has a subzone called "Warpwood Quarter" located in East Dirl Maul, however, there are also 
	some areas which have not been named with any subzone, and we would like to pick a proper default map in this condition.

	Define this table entries only when the instance has multiple maps.

	Table index is zone name, it need to be localized value, but we will handle the localization with BabbleSubZone library.
	The table value is map's key-name.
]]
db.AssocDefaults = {
	[BZ["Blackrock Mountain"]] =		"BlackrockMountainEnt",
	[BZ["Dragon Soul"]] =			"CoTDragonSoulA",
	[BZ["The Deadmines"]] = 		"TheDeadminesA",
	[BZ["Throne of Tides"]] = 		"ThroneOfTheTides",
}

--[[
	SubZoneData{}

	Define SubZone data for default map to be selected for instance which has multiple maps.
	Subzone data should be able to be pulled out from WMOAreaTable for indoor areas, or from AreaTable for outdoor areas.

	Array Syntax: 
	["localized zone name"] = {
		["atlas map name"] = {
			["localized subzone name 1"],
			["localized subzone name 2"],
		},
	},
]]
db.SubZoneData = {
	-- Dragon Soul
	[BZ["Dragon Soul"]] = {
		-- Dragon Soul A
		["CoTDragonSoulA"] = {
			BZ["Path of the Titans"],
			BZ["The Dragon Wastes"],
			BZ["Wyrmrest Temple"],
			BZ["Wyrmrest Summit"],
		},
		-- Dragon Soul B
		["CoTDragonSoulB"] = {
			BZ["Maw of Go'rath"],
			BZ["Maw of Shu'ma"],
			BZ["Eye of Eternity"],
		},
		-- Dragon Soul C
		["CoTDragonSoulC"] = {
			BZ["Above the Frozen Sea"],
			BZ["The Skyfire"],
			BZ["Deathwing"],
			BZ["The Maelstrom"],
		},
	},
	-- The Deadmines
	[BZ["The Deadmines"]] = {
		["TheDeadminesA"] = {
			BZ["Goblin Foundry"],
			BZ["Mast Room"],
		},
		["TheDeadminesB"] = {
			BZ["Ironclad Cove"],
		},
	},
}

--[[
	OutdoorZoneToAtlas{}

	Maps to auto-select to from outdoor zones.

	Table index is sub-zone name, it need to be localized value, but we will handle
	the localization with BabbleSubZone library.
	The table value is map's key-name.

	Duplicates are commented out.
	Not for localization.
]]
db.OutdoorZoneToAtlas = {
	[BZ["Burning Steppes"]] = 		"BlackrockMountainEnt",	-- Classic WoW, Catalysm, Draenor
	[BZ["Searing Gorge"]] = 		"BlackrockMountainEnt",	-- Classic WoW, Catalysm, Draenor
	[BZ["Tanaris"]] = 			"CavernsOfTimeEnt",	-- Burning Crusade, WoLTK, Catalysm
	[BZ["Tol Barad"]] = 			"BaradinHold",
	[BZ["The Dragon Wastes"]] = 		"CoTDragonSoulA",
	[BZ["Mount Hyjal"]] = 			"Firelands",
	--[BZ["Silverpine Forest"]] = 		"ShadowfangKeep",
	[BZ["Twilight Highlands"]] = 		"TheBastionOfTwilight",
	[BZ["Abyssal Depths"]] = 		"ThroneOfTheTides",
	[BZ["Abyssal Breach"]] = 		"ThroneOfTheTides",
	[BZ["Uldum"]] = 			"ThroneOfTheFourWinds",
	[BZ["Deepholm"]] = 			"TheStonecore",
	[BZ["Ghostlands"]] = 			"ZulAman",
	[BZ["Northern Stranglethorn"]] = 	"ZulGurub",
}

-- Entrance maps to instance maps
db.EntToInstMatches = {
	["BlackrockMountainEnt"] =		{"BlackrockCaverns","BlackwingDescent"},
	["CavernsOfTimeEnt"] =			{"CoTDragonSoulA","CoTDragonSoulB","CoTDragonSoulC","CoTEndTime","CoTHourOfTwilight","CoTWellOfEternity"},
	--["TheDeadminesEnt"] =			{"TheDeadminesA", "TheDeadminesB"},
}

-- Instance maps to entrance maps
db.InstToEntMatches = {
	["BlackrockCaverns"] =			{"BlackrockMountainEnt"},
	["BlackwingDescent"] =			{"BlackrockMountainEnt"},
	["CoTDragonSoulA"] =			{"CavernsOfTimeEnt"},
	["CoTDragonSoulB"] =			{"CavernsOfTimeEnt"},
	["CoTDragonSoulC"] =			{"CavernsOfTimeEnt"},
	["CoTEndTime"] =			{"CavernsOfTimeEnt"},
	["CoTHourOfTwilight"] =			{"CavernsOfTimeEnt"},
	["CoTWellOfEternity"] =			{"CavernsOfTimeEnt"},
	--["TheDeadminesA"] =			{"TheDeadminesEnt"},
	--["TheDeadminesB"] =			{"TheDeadminesEnt"},
}

-- Defines the instance which have multiple maps
-- Added only when the Entrance map is not available, for example, Ulduar do have entrance map, so no need to add it here
db.MapSeries = {
	["CoTDragonSoulA"] = { "CoTDragonSoulA", "CoTDragonSoulB", "CoTDragonSoulC" },
	["CoTDragonSoulB"] = { "CoTDragonSoulA", "CoTDragonSoulB", "CoTDragonSoulC" },
	["CoTDragonSoulC"] = { "CoTDragonSoulA", "CoTDragonSoulB", "CoTDragonSoulC" },
}

-- Links maps together that are part of the same instance
db.SubZoneAssoc = {
	["CoTDragonSoulA"] =			BZ["Dragon Soul"],
	["CoTDragonSoulB"] =			BZ["Dragon Soul"],
	["CoTDragonSoulC"] =			BZ["Dragon Soul"],
	--["TheDeadminesA"] = 			BZ["The Deadmines"],
	--["TheDeadminesB"] = 			BZ["The Deadmines"],
}

db.DropDownLayouts_Order = {
	[ATLAS_DDL_CONTINENT] = {
		ATLAS_DDL_CONTINENT_EASTERN,
		ATLAS_DDL_CONTINENT_KALIMDOR,
		ATLAS_DDL_CONTINENT_DEEPHOLM,
	},
	[ATLAS_DDL_LEVEL] = {
		ATLAS_DDL_LEVEL_30TO35,
	},
	[ATLAS_DDL_EXPANSION] = {
		ATLAS_DDL_EXPANSION_CATA,
	},
}

db.DropDownLayouts = {
	[ATLAS_DDL_CONTINENT] = {
		[ATLAS_DDL_CONTINENT_EASTERN] = {
			"BlackrockMountainEnt",		-- Classic WoW, Catalysm, Draenor
			--"TheDeadminesA",		-- Classic WoW, Catalysm
			--"TheDeadminesB",		-- Classic WoW, Catalysm
			--"TheDeadminesEnt",		-- Classic WoW, Catalysm
			"BaradinHold",			-- Catalysm
			"BlackrockCaverns",		-- Catalysm
			"BlackwingDescent",		-- Catalysm
			"GrimBatol",			-- Catalysm
			--"ShadowfangKeep",		-- Classic WoW, Catalysm
			"TheBastionOfTwilight",		-- Catalysm
			"ThroneOfTheTides",		-- Catalysm
			"ZulAman",			-- Catalysm
			"ZulGurub",			-- Catalysm
		},
		[ATLAS_DDL_CONTINENT_KALIMDOR] = {
			"CavernsOfTimeEnt",		-- Catalysm, Burning Crusade
			"CoTDragonSoulA",		-- Catalysm
			"CoTDragonSoulB",		-- Catalysm
			"CoTDragonSoulC",		-- Catalysm
			"CoTEndTime",			-- Catalysm
			"CoTHourOfTwilight",		-- Catalysm
			"CoTWellOfEternity",		-- Catalysm
			"Firelands",			-- Catalysm
			"HallsOfOrigination",		-- Catalysm
			"LostCityOfTolvir",		-- Catalysm
			"TheVortexPinnacle",		-- Catalysm
			"ThroneOfTheFourWinds",		-- Catalysm
		},
		[ATLAS_DDL_CONTINENT_DEEPHOLM] = {
			"TheStonecore",
		},
	},
	[ATLAS_DDL_EXPANSION] = {
		[ATLAS_DDL_EXPANSION_CATA] = {
			"BaradinHold",
			"BlackrockCaverns",
			"BlackrockMountainEnt",
			"BlackwingDescent",
			"CavernsOfTimeEnt",
			"CoTDragonSoulA",
			"CoTDragonSoulB",
			"CoTDragonSoulC",
			"CoTEndTime",
			"CoTHourOfTwilight",
			"CoTWellOfEternity",
			"Firelands",
			"GrimBatol",
			"HallsOfOrigination",
			"LostCityOfTolvir",
			--"ShadowfangKeep",
			"TheBastionOfTwilight",
			--"TheDeadminesA",		-- Classic WoW, Catalysm
			--"TheDeadminesB",		-- Classic WoW, Catalysm
			--"TheDeadminesEnt",
			"TheStonecore",
			"TheVortexPinnacle",
			"ThroneOfTheFourWinds",
			"ThroneOfTheTides",
			"ZulAman",
			"ZulGurub",
		},
	},
	[ATLAS_DDL_LEVEL] = {
		[ATLAS_DDL_LEVEL_30TO35] = {
			"BlackrockMountainEnt",		-- Catalysm
			"BlackrockCaverns",		-- Catalysm
			"GrimBatol",			-- Catalysm
			"HallsOfOrigination",		-- Catalysm
			"LostCityOfTolvir",		-- Catalysm
			"TheStonecore",			-- Catalysm
			"TheVortexPinnacle",		-- Catalysm
			"ThroneOfTheTides",		-- Catalysm
			"BaradinHold",			-- Catalysm
			"BlackrockMountainEnt",		-- Catalysm
			"BlackwingDescent",		-- Catalysm
			"CavernsOfTimeEnt",		-- Catalysm
			"CoTDragonSoulA",		-- Catalysm
			"CoTDragonSoulB",		-- Catalysm
			"CoTDragonSoulC",		-- Catalysm
			"CoTEndTime",			-- Catalysm
			"CoTHourOfTwilight",		-- Catalysm
			"CoTWellOfEternity",		-- Catalysm
			"Firelands",			-- Catalysm
			"TheBastionOfTwilight",		-- Catalysm
			"ThroneOfTheFourWinds",		-- Catalysm
			--"ShadowfangKeep",		-- Catalysm
			--"TheDeadminesA",		-- Catalysm
			--"TheDeadminesB",		-- Catalysm
			--"TheDeadminesEnt",		-- Catalysm
			"ZulAman",			-- Catalysm
			"ZulGurub",			-- Catalysm
		},
	},
	[ATLAS_DDL_PARTYSIZE] = {
		[ATLAS_DDL_PARTYSIZE_5] = {
			"BlackrockMountainEnt",		-- Catalysm
			"BlackrockCaverns",		-- Catalysm
			"CavernsOfTimeEnt",		-- Catalysm
			"CoTEndTime",			-- Catalysm
			"CoTHourOfTwilight",		-- Catalysm
			"CoTWellOfEternity",		-- Catalysm
			--"TheDeadminesA",		-- Catalysm
			--"TheDeadminesB",		-- Catalysm
			--"TheDeadminesEnt",		-- Catalysm
			"GrimBatol",			-- Catalysm
			"HallsOfOrigination",		-- Catalysm
			"LostCityOfTolvir",		-- Catalysm
			--"ShadowfangKeep",		-- Catalysm
			"TheStonecore",			-- Catalysm
			"ThroneOfTheTides",		-- Catalysm
			"TheVortexPinnacle",		-- Catalysm
			"ZulAman",			-- Catalysm
			"ZulGurub",			-- Catalysm
		},
		[ATLAS_DDL_PARTYSIZE_10] = {
			"BaradinHold",			-- Catalysm
			"TheBastionOfTwilight",		-- Catalysm
			"BlackrockMountainEnt",		-- Catalysm
			"BlackwingDescent",		-- Catalysm
			"CavernsOfTimeEnt",		-- Catalysm
			"CoTDragonSoulA",		-- Catalysm
			"CoTDragonSoulB",		-- Catalysm
			"CoTDragonSoulC",		-- Catalysm
			"Firelands",			-- Catalysm
			"ThroneOfTheFourWinds",		-- Catalysm
		},
		[ATLAS_DDL_PARTYSIZE_20TO40] = {
			"BaradinHold",			-- Catalysm
			"TheBastionOfTwilight",		-- Catalysm
			"BlackrockMountainEnt",		-- Catalysm
			"BlackwingDescent",		-- Catalysm
			"CavernsOfTimeEnt",		-- Catalysm
			"CoTDragonSoulA",		-- Catalysm
			"CoTDragonSoulB",		-- Catalysm
			"CoTDragonSoulC",		-- Catalysm
			"Firelands",			-- Catalysm
			"ThroneOfTheFourWinds",		-- Catalysm
		},
	},
	[ATLAS_DDL_TYPE] = {
		[ATLAS_DDL_TYPE_INSTANCE] = {
			"BaradinHold",			-- Catalysm
			"BlackrockCaverns",		-- Catalysm
			"BlackwingDescent",		-- Catalysm
			"TheBastionOfTwilight",		-- Catalysm
			"CoTDragonSoulA",		-- Catalysm
			"CoTDragonSoulB",		-- Catalysm
			"CoTDragonSoulC",		-- Catalysm
			"CoTEndTime",			-- Catalysm
			"CoTHourOfTwilight",		-- Catalysm
			"CoTWellOfEternity",		-- Catalysm
			--"TheDeadminesA",		-- Catalysm
			--"TheDeadminesB",		-- Catalysm
			"Firelands",			-- Catalysm
			"GrimBatol",			-- Catalysm
			"HallsOfOrigination",		-- Catalysm
			"LostCityOfTolvir",		-- Catalysm
			--"ShadowfangKeep",		-- Catalysm
			"TheStonecore",			-- Catalysm
			"TheVortexPinnacle",		-- Catalysm
			"ThroneOfTheFourWinds",		-- Catalysm
			"ThroneOfTheTides",		-- Catalysm
			"ZulAman",			-- Catalysm
			"ZulGurub",			-- Catalysm
		},
		[ATLAS_DDL_TYPE_ENTRANCE] = {
			"CavernsOfTimeEnt",		-- Catalysm
			"BlackrockMountainEnt",		-- Catalysm
			--"TheDeadminesEnt",		-- Catalysm
		},
	},
}
