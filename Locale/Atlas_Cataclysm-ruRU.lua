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
local L = AceLocale:NewLocale("Atlas_Cataclysm", "ruRU", false);

if L then
--@localization(locale="ruRU", format="lua_additive_table")@
--@do-not-package@
--************************************************
-- Zone Names, Acronyms, and Common Strings
--************************************************
	--Cataclysm Acronyms
	L["BH"] = "КБ"; --Крепость Барадин
	L["BoT"] = "СБ"; --Сумеречный бастион
	L["BRC"] = "ПСГ"; --Пещеры Черной горы
	L["BWD"] = "ТКТ"; --Твердыня Крыла Тьмы
	L["CoT-DS"] = "ПВ-ДД"; --Caverns of Time: Dragon Soul
	L["CoT-ET"] = "ПВ-КВ"; --Caverns of Time: End Time
	L["CoT-HoT"] = "ПВ-ЧС"; --Caverns of Time: Hour of Twilight
	L["CoT-WoE"] = "ПВ-ИВ"; --Caverns of Time: Well of Eternity
	L["FL"] = "ОП"; --Firelands
	L["GB"] = "ГБ"; --Грим Батол
	L["HoO"] = "ЧТГС"; --Чертоги Созидания
	L["LCoT"] = "ЗГТВ"; --Затерянный город Тол'вир
	L["SFK"] = "КТК"; -- Крепость Темного Клыка
	L["TSC"] = "КН"; --Каменные Недра
	L["TWT"] = "ТЧВ"; --Трон Четырех Ветров
	L["ToTT"] = "ТП"; --Трон Приливов
	L["VC"] = "МК"; -- Мертвые копи
	L["VP"] = "ВС"; --Вершина смерча
	L["ZA"] = "ЗА"; -- Зул'Аман
	L["ZG"] = "ЗГ"; --Зул'Гуруб

--*********************
-- Cataclysm Instances
--*********************

	--Baradin Hold

	--Blackrock Caverns

	--Blackwing Descent

	--Caverns of Time: Dragon Soul
	L["Dasnurimi <Geologist & Conservator>"] = "Даснурими <Геолог>";
	L["Lord Afrasastrasz"] = "Лорд Афрасастраз";

	--Caverns of Time: End Time
	L["Alurmi"] = "Алурми";
	L["Nozdormu"] = "Ноздорму";
	L["Chromie"] = "Хроми";

	--Caverns of Time: Hour of Twilight
	L["Thrall"] = "Раб";

	--Caverns of Time: Well of Eternity

	--Firelands
	L["Lurah Wrathvine <Crystallized Firestone Collector>"] = "Лура Гневная Лоза <Собиратель кристаллизованного кремня>";
	L["Naresir Stormfury <Avengers of Hyjal Quartermaster>"] = "Наресир Штормовая Ярость <Интендант Хиджальских мстителей>";

	--Grim Batol
	L["Baleflame"] = "Пламегон";
	L["Farseer Tooranu <The Earthen Ring>"] = "Предсказатель Тоорану <Служители Земли>";
	L["Velastrasza"] = "Веластраза";

	--Halls of Origination
	L["Large Stone Obelisk"] = "Большой каменный обелиск";
	L["Brann Bronzebeard"] = "Бранн Бронзобород";

	--Lost City of the Tol'vir
	L["Captain Hadan"] = "Капитан Хадан";
	L["Tol'vir Grave"] = "Тол'вирская могила";

	--Shadowfang Keep
	L["Apothecary Trio"] = "Трио аптекарей"; --
	L["Apothecary Hummel <Crown Chemical Co.>"] = "Аптекарь Хаммел <Королевская химическая компания>";
	L["Apothecary Baxter <Crown Chemical Co.>"] = "Аптекарь Бакстер <Королевская химическая компания>";
	L["Apothecary Frye <Crown Chemical Co.>"] = "Аптекарь Фрай <Королевская химическая компания>";
	L["Packleader Ivar Bloodfang"] = "Вожак стаи Ивар Кровавый Клык";
	L["Deathstalker Commander Belmont"] = "Командир стражей смерти Бельмонт";
	L["Haunted Stable Hand"] = "Дух помощника смотрителя стойл";
	L["Investigator Fezzen Brasstacks"] = "Испытатель Феззен Клейстр";

	--The Bastion of Twilight

	--The Deadmines
	L["Lieutenant Horatio Laine"] = "Лейтенант Горацио Лейн";
	L["Kagtha"] = "Кагта";
	L["Slinky Sharpshiv"] = "Крадли Дротик";
	L["Quartermaster Lewis <Quartermaster>"] = "Интендант Льюис <Интендант>";
	L["Miss Mayhem"] = "Мисс Кавардак";
	L["Vend-O-Tron D-Luxe"] = "Торг-о-трон делюкс";

	--The Stonecore
	L["Earthwarden Yrsa <The Earthen Ring>"] = "Хранитель земли Изра <Служители Земли>";

	--The Vortex Pinnacle
	L["Itesh"] = "Итеш";
	L["Magical Brazier"] = "Магическая жаровня";

	--Throne of the Four Winds

	--Throne of the Tides
	L["Captain Taylor"] = "Капитан Тейлор";
	L["Legionnaire Nazgrim"] = "Легионер Назгрим";
	L["Neptulon"] = "Нептулон";

	--Zul'Aman
	L["Vol'jin"] = "Вол'джин";
	L["Witch Doctor T'wansi"] = "Знахарь Т'ванши";
	L["Blood Guard Hakkuz <Darkspear Elite>"] = "Кровавый страж Хаккуз <Элита племени Черного Копья>";
	L["Voodoo Pile"] = "Куча черепов вуду";
	L["Bakkalzu"] = "Баккальзу";
	L["Hazlek"] = "Хазлек";
	L["The Map of Zul'Aman"] = "Карта Зул'Амана";
	L["Norkani"] = "Норкани";
	L["Kasha"] = "Кайша";
	L["Thurg"] = "Тург";
	L["Gazakroth"] = "Газакрот";
	L["Lord Raadan"] = "Лорд Раадан";
	L["Darkheart"] = "Черносерд";
	L["Alyson Antille"] = "Алисон Антиль";
	L["Slither"] = "Скользь";
	L["Fenstalker"] = "Болотный ловец";
	L["Koragg"] = "Корагг";
	L["Zungam"] = "Зангам";
	L["Forest Frogs"] = "Лесная лягушка";
	L["Eulinda <Reagents>"] = "Эулинда <Реагенты>";
	L["Harald <Food Vendor>"] = "Гаральд <Продавец еды>";
	L["Arinoth"] = "Аринот";
	L["Kaldrick"] = "Кальдрик";
	L["Lenzo"] = "Ленцо";
	L["Mawago"] = "Маваго";
	L["Melasong"] = "Меласонг";
	L["Melissa"] = "Мелисса";
	L["Micah"] = "Мика";
	L["Relissa"] = "Релисса";
	L["Rosa"] = "Роза";
	L["Tyllan"] = "Тиллан";

	--Zul'Gurub
	L["Briney Boltcutter <Blackwater Financial Interests>"] = "Брини Болторез <Финансовый воротила пиратов Черноводья>";
	L["Vehini <Assault Provisions>"] = "Вехини <Поставщик провизии для армии>";
	L["Overseer Blingbang"] = "Инспектор Бадабум";
	L["Bloodslayer T'ara <Darkspear Veteran>"] = "Умертвительница Т'ара <Ветеран Черного Копья>";
	L["Bloodslayer Vaena <Darkspear Veteran>"] = "Умертвительница Ваэна <Ветеран Черного Копья>";
	L["Bloodslayer Zala <Darkspear Veteran>"] = "Умертвительница Залла <Ветеран Черного Копья>";
	L["Helpful Jungle Monkey"] = "Услужливая мартышка";
	L["Venomancer Mauri <The Snake's Whisper>"] = "Ядомант Маури <Змееязыкая>";
	L["Zanzil's Cauldron of Toxic Torment"] = "Котел Занзила с едкой щелочью";
	L["Tiki Lord Mu'Loa"] = "Вождь тики Му'Лоа";
	L["Gub <Destroyer of Fish>"] = "Габ <Гроза рыб>";
	L["Venomancer T'Kulu <The Toxic Bite>"] = "Ядомант Т'Кулу <Ядовитый укус>";
	L["Tor-Tun <The Slumberer>"] = "Тор-Тун <Спящий>";
	L["Kaulema the Mover"] = "Каулема Толкатель";
	L["Berserking Boulder Roller"] = "Яростный выворачиватель валунов";
	L["Zanzil's Cauldron of Frostburn Formula"] = "Котел Занзила с раствором обжигающего холода";
	L["Mor'Lek the Dismantler"] = "Мор'Лек Расчленитель";
	L["Witch Doctor Qu'in <Medicine Woman>"] = "Доктор Ку'ин <Тролль-знахарка>";
	L["Zanza the Restless"] = "Занза Неупокоенный";
	L["Mortaxx <The Tolling Bell>"] = "Мортакс <Предвестник смерти>";
	L["Tiki Lord Zim'wae"] = "Вождь тики Зим'вэ";
	L["Zanzil's Cauldron of Burning Blood"] = "Котел Занзила с пылающей кровью";
--@end-do-not-package@
end