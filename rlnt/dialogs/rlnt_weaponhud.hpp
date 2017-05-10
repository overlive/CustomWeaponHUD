/*
Filename:			rlnt_weaponhud.hpp
Author: 			Relentless
Description: 	Dialog for the Weapon HUD
*/
class rlnt_weaponhud_2_bg {

	idd = 7202;
	movingenable = false;
	duration = 10e10;
	onLoad = "";

	class controls {
		class text_rifle_1: RLNT_RscText
		{
			idc = 1000;
			text = "1";
			x = 0.108258 * safezoneW + safezoneX;
			y = 0.939838 * safezoneH + safezoneY;
			w = 0.010309 * safezoneW;
			h = 0.0439838 * safezoneH;
			colorText[] = {255,255,255,1};
		};
		class text_rifle_2: RLNT_RscText
		{
			idc = 1001;
			text = "2";
			x = 0.200008 * safezoneW + safezoneX;
			y = 0.939838 * safezoneH + safezoneY;
			w = 0.010309 * safezoneW;
			h = 0.0439838 * safezoneH;
			colorText[] = {255,255,255,1};
		};
		class text_secondary: RLNT_RscText
		{
			idc = 1002;
			text = "3";
			x = 0.291758 * safezoneW + safezoneX;
			y = 0.939838 * safezoneH + safezoneY;
			w = 0.010309 * safezoneW;
			h = 0.0439838 * safezoneH;
			colorText[] = {255,255,255,1};
		};
		class text_painkiller: RLNT_RscText
		{
			idc = 1003;
			text = "4";
			x = 0.361859 * safezoneW + safezoneX;
			y = 0.939838 * safezoneH + safezoneY;
			w = 0.010309 * safezoneW;
			h = 0.0439838 * safezoneH;
			colorText[] = {255,255,255,1};
		};
		class text_bandage: RLNT_RscText
		{
			idc = 1004;
			text = "5";
			x = 0.431961 * safezoneW + safezoneX;
			y = 0.939838 * safezoneH + safezoneY;
			w = 0.010309 * safezoneW;
			h = 0.0439838 * safezoneH;
			colorText[] = {255,255,255,1};
		};
		class bg_rifle_1: RLNT_RscText
		{
			idc = 1005;
			x = 0.108258 * safezoneW + safezoneX;
			y = 0.928842 * safezoneH + safezoneY;
			w = 0.0876266 * safezoneW;
			h = 0.0659757 * safezoneH;
			colorBackground[] = {0,0,0,0.4};
		};
		class bg_rifle_2: RLNT_RscText
		{
			idc = 1006;
			x = 0.200008 * safezoneW + safezoneX;
			y = 0.928842 * safezoneH + safezoneY;
			w = 0.0876266 * safezoneW;
			h = 0.0659757 * safezoneH;
			colorBackground[] = {0,0,0,0.4};
		};
		class bg_secondary: RLNT_RscText
		{
			idc = 1007;
			x = 0.291758 * safezoneW + safezoneX;
			y = 0.928842 * safezoneH + safezoneY;
			w = 0.0670085 * safezoneW;
			h = 0.0659757 * safezoneH;
			colorBackground[] = {0,0,0,0.4};
		};
		class bg_painkiller: RLNT_RscText
		{
			idc = 1008;
			x = 0.361859 * safezoneW + safezoneX;
			y = 0.928842 * safezoneH + safezoneY;
			w = 0.0670085 * safezoneW;
			h = 0.0659757 * safezoneH;
			colorBackground[] = {0,0,0,0.4};
		};
		class bg_bandage: RLNT_RscText
		{
			idc = 1009;
			x = 0.43196 * safezoneW + safezoneX;
			y = 0.928842 * safezoneH + safezoneY;
			w = 0.0670085 * safezoneW;
			h = 0.0659757 * safezoneH;
			colorBackground[] = {0,0,0,0.4};
		};
		class frame_rifle_1: RLNT_RscText
		{
			idc = 1010;
			x = 0.118567 * safezoneW + safezoneX;
			y = 0.928842 * safezoneH + safezoneY;
			w = 0.0773175 * safezoneW;
			h = 0.0659757 * safezoneH;
			colorBackground[] = {0,0,0,0.4};
		};
		class frame_rifle_2: RLNT_RscText
		{
			idc = 1011;
			x = 0.211348 * safezoneW + safezoneX;
			y = 0.928842 * safezoneH + safezoneY;
			w = 0.0773175 * safezoneW;
			h = 0.0659757 * safezoneH;
			colorBackground[] = {0,0,0,0.4};
		};
		class frame_secondary: RLNT_RscText
		{
			idc = 1012;
			x = 0.302067 * safezoneW + safezoneX;
			y = 0.928842 * safezoneH + safezoneY;
			w = 0.0566995 * safezoneW;
			h = 0.0659757 * safezoneH;
			colorBackground[] = {0,0,0,0.4};
		};
		class frame_painkiller: RLNT_RscText
		{
			idc = 1013;
			x = 0.372168 * safezoneW + safezoneX;
			y = 0.928842 * safezoneH + safezoneY;
			w = 0.0566995 * safezoneW;
			h = 0.0659757 * safezoneH;
			colorBackground[] = {0,0,0,0.4};
		};
		class frame_bandage: RLNT_RscText
		{
			idc = 1014;
			x = 0.442269 * safezoneW + safezoneX;
			y = 0.928842 * safezoneH + safezoneY;
			w = 0.0566995 * safezoneW;
			h = 0.0659757 * safezoneH;
			colorBackground[] = {0,0,0,0.4};
		};
	};
};

class rlnt_weaponhud_2_items {

	idd = 7203;
	movingenable = false;
	duration = 10e10;
	onLoad = "uiNamespace setVariable ['rlnt_weaponhud_2_items', _this select 0];";

	class controls {
		class img_rifle_1: RLNT_RscPicture
		{
			idc = 1200;
			text = "#(argb,8,8,3)color(0,0,0,0)";
			x = 0.118567 * safezoneW + safezoneX;
			y = 0.928842 * safezoneH + safezoneY;
			w = 0.0773175 * safezoneW;
			h = 0.0659757 * safezoneH;
		};
		class img_rifle_2: RLNT_RscPicture
		{
			idc = 1201;
			text = "#(argb,8,8,3)color(0,0,0,0)";
			x = 0.211348 * safezoneW + safezoneX;
			y = 0.928842 * safezoneH + safezoneY;
			w = 0.0773175 * safezoneW;
			h = 0.0659757 * safezoneH;
		};
		class img_secondary: RLNT_RscPicture
		{
			idc = 1202;
			text = "#(argb,8,8,3)color(0,0,0,0)";
			x = 0.302067 * safezoneW + safezoneX;
			y = 0.928841 * safezoneH + safezoneY;
			w = 0.0566995 * safezoneW;
			h = 0.0659757 * safezoneH;
		};
		class img_painkiller: RLNT_RscPicture
		{
			idc = 1203;
			text = "#(argb,8,8,3)color(0,0,0,0)";
			x = 0.377323 * safezoneW + safezoneX;
			y = 0.93544 * safezoneH + safezoneY;
			w = 0.0463905 * safezoneW;
			h = 0.0549797 * safezoneH;
		};
		class img_bandage: RLNT_RscPicture
		{
			idc = 1204;
			text = "#(argb,8,8,3)color(0,0,0,0)";
			x = 0.447424 * safezoneW + safezoneX;
			y = 0.935439 * safezoneH + safezoneY;
			w = 0.0463905 * safezoneW;
			h = 0.0549797 * safezoneH;
		};
	};
};
