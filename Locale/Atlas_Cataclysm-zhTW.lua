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
local L = AceLocale:NewLocale("Atlas_Cataclysm", "zhTW", false);

if L then
--@localization(locale="zhTW", format="lua_additive_table")@
--@do-not-package@
--************************************************
-- Zone Names, Acronyms, and Common Strings
--************************************************
	--Cataclysm Acronyms
	L["BH"] = "BH"; --Baradin Hold 巴拉丁堡
	L["BoT"] = "BoT"; --Bastion of Twilight 暮光堡壘
	L["BRC"] = "BRC"; --Blackrock Caverns 黑石洞穴
	L["BWD"] = "BWD"; --Blackwing Descent 黑翼陷窟
	L["CoT-DS"] = "CoT-DS"; --Caverns of Time: Dragon Soul
	L["CoT-ET"] = "CoT-ET"; --Caverns of Time: End Time
	L["CoT-HoT"] = "CoT-HoT"; --Caverns of Time: Hour of Twilight
	L["CoT-WoE"] = "CoT-WoE"; --Caverns of Time: Well of Eternity
	L["FL"] = "FL"; --Firelands 火源之界
	L["GB"] = "GB"; --Grim Batol 格瑞姆巴托
	L["HoO"] = "HoO"; --Halls of Origination 起源大廳
	L["LCoT"] = "LCoT"; --Lost City of the Tol'vir 托維爾的失落之城
	L["SFK"] = "SFK/影牙"; -- Shadowfang Keep 影牙城堡
	L["TSC"] = "TSC"; --The Stonecore 石岩之心
	L["TWT"] = "TWT"; --Throne of the Four Winds 四風王座
	L["ToTT"] = "ToTT"; --Throne of the Tides 海潮王座
	L["VC"] = "VC/死礦"; -- The Deadmines 死亡礦坑
	L["VP"] = "VP"; --The Vortex Pinnacle 漩渦尖塔
	L["ZA"] = "ZA"; -- Zul'Aman 祖阿曼
	L["ZG"] = "ZG"; --Zul'Gurub 祖爾格拉布

--*********************
-- Cataclysm Instances
--*********************

	--Baradin Hold

	--Blackrock Caverns
	L["Finkle Einhorn"] = "芬克·恩霍爾"

	--Blackwing Descent

	--Caverns of Time: Dragon Soul
	L["Dasnurimi <Geologist & Conservator>"] = "達斯魯黎米 <地理學家與護存者>";
	L["Lord Afrasastrasz"] = "艾弗薩斯塔茲領主";

	--Caverns of Time: End Time
	L["Alurmi"] = "阿勒米";
	L["Nozdormu"] = "諾茲多姆";
	L["Chromie"] = "克羅米";

	--Caverns of Time: Hour of Twilight
	L["Thrall"] = "索爾";

	--Caverns of Time: Well of Eternity

	--Firelands
	L["Lurah Wrathvine <Crystallized Firestone Collector>"] = "盧拉·怒藤 <晶化火石收集者>";
	L["Naresir Stormfury <Avengers of Hyjal Quartermaster>"] = "那瑞希爾·風暴之怒 <海加爾復仇者軍需官>";

	--Grim Batol
	L["Baleflame"] = "罪火";
	L["Farseer Tooranu <The Earthen Ring>"] = "先知圖拉奴 <陶土議會>";
	L["Velastrasza"] = "維菈史卓莎";

	--Halls of Origination
	L["Large Stone Obelisk"] = "大型石板";
	L["Brann Bronzebeard"] = "布萊恩·銅鬚";

	--Lost City of the Tol'vir
	L["Captain Hadan"] = "哈丹隊長";
	L["Tol'vir Grave"] = "托維爾墓地";

	--Shadowfang Keep 影牙城堡
	L["Apothecary Trio"] = "藥劑師三人組";
	L["Apothecary Hummel <Crown Chemical Co.>"] = "藥劑師胡默爾 <王冠化學製藥公司>";
	L["Apothecary Baxter <Crown Chemical Co.>"] = "藥劑師巴克斯特 <王冠化學製藥公司>";
	L["Apothecary Frye <Crown Chemical Co.>"] = "藥劑師弗萊伊 <王冠化學製藥公司>";
	L["Packleader Ivar Bloodfang"] = "狼群首領伊瓦·血牙";
	L["Deathstalker Commander Belmont"] = "亡靈哨兵指揮官貝爾蒙特";
	L["Haunted Stable Hand"] = "鬼怪獸欄僕人";
	L["Investigator Fezzen Brasstacks"] = "調查員菲贊·銅釘";

	--The Bastion of Twilight

	--The Deadmines
	L["Lieutenant Horatio Laine"] = "何瑞修·萊恩中尉";
	L["Kagtha"] = "卡格薩";
	L["Slinky Sharpshiv"] = "史琳琪·利刀";
	L["Quartermaster Lewis <Quartermaster>"] = "軍需官路易斯 <軍需官>";
	L["Miss Mayhem"] = "暴行小姐";
	L["Vend-O-Tron D-Luxe"] = "高級自動販賣機";
	L["Goblin Teleporter"] = "哥布林傳送器";

	--The Stonecore
	L["Earthwarden Yrsa <The Earthen Ring>"] = "大地守望者伊爾薩 <陶土議會>";

	--The Vortex Pinnacle
	L["Itesh"] = "伊塔許";
	L["Magical Brazier"] = "魔法火盆";

	--Throne of the Four Winds

	--Throne of the Tides
	L["Captain Taylor"] = "泰勒隊長";
	L["Legionnaire Nazgrim"] = "軍團士兵納茲格寧姆";
	L["Neptulon"] = "奈普圖隆";

	--Zul'Aman
	L["Vol'jin"] = "沃金";
	L["Witch Doctor T'wansi"] = "巫醫塔灣西";
	L["Blood Guard Hakkuz <Darkspear Elite>"] = "血衛士哈庫茲 <暗矛精英>";
	L["Voodoo Pile"] = "巫毒堆";
	L["Bakkalzu"] = "巴卡祖";
	L["Hazlek"] = "哈茲雷克";
	L["The Map of Zul'Aman"] = "祖阿曼地圖";
	L["Norkani"] = "諾卡尼";
	L["Kasha"] = "卡沙";
	L["Thurg"] = "瑟吉";
	L["Gazakroth"] = "葛薩克羅司";
	L["Lord Raadan"] = "領主雷阿登";
	L["Darkheart"] = "黑心";
	L["Alyson Antille"] = "艾利森·安第列";
	L["Slither"] = "史立塞";
	L["Fenstalker"] = "沼群巡者";
	L["Koragg"] = "可拉格";
	L["Zungam"] = "祖剛";
	L["Forest Frogs"] = "森林樹蛙";
	L["Eulinda <Reagents>"] = "尤琳達 <施法材料>";
	L["Harald <Food Vendor>"] = "哈拉德 <食物商人>";
	L["Arinoth"] = "阿瑞諾斯";
	L["Kaldrick"] = "卡爾崔克";
	L["Lenzo"] = "蘭佐";
	L["Mawago"] = "瑪哇苟";
	L["Melasong"] = "馬拉頌";
	L["Melissa"] = "梅麗莎";
	L["Micah"] = "米迦";
	L["Relissa"] = "瑞麗莎";
	L["Rosa"] = "羅莎";
	L["Tyllan"] = "泰倫";

	--Zul'Gurub
	L["Briney Boltcutter <Blackwater Financial Interests>"] = "布蘭尼·破壞剪 <黑水金融>";
	L["Vehini <Assault Provisions>"] = "維希尼 <突襲物資供應者>";
	L["Overseer Blingbang"] = "監督者閃砰";
	L["Bloodslayer T'ara <Darkspear Veteran>"] = "血腥殺戮者特亞拉 <暗矛精兵>";
	L["Bloodslayer Vaena <Darkspear Veteran>"] = "血腥殺戮者瓦那 <暗矛精兵>";
	L["Bloodslayer Zala <Darkspear Veteran>"] = "血腥殺戮者札拉 <暗矛精兵>";
	L["Helpful Jungle Monkey"] = "好幫手叢林猴";
	L["Venomancer Mauri <The Snake's Whisper>"] = "怨毒法師莫里 <蛇之耳語>";
	L["Zanzil's Cauldron of Toxic Torment"] = "贊吉爾的毒物折磨大鍋";
	L["Tiki Lord Mu'Loa"] = "提基王穆羅亞";
	L["Gub <Destroyer of Fish>"] = "古布 <魚類滅殺者>";
	L["Venomancer T'Kulu <The Toxic Bite>"] = "怨毒法師堤庫魯 <毒咬>";
	L["Tor-Tun <The Slumberer>"] = "托通 <沉睡者>";
	L["Kaulema the Mover"] = "移石者考勒瑪";
	L["Berserking Boulder Roller"] = "狂暴巨礫滾動者";
	L["Zanzil's Cauldron of Frostburn Formula"] = "贊吉爾的霜燃配方";
	L["Mor'Lek the Dismantler"] = "拆卸人摩勒克";
	L["Witch Doctor Qu'in <Medicine Woman>"] = "巫醫枯因 <女巫醫>";
	L["Zanza the Restless"] = "『無眠者』贊札";
	L["Mortaxx <The Tolling Bell>"] = "莫爾塔克斯 <鐘鳴者>";
	L["Tiki Lord Zim'wae"] = "提基王辛瓦";
	L["Zanzil's Cauldron of Burning Blood"] = "贊吉爾的燃燒之血";
--@end-do-not-package@
end
