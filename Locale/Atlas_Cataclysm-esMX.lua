-- $Id$
--[[

	Atlas, a World of Warcraft instance map browser
	Copyright 2005 ~ 2010 - Dan Gilbert <dan.b.gilbert@gmail.com>
	Copyright 2010 - Lothaer <lothayer@gmail.com>, Atlas Team
	Copyright 2011 ~ 2019 - Arith Hsu, Atlas Team <atlas.addon at gmail dot com>

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
local L = AceLocale:NewLocale("Atlas_Cataclysm", "esMX", false);

if L then
--@localization(locale="esMX", format="lua_additive_table")@
--@do-not-package@
--************************************************
-- Zone Names, Acronyms, and Common Strings
--************************************************
	--Cataclysm Acronyms
	L["BH"] = "BH"; --Baradin Hold
	L["BoT"] = "BoT"; --Bastion of Twilight
	L["BRC"] = "BRC"; --Blackrock Caverns
	L["BWD"] = "BWD"; --Blackwing Descent
	L["CoT-DS"] = "CdT-AD"; --Caverns of Time: Dragon Soul
	L["CoT-ET"] = "CdT-FD"; --Caverns of Time: End Time
	L["CoT-HoT"] = "CdT-HC"; --Caverns of Time: Hour of Twilight
	L["CoT-WoE"] = "CdT-PdT"; --Caverns of Time: Well of Eternity
	L["FL"] = "FL"; --Firelands
	L["GB"] = "GB"; --Grim Batol
	L["HoO"] = "HoO"; --Halls of Origination
	L["LCoT"] = "LCoT"; --Lost City of the Tol'vir 
	L["SFK"] = "SFK"; -- Shadowfang Keep
	L["TSC"] = "TSC"; --The Stonecore
	L["TWT"] = "TWT"; --Throne of the Four Winds
	L["ToTT"] = "ToTT"; --Throne of the Tides
	L["VC"] = "VC"; -- The Deadmines
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
	L["Dasnurimi <Geologist & Conservator>"] = "Dasnurimi <Geóloga y conservadora>";
	L["Lord Afrasastrasz"] = "Lord Afrasastrasz";

	--Caverns of Time: End Time
	L["Alurmi"] = "Alurmi";
	L["Nozdormu"] = "Nozdormu";
	L["Chromie"] = "Cromi";

	--Caverns of Time: Hour of Twilight
	L["Thrall"] = "Thrall";

	--Caverns of Time: Well of Eternity

	--Firelands
	L["Lurah Wrathvine <Crystallized Firestone Collector>"] = "Lurah Vid de la Ira <Coleccionista de piedras de fuego cristalizadas>"; -- 54402
	L["Naresir Stormfury <Avengers of Hyjal Quartermaster>"] = "Naresir Furiatormenta <Intendente de los Vengadores de Hyjal>"; -- 54401

	--Grim Batol
	L["Baleflame"] = "Fardollama";
	L["Farseer Tooranu <The Earthen Ring>"] = "Clarividente Tooranu <El Anillo de la Tierra>";
	L["Velastrasza"] = "Velastrasza";

	--Halls of Origination
	L["Large Stone Obelisk"] = "Obelisco de piedra grande";
	L["Brann Bronzebeard"] = "Brann Barbabronce";

	--Lost City of the Tol'vir
	L["Captain Hadan"] = "Capitán Hadan";
	L["Tol'vir Grave"] = "Tumba de tol'vir";

	--Shadowfang Keep
	L["Apothecary Trio"] = "Trío de boticarios ";
	L["Apothecary Hummel <Crown Chemical Co.>"] = "Boticario Hummel <Químicos La Corona, S.L.> ";
	L["Apothecary Baxter <Crown Chemical Co.>"] = "Boticario Baxter <Químicos La Corona, S.L.>";
	L["Apothecary Frye <Crown Chemical Co.>"] = "Boticario Frye <Químicos La Corona, S.L.>";
	L["Packleader Ivar Bloodfang"] = "Maestro de manada Ivar Colmillo de Sangre";
	L["Deathstalker Commander Belmont"] = "Comandante Mortacechador Belmont";
	L["Haunted Stable Hand"] = "Mozo de cuadra encantado";
	L["Investigator Fezzen Brasstacks"] = "Investigator Fezzen Brasstacks"; --FALTA		

	--The Bastion of Twilight

	--The Deadmines
	L["Lieutenant Horatio Laine"] = "Teniente Horatio Laine";
	L["Kagtha"] = "Kagtha";
	L["Slinky Sharpshiv"] = "Finta Navajazos";
	L["Quartermaster Lewis <Quartermaster>"] = "Intendente Lewis <Intendente>";
	L["Miss Mayhem"] = "Miss Caos";
	L["Vend-O-Tron D-Luxe"] = "Vendo-trón Deluxe";

	--The Stonecore
	L["Earthwarden Yrsa <The Earthen Ring>"] = "Celadora de la tierra Yrsa <El Anillo de la Tierra>";

	--The Vortex Pinnacle
	L["Itesh"] = "Itesh";
	L["Magical Brazier"] = "Blandón mágico";

	--Throne of the Four Winds

	--Throne of the Tides
	L["Captain Taylor"] = "Capitán Taylor";
	L["Legionnaire Nazgrim"] = "Legionario Nazgrim";
	L["Neptulon"] = "Neptulon";

	--Zul'Aman
	L["Vol'jin"] = "Vol'jin";
	L["Witch Doctor T'wansi"] = "Médico brujo T'wansi";
	L["Blood Guard Hakkuz <Darkspear Elite>"] = "Guardia de sangre Hakkuz <Élite Lanza Negra>"; 
	L["Voodoo Pile"] = "Montón vudú";
	L["Bakkalzu"] = "Bakkalzu";
	L["Hazlek"] = "Hazlek";
	L["The Map of Zul'Aman"] = "Mapa de Zul'Aman de Budd";
	L["Norkani"] = "Norkani";
	L["Kasha"] = "Kasha";
	L["Thurg"] = "Thurg";
	L["Gazakroth"] = "Gazakroth";
	L["Lord Raadan"] = "Lord Raadan";
	L["Darkheart"] = "Corazón Oscuro";
	L["Alyson Antille"] = "Alyson Antille";
	L["Slither"] = "Slither";
	L["Fenstalker"] = "Fenstalker";
	L["Koragg"] = "Koragg";
	L["Zungam"] = "Zungam";
	L["Forest Frogs"] = "Ranas del bosque";
	L["Eulinda <Reagents>"] = "Eulinda <Componentes>";
	L["Harald <Food Vendor>"] = "Harald <Vendedor de alimentos>";
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
	L["Briney Boltcutter <Blackwater Financial Interests>"] = "Salobre Cortarrayos <Intereses financieros Aguasnegras>";
	L["Vehini <Assault Provisions>"] = "Vehini <Provisiones de ataque>";
	L["Overseer Blingbang"] = "Sobrestante Blingbang";
	L["Bloodslayer T'ara <Darkspear Veteran>"] = "Cercenacastas T'ara <Veterana Lanza Negra>";
	L["Bloodslayer Vaena <Darkspear Veteran>"] = "Cercenacastas Vaena <Veterana Lanza Negra>";
	L["Bloodslayer Zala <Darkspear Veteran>"] = "Cercenacastas Zala <Veterana Lanza Negra>";
	L["Helpful Jungle Monkey"] = "Mono de la selva servicial";
	L["Venomancer Mauri <The Snake's Whisper>"] = "Venomante Mauri <El susurro de la serpiente>";
	L["Zanzil's Cauldron of Toxic Torment"] = "Caldero de tormento tóxico de Zanzil";
	L["Tiki Lord Mu'Loa"] = "Señor Tiki Mu'Loa";
	L["Gub <Destroyer of Fish>"] = "Gub <Destructor de peces>";
	L["Venomancer T'Kulu <The Toxic Bite>"] = "Venomante T'Kulu <La mordedura tóxica>";
	L["Tor-Tun <The Slumberer>"] = "Tor-Tun <El dormilón>";
	L["Kaulema the Mover"] = "Kaulema el Influyente";
	L["Berserking Boulder Roller"] = "Rodador de piedra rabioso";
	L["Zanzil's Cauldron of Frostburn Formula"] = "Caldero de fórmula de abrasión de escarcha de Zanzil";
	L["Mor'Lek the Dismantler"] = "Mor'Lek el Destructor";
	L["Witch Doctor Qu'in <Medicine Woman>"] = "Médica bruja Qu'in <Médica bruja>";
	L["Zanza the Restless"] = "Zanza el Incansable";
	L["Mortaxx <The Tolling Bell>"] = "Mortaxx <La campana que dobla>";
	L["Tiki Lord Zim'wae"] = "Señor Tiki Zim'wae";
	L["Zanzil's Cauldron of Burning Blood"] = "Caldero de sangre ardiente de Zanzil";
--@end-do-not-package@
end