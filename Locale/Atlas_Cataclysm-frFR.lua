-- $Id$
--[[

	Atlas, a World of Warcraft instance map browser
	Copyright 2005 ~ 2010 - Dan Gilbert <dan.b.gilbert@gmail.com>
	Copyright 2010 - Lothaer <lothayer@gmail.com>, Atlas Team
	Copyright 2011 ~ 2022 - Arith Hsu, Atlas Team <atlas.addon at gmail dot com>

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
local L = AceLocale:NewLocale("Atlas_Cataclysm", "frFR", false);

if L then
--@localization(locale="frFR", format="lua_additive_table")@
--@do-not-package@
--************************************************
-- Zone Names, Acronyms, and Common Strings
--************************************************
	--Cataclysm Acronyms
	L["BH"] = "BH"; --Baradin Hold
	L["BoT"] = "BoT"; --Bastion of Twilight
	L["BRC"] = "BRC"; --Blackrock Caverns
	L["BWD"] = "BWD"; --Blackwing Descent
	L["CoT-DS"] = "CoT-DS"; --Caverns of Time: Dragon Soul
	L["CoT-ET"] = "CoT-ET"; --Caverns of Time: End Time
	L["CoT-HoT"] = "CoT-HoT"; --Caverns of Time: Hour of Twilight
	L["CoT-WoE"] = "CoT-WoE"; --Caverns of Time: Well of Eternity
	L["FL"] = "FL"; --Firelands
	L["GB"] = "GB"; --Grim Batol
	L["HoO"] = "HoO"; --Halls of Origination
	L["LCoT"] = "LCoT"; --Lost City of the Tol'vir 
	L["SFK"] = "SFK"; -- Shadowfang Keep, Donjon d'Ombrecroc
	L["TSC"] = "TSC"; --The Stonecore
	L["TWT"] = "TWT"; --Throne of the Four Winds
	L["ToTT"] = "ToTT"; --Throne of the Tides
	L["VC"] = "VC"; -- The Deadmines, Les Mortemines
	L["VP"] = "VP"; --The Vortex Pinnacle
	L["ZA"] = "ZA"; -- Zul'Aman
	L["ZG"] = "ZG"; --Zul'Gurub
--*********************
-- Cataclysm Instances
--*********************

	--Baradin Hold

	--Blackrock Caverns

	--Blackwing Descent

	--Caverns of Time: Dragon Soul
	L["Dasnurimi <Geologist & Conservator>"] = "Dasnurimi <Géologue et conservatrice>";
	L["Lord Afrasastrasz"] = "Seigneur Afrasastrasz";

	--Caverns of Time: End Time
	L["Alurmi"] = "Alurmi";
	L["Nozdormu"] = "Nozdormu";
	L["Chromie"] = "Chromie";

	--Caverns of Time: Hour of Twilight
	L["Thrall"] = "Thrall";

	--Caverns of Time: Well of Eternity

	--Firelands
	L["Lurah Wrathvine <Crystallized Firestone Collector>"] = "Lurah Irevigne <Collectionneuse de pierres de feu cristallisées>";
	L["Naresir Stormfury <Avengers of Hyjal Quartermaster>"] = "Naresir Furie-des-Tempêtes <Intendant des Vengeurs d’Hyjal>";

	--Grim Batol
	L["Baleflame"] = "Flammosphère";
	L["Farseer Tooranu <The Earthen Ring>"] = "Long-voyant Tooranu <Cercle terrestre>";
	L["Velastrasza"] = "Velastrasza";

	--Halls of Origination
	L["Large Stone Obelisk"] = "Grand obélisque en pierre";
	L["Brann Bronzebeard"] = "Brann Barbe-de-bronze";

	--Lost City of the Tol'vir
	L["Captain Hadan"] = "Capitaine Hadan";
	L["Tol'vir Grave"] = "Tombe tol'vir";

	--Shadowfang Keep
	L["Apothecary Trio"] = "Trio d'apothicaires";
	L["Apothecary Hummel <Crown Chemical Co.>"] = "Apothicaire Hummel <Cie de Chimie La Royale>";
	L["Apothecary Baxter <Crown Chemical Co.>"] = "Apothicaire Baxter <Cie de Chimie La Royale>";
	L["Apothecary Frye <Crown Chemical Co.>"] = "Apothicaire Frye <Cie de Chimie La Royale>";
	L["Packleader Ivar Bloodfang"] = "Chef de meute Ivar Croc-de-sang";
	L["Deathstalker Commander Belmont"] = "Commandant nécrotraqueur Belmont";
	L["Haunted Stable Hand"] = "Palefrenier hanté";
	L["Investigator Fezzen Brasstacks"] = " Enquêteur Fezzen Desfaits";

	--The Bastion of Twilight

	--The Deadmines
	L["Lieutenant Horatio Laine"] = "Lieutenant Horatio Laine";
	L["Kagtha"] = "Kagtha";
	L["Slinky Sharpshiv"] = "Fugace Coutelard";
	L["Quartermaster Lewis <Quartermaster>"] = "Intendant Lewis <Intendant>";
	L["Miss Mayhem"] = "Mademoiselle Chambard";
	L["Vend-O-Tron D-Luxe"] = "Vend-O-Tron D-Luxe";

	--The Stonecore
	L["Earthwarden Yrsa <The Earthen Ring>"] = "Garde-terre Yrsa <Le Cercle terrestre>";

	--The Vortex Pinnacle
	L["Itesh"] = "Itesh";
	L["Magical Brazier"] = "Brasero magique";

	--Throne of the Four Winds

	--Throne of the Tides
	L["Captain Taylor"] = "Capitaine Taylor";
	L["Legionnaire Nazgrim"] = "Légionnaire Nazgrim";
	L["Neptulon"] = "Neptulon";

	--Zul'Aman
	L["Vol'jin"] = "Vol'jin";
	L["Witch Doctor T'wansi"] = "Féticheur T'wansi";
	L["Blood Guard Hakkuz <Darkspear Elite>"] = "Garde de sang Hakkuz <Soldat d'élite sombrelance>";
	L["Voodoo Pile"] = "Pile vaudou";
	L["Bakkalzu"] = "Bakkalzu";
	L["Hazlek"] = "Hazlek";
	L["The Map of Zul'Aman"] = "La carte de Zul'Aman";
	L["Norkani"] = "Norkani";
	L["Kasha"] = "Kasha";
	L["Thurg"] = "Thurg";
	L["Gazakroth"] = "Gazakroth";
	L["Lord Raadan"] = "Seigneur Raadan";
	L["Darkheart"] = "Sombrecoeur";
	L["Alyson Antille"] = "Alyson Antille";
	L["Slither"] = "Sinueux";
	L["Fenstalker"] = "Traquetourbe";
	L["Koragg"] = "Koragg";
	L["Zungam"] = "Zungam";
	L["Forest Frogs"] = "Grenouilles forestière";
	L["Eulinda <Reagents>"] = "Eulinda <Composants>";
	L["Harald <Food Vendor>"] = "Harald <Vendeur de nourriture>";
	L["Arinoth"] = "Arinoth";
	L["Kaldrick"] = "Kaldrick";
	L["Lenzo"] = "Lenzo";
	L["Mawago"] = "Mawago";
	L["Melasong"] = "Mélachant";
	L["Melissa"] = "Mélissa";
	L["Micah"] = "Micah";
	L["Relissa"] = "Relissa";
	L["Rosa"] = "Rosa";
	L["Tyllan"] = "Tyllan";

	--Zul'Gurub
	L["Briney Boltcutter <Blackwater Financial Interests>"] = "Briney Coupécrou <Intérêts financiers de Baille-Fonds>";
	L["Vehini <Assault Provisions>"] = "Vehini <Provisions d’assaut>";
	L["Overseer Blingbang"] = "Surveillant Blingbang";
	L["Bloodslayer T'ara <Darkspear Veteran>"] = "Occiseuse T’ara <Vétéran sombrelance>";
	L["Bloodslayer Vaena <Darkspear Veteran>"] = "Occiseuse Vaena <Vétéran sombrelance>";
	L["Bloodslayer Zala <Darkspear Veteran>"] = "Occiseuse Zala <Vétéran sombrelance>";
	L["Helpful Jungle Monkey"] = "Singe de la jungle serviable";
	L["Venomancer Mauri <The Snake's Whisper>"] = "Venimancienne Mauri <Le murmure du serpent>";
	L["Zanzil's Cauldron of Toxic Torment"] = "Chaudron de tourment toxique de Zanzil";
	L["Tiki Lord Mu'Loa"] = "Seigneur-tiki Mu'Loa";
	L["Gub <Destroyer of Fish>"] = "Gub <Destructeur de poissons>";
	L["Venomancer T'Kulu <The Toxic Bite>"] = "Venimancien T'Kulu <La morsure toxique>";
	L["Tor-Tun <The Slumberer>"] = "Tor-Tun <Le Dormeur>";
	L["Kaulema the Mover"] = "Kaulema le Déplaceur";
	L["Berserking Boulder Roller"] = "Lance-rocher berserker";
	L["Zanzil's Cauldron of Frostburn Formula"] = "Chaudron de formule de brûlure du givre de Zanzil";
	L["Mor'Lek the Dismantler"] = "Mor'Lek le Démanteleur";
	L["Witch Doctor Qu'in <Medicine Woman>"] = "Féticheuse Qu'in";
	L["Zanza the Restless"] = "Zanza le Sans-Repos";
	L["Mortaxx <The Tolling Bell>"] = "Mortaxx <La cloche du glas>";
	L["Tiki Lord Zim'wae"] = "Seigneur-tiki Zim'wae";
	L["Zanzil's Cauldron of Burning Blood"] = "Chaudron de sang ardent de Zanzil";
--@end-do-not-package@
end