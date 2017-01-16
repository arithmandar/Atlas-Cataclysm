-- $Id$
--[[

	Atlas, a World of Warcraft instance map browser
	Copyright 2005 ~ 2010 - Dan Gilbert <dan.b.gilbert@gmail.com>
	Copyright 2010 - Lothaer <lothayer@gmail.com>, Atlas Team
	Copyright 2011 ~ 2017 - Arith Hsu, Atlas Team <atlas.addon at gmail dot com>

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

local AceLocale = LibStub:GetLibrary("AceLocale-3.0");
local L = AceLocale:NewLocale("Atlas_Cataclysm", "deDE", false);

if L then
--@localization(locale="deDE", format="lua_additive_table")@
--@do-not-package@
--************************************************
-- Zone Names, Acronyms, and Common Strings
--************************************************
	--Cataclysm Acronyms
	L["BH"] = "BF"; --Baradin Hold
	L["BoT"] = "BdZ"; --Bastion of Twilight
	L["BRC"] = "BRH"; --Blackrock Caverns
	L["BWD"] = "BWD"; --Blackwing Descent
	L["CoT-DS"] = "HdZ-DS"; --Caverns of Time: Dragon Soul
	L["CoT-ET"] = "HdZ-EZ"; --Caverns of Time: End Time
	L["CoT-HoT"] = "HdZ-SdZ"; --Caverns of Time: Hour of Twilight
	L["CoT-WoE"] = "HdZ-BdE"; --Caverns of Time: Well of Eternity
	L["FL"] = "FL"; --Firelands
	L["GB"] = "GB"; --Grim Batol
	L["HoO"] = "HdU"; --Halls of Origination
	L["LCoT"] = "VSdT"; --Lost City of the Tol'vir
	L["SFK"] = "BSF"; -- Shadowfang Keep
	L["TSC"] = "DSK"; --The Stonecore
	L["TWT"] = "TdVW"; --Throne of the Four Winds
	L["ToTT"] = "TdG"; --Throne of the Tides
	L["VC"] = "DM"; -- The Deadmines
	L["VP"] = "VG"; --The Vortex Pinnacle
	L["ZA"] = "ZA"; -- Zul'Aman
	L["ZG"] = "ZG"; --Zul'Gurub

--*********************
-- Cataclysm Instances
--*********************

	--Baradin Hold

	--Blackrock Caverns

	--Blackwing Descent

	--Caverns of Time: Dragon Soul
	L["Dasnurimi <Geologist & Conservator>"] = "Dasnurimi <Geologin & Konservatorin>";
	L["Lord Afrasastrasz"] = "Lord Afrasastrasz";

	--Caverns of Time: End Time
	L["Alurmi"] = "Alurmi";
	L["Nozdormu"] = "Nozdormu";
	L["Chromie"] = "Chromie";

	--Caverns of Time: Hour of Twilight
	L["Thrall"] = "Thrall";

	--Caverns of Time: Well of Eternity

	--Firelands
	L["Lurah Wrathvine <Crystallized Firestone Collector>"] = "Lurah Zornranke <Sammlerin kristallisierten Feuersteins>";
	L["Naresir Stormfury <Avengers of Hyjal Quartermaster>"] = "Naresir Sturmwut <Rüstmeister der Rächer des Hyjal>";

	--Grim Batol
	L["Baleflame"] = "Unheilsflamme";
	L["Farseer Tooranu <The Earthen Ring>"] = "Scharfseher Tooranu <Der Irdene Ring>";
	L["Velastrasza"] = "Velastrasza";

	--Halls of Origination
	L["Large Stone Obelisk"] = "Große Steintafel";
	L["Brann Bronzebeard"] = "Brann Bronzebart";

	--Lost City of the Tol'vir
	L["Captain Hadan"] = "Kapitän Hadan";
	L["Tol'vir Grave"] = "Grab der Tol'vir";

	--Shadowfang Keep
	L["Apothecary Trio"] = "Apotheker-Trio";
	L["Apothecary Hummel <Crown Chemical Co.>"] = "Apotheker Hummel <Chemiemanufaktur Krone>";
	L["Apothecary Baxter <Crown Chemical Co.>"] = "Apotheker Baxter <Chemiemanufaktur Krone>";
	L["Apothecary Frye <Crown Chemical Co.>"] = "Apotheker Frye <Chemiemanufaktur Krone>";
	L["Packleader Ivar Bloodfang"] = "Rudelführer Ivar Blutfang";
	L["Deathstalker Commander Belmont"] = "Todespirscherkommandant Belmont";
	L["Haunted Stable Hand"] = "Geisterhafter Stallknecht";
	L["Investigator Fezzen Brasstacks"] = "Ermittler Fezzen Kupferstapel";

	--The Bastion of Twilight

	--The Deadmines
	L["Lieutenant Horatio Laine"] = "Leutnant Horatio Laine";
	L["Kagtha"] = "Kagtha";
	L["Slinky Sharpshiv"] = "Slinky Scharfklinge";
	L["Quartermaster Lewis <Quartermaster>"] = "Rüstmeister Lewis <Rüstmeister>";
	L["Miss Mayhem"] = "Fräulein Fiasko";
	L["Vend-O-Tron D-Luxe"] = "Kauf-o-Mat 1-A";

	--The Stonecore
	L["Earthwarden Yrsa <The Earthen Ring>"] = "Erdwächterin Yrsa <Der Irdene Ring>";

	--The Vortex Pinnacle
	L["Itesh"] = "Itesh";
	L["Magical Brazier"] = "Magische Kohlenpfanne";

	--Throne of the Four Winds

	--Throne of the Tides
	L["Captain Taylor"] = "Kapitän Taylor";
	L["Legionnaire Nazgrim"] = "Legionär Nazgrim";
	L["Neptulon"] = "Neptulon";

	--Zul'Aman
	L["Vol'jin"] = "Vol'jin";
	L["Witch Doctor T'wansi"] = "Hexendoktor T'wansi";
	L["Blood Guard Hakkuz <Darkspear Elite>"] = "Blutwache Hakkuz <Elite der Dunkelspeere>";
	L["Voodoo Pile"] = "Voodoohaufen";
	L["Bakkalzu"] = "Bakkalzu";
	L["Hazlek"] = "Hazlek";
	L["The Map of Zul'Aman"] = "Karte von Zul'Aman";
	L["Norkani"] = "Norkani";
	L["Kasha"] = "Kasha";
	L["Thurg"] = "Thurg";
	L["Gazakroth"] = "Gazakroth";
	L["Lord Raadan"] = "Lord Raadan";
	L["Darkheart"] = "Düsterherz";
	L["Alyson Antille"] = "Alyson Antille";
	L["Slither"] = "Glibber";
	L["Fenstalker"] = "Fennpirscher";
	L["Koragg"] = "Koragg";
	L["Zungam"] = "Zungam";
	L["Forest Frogs"] = "Urwaldfrösche";
	L["Eulinda <Reagents>"] = "Eulinda <Reagenzien>";
	L["Harald <Food Vendor>"] = "Harald <Lebensmittelhändler>";
	L["Arinoth"] = "Arinoth";
	L["Kaldrick"] = "Kaldrick";
	L["Lenzo"] = "Lenzo";
	L["Mawago"] = "Mawago";
	L["Melasong"] = "Melasong";
	L["Melissa"] = "Melissa";
	L["Micah"] = "Micah";
	L["Relissa"] = "Relissa";
	L["Rosa"] = "Rosa";
	L["Tyllan"] = "Tyllan";

	--Zul'Gurub
	L["Briney Boltcutter <Blackwater Financial Interests>"] = "Briney Schraubschneider <Schwarzmeer Kapitalbeteiligungen>";
	L["Vehini <Assault Provisions>"] = "Vehini <Angriffsvorräte>";
	L["Overseer Blingbang"] = "Aufseher Klunkerknall";
	L["Bloodslayer T'ara <Darkspear Veteran>"] = "Blutschlächterin T'ara <Dunkelspeerveteranin>";
	L["Bloodslayer Vaena <Darkspear Veteran>"] = "Blutschlächterin Vaena <Dunkelspeerveteranin>";
	L["Bloodslayer Zala <Darkspear Veteran>"] = "Blutschlächterin Zala <Dunkelspeerveteranin>";
	L["Helpful Jungle Monkey"] = "Hilfreicher Dschungelaffe";
	L["Venomancer Mauri <The Snake's Whisper>"] = "Giftmischerin Mauri <Das Flüstern der Schlange>";
	L["Zanzil's Cauldron of Toxic Torment"] = "Zanzils Kessel der giftigen Grausamkeit";
	L["Tiki Lord Mu'Loa"] = "Tikilord Mu'Loa";
	L["Gub <Destroyer of Fish>"] = "Gub <Fischvernichter>";
	L["Venomancer T'Kulu <The Toxic Bite>"] = "Giftmischer T'Kulu <Der Toxische Biss>";
	L["Tor-Tun <The Slumberer>"] = "Tor-Tun <Der Schläfer>";
	L["Kaulema the Mover"] = "Kaulema der Beweger";
	L["Berserking Boulder Roller"] = "Wütender Felsroller";
	L["Zanzil's Cauldron of Frostburn Formula"] = "Zanzils Kessel des frierenden Fleisches";
	L["Mor'Lek the Dismantler"] = "Mor'Lek der Zerleger";
	L["Witch Doctor Qu'in <Medicine Woman>"] = "Hexendoktor Qu'in <Medizinfrau>";
	L["Zanza the Restless"] = "Zanza der Ruhelose";
	L["Mortaxx <The Tolling Bell>"] = "Mortaxx <Das Schlagen der Stunde>";
	L["Tiki Lord Zim'wae"] = "Tikilord Zim'wae";
	L["Zanzil's Cauldron of Burning Blood"] = "Zanzils Kessel des brennenden Blutes";
--@end-do-not-package@
end