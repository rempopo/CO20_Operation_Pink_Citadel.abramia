// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 9 || daytime > 18) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 9 || daytime > 18) then { "NVGoggles_OPFOR" } else { "" }
#define BINOCULAR_ITEM		"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM, BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// ****************

#include "Kits_KSK.sqf"

// parachutes cargo

kit_cargo_para = [
	[],
	[],
	[],
	[["B_Parachute",9]]
];


// germanic islamists


#define GISL_UNI 		["CUP_U_I_GUE_Flecktarn","CUP_U_I_GUE_Flecktarn2","CUP_U_I_GUE_Flecktarn3","CUP_U_I_GUE_Woodland1"]
#define GISL_VEST 	["CUP_V_B_GER_Carrier_Rig_2","CUP_V_B_GER_Carrier_Rig_2_Brown"]
#define GISL_HEAD	["","H_Cap_blu","rhsusf_protech_helmet","H_Bandanna_gry","CUP_H_C_Beanie_04","CUP_H_PMC_Cap_Grey","CUP_H_PMC_Cap_Back_Burberry","CUP_H_TKI_Pakol_1_01"]
#define GISL_FACE		["G_Bandanna_aviator","G_Bandanna_sport","G_Bandanna_oli","TRYK_Beard_BK","TRYK_Beard_BK2","TRYK_Beard_BK3","TRYK_Beard_BK4"]
#define GISL_RIFLE	["hlc_rifle_G36A1","hlc_rifle_G36KA1","hlc_rifle_g3a3","hlc_rifle_g3a3v"],["30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_red","hlc_20rnd_762x51_b_G3","hlc_20rnd_762x51_b_G3"]

kit_gisl_random = [
	"kit_gisl_r"
	,"kit_gisl_r"
	,"kit_gisl_r"
	,"kit_gisl_r"
	,"kit_gisl_ar"
];


kit_gisl_r =
	[
	["<EQUIPEMENT >>  ",GISL_UNI,GISL_VEST,"",GISL_HEAD,GISL_FACE],
	["<PRIMARY WEAPON >>  ",GISL_RIFLE,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemCompass","ItemWatch","ItemRadio",["",NVG_NIGHT_ITEM]],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_tourniquet",1],["ACE_morphine",5]]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",9],["rhs_mag_m67",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_gisl_ar =
	[
	["<EQUIPEMENT >>  ",GISL_UNI,GISL_VEST,"B_AssaultPack_sgg",GISL_HEAD,GISL_FACE],
	["<PRIMARY WEAPON >>  ","rhs_weap_m249","rhs_200rnd_556x45_M_SAW",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemCompass","ItemWatch","ItemRadio",["",NVG_NIGHT_ITEM]],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_tourniquet",1],["ACE_morphine",5]]],
	["<VEST ITEMS >> ",[["rhs_mag_m67",2],["SmokeShell",2]]],
	["<BACKPACK ITEMS >> ",[["rhsusf_100Rnd_556x45_soft_pouch",4]]]
];

kit_gisl_r_nvg =
	[
	["<EQUIPEMENT >>  ",GISL_UNI,GISL_VEST,"",GISL_HEAD,GISL_FACE],
	["<PRIMARY WEAPON >>  ",GISL_RIFLE,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemCompass","ItemWatch","ItemRadio","NVGoggles_OPFOR"],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_tourniquet",1],["ACE_morphine",5]]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",9],["rhs_mag_m67",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

#define MAR_UNI	["CUP_I_B_PMC_Unit_3", "CUP_I_B_PMC_Unit_1","U_C_Mechanic_01_F","CUP_O_TKI_Khet_Jeans_04","U_BG_Guerilla2_3","U_BG_Guerilla2_2","U_B_GEN_Commander_F","U_Competitor"]
#define MAR_VEST	["CUP_V_OI_TKI_Jacket6_06","CUP_V_OI_TKI_Jacket6_05","CUP_V_OI_TKI_Jacket1_06","CUP_V_OI_TKI_Jacket1_05","CUP_V_OI_TKI_Jacket5_04","V_Pocketed_olive_F"]
#define MAR_BACK	["","","","B_Messenger_Coyote_F"]
#define MAR_HEAD	["","H_Cap_blu","rhsusf_protech_helmet","H_Bandanna_gry","CUP_H_C_Beanie_04","CUP_H_PMC_Cap_Grey","CUP_H_PMC_Cap_Back_Burberry","H_Construction_basic_vrana_F","CUP_H_TKI_Pakol_1_01"]
#define MAR_FACE	["rhsusf_shemagh2_od","G_Respirator_blue_F","G_Bandanna_aviator","G_Bandanna_sport","G_Bandanna_khk"]

kit_maradeus_random = [
	"kit_maradeur_p"
	,"kit_maradeur_p"
	,"kit_maradeur_r"
];
kit_maradeur_r = [
	["<EQUIPEMENT >>  ",MAR_UNI,MAR_VEST,MAR_BACK,MAR_HEAD,MAR_FACE],
	["<PRIMARY WEAPON >>  ",["CUP_smg_MP5A5","rhs_weap_M590_5RD"],["CUP_30Rnd_9x19_MP5","rhsusf_5Rnd_00Buck"],["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ""],
	["<UNIFORM ITEMS >> ",[]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",3]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_maradeur_p = [
	["<EQUIPEMENT >>  ","CUP_I_B_PMC_Unit_1","CUP_V_OI_TKI_Jacket6_05","","H_Cap_blu","G_Respirator_blue_F"],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_glock17g4","rhsusf_mag_17Rnd_9x19_JHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ""],
	["<UNIFORM ITEMS >> ",[]],
	["<VEST ITEMS >> ",[["HANDGUN MAG",3]]],
	["<BACKPACK ITEMS >> ",[]]
];
