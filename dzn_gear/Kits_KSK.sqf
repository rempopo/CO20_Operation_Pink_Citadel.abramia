// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 9 || daytime > 18) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 9 || daytime > 20) then { "NVGoggles_OPFOR" } else { "" }
#define BINOCULAR_ITEM		"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ACE_Altimeter","ItemRadio", NVG_NIGHT_ITEM
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ACE_Altimeter","ItemRadio", NVG_NIGHT_ITEM, BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// ****************


#define	KSK_HEADGEAR	["rhsusf_opscore_paint_pelt","rhsusf_opscore_bk_pelt","rhsusf_opscore_fg_pelt","rhsusf_opscore_rg_cover_pelt"]
#define	KSK_VEST		["TRYK_V_ArmorVest_Brown","TRYK_V_ArmorVest_coyo","TRYK_V_ArmorVest_green"]

kit_ksk_pl = [
	["<EQUIPEMENT >>  ","rhsgref_uniform_flecktarn_full",KSK_VEST,"tf_rt1523g_big_bwmod","CUP_H_Ger_Boonie_Flecktarn","G_Bandanna_oli"],
	["<PRIMARY WEAPON >>  ","KA_UMP45","KA_25Rnd_45ACP_FMJ_Mag",["KA_UMP45_Silencer","KA_UMP45_Laser_IR_single","rhsusf_acc_eotech_552",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","KA_P226_Black","KA_P226_15Rnd_9x19_FMJ_Mag",["","KA_P226_Flashlight","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["HANDGUN MAG",2],["SmokeShell",2],["rhs_mag_m67",2],["ACE_Chemlight_HiRed",2],["Chemlight_green",2],["PRIMARY MAG",6]]],
	["<BACKPACK ITEMS >> ",[["SmokeShellRed",2],["SmokeShellPurple",2],["SmokeShellGreen",2],["B_IR_Grenade",2]]]
];

kit_ksk_sl = [
	["<EQUIPEMENT >>  ","rhsgref_uniform_flecktarn_full",KSK_VEST,"tf_rt1523g_big_bwmod",KSK_HEADGEAR,"G_Bandanna_oli"],
	["<PRIMARY WEAPON >>  ","rhs_weap_hk416d145_wd_grip3","30Rnd_556x45_Stanag",["muzzle_snds_m_khk_F","rhsusf_acc_anpeq15_bk_top_h","rhsusf_acc_SpecterDR_OD","rhsusf_acc_grip3"]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","KA_P226_Black","KA_P226_15Rnd_9x19_FMJ_Mag",["","KA_P226_Flashlight","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["HANDGUN MAG",2],["SmokeShell",2],["rhs_mag_m67",2],["ACE_Chemlight_HiRed",2],["Chemlight_green",2],["PRIMARY MAG",9]]],
	["<BACKPACK ITEMS >> ",[["SmokeShellRed",2],["SmokeShellPurple",2],["SmokeShellGreen",2],["B_IR_Grenade",2]]]
];

kit_ksk_ftl = [
	["<EQUIPEMENT >>  ","rhsgref_uniform_flecktarn_full",KSK_VEST,"B_AssaultPack_khk",KSK_HEADGEAR,"G_Bandanna_oli"],
	["<PRIMARY WEAPON >>  ","rhs_weap_hk416d145_wd_grip3","30Rnd_556x45_Stanag",["muzzle_snds_m_khk_F","rhsusf_acc_anpeq15_bk_top_h","rhsusf_acc_SpecterDR_OD","rhsusf_acc_grip3"]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","KA_P226_Black","KA_P226_15Rnd_9x19_FMJ_Mag",["","KA_P226_Flashlight","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["HANDGUN MAG",2],["SmokeShell",2],["rhs_mag_m67",2],["ACE_Chemlight_HiRed",2],["Chemlight_green",2],["PRIMARY MAG",9]]],
	["<BACKPACK ITEMS >> ",[["SmokeShellRed",2,1],["SmokeShellPurple",2,1],["SmokeShellGreen",2,1],["B_IR_Grenade",2,1],["hlc_100Rnd_762x51_M_MG3",2,100]]]
];

kit_ksk_ar = [
	["<EQUIPEMENT >>  ","rhsgref_uniform_flecktarn_full",KSK_VEST,"B_AssaultPack_rgr",KSK_HEADGEAR,"G_Bandanna_oli"],
	["<PRIMARY WEAPON >>  ","hlc_lmg_MG3KWS_b","hlc_100Rnd_762x51_M_MG3",["","rhsusf_acc_anpeq15side_bk","rhsusf_acc_RX01_NoFilter",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","KA_P226_Black","KA_P226_15Rnd_9x19_FMJ_Mag",["","KA_P226_Flashlight","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HANDGUN MAG",2],["SmokeShell",2],["rhs_mag_m67",2],["ACE_Chemlight_HiRed",2],["Chemlight_green",2],["hlc_50Rnd_762x51_B_MG3",2]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",3]]]
];

kit_ksk_gr = [
	["<EQUIPEMENT >>  ","rhsgref_uniform_flecktarn_full",KSK_VEST,"B_TacticalPack_oli",KSK_HEADGEAR,"G_Bandanna_oli"],
	["<PRIMARY WEAPON >>  ","rhs_weap_hk416d10_m320","30Rnd_556x45_Stanag",["rhsusf_acc_nt4_black","rhsusf_acc_anpeq15_bk_top_h","rhsusf_acc_eotech_552",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_m72a7","",["","","",""]],
	["<HANDGUN WEAPON >>  ","KA_P226_Black","KA_P226_15Rnd_9x19_FMJ_Mag",["","KA_P226_Flashlight","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",6],["rhs_mag_M433_HEDP",4],["rhs_mag_m67",2],["Chemlight_green",2],["ACE_Chemlight_HiRed",2],["SmokeShell",2],["HANDGUN MAG",2]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",4],["rhs_mag_M433_HEDP",4],["DemoCharge_Remote_Mag",2],["ACE_Clacker",1]]]
];

kit_ksk_r = [
	["<EQUIPEMENT >>  ","rhsgref_uniform_flecktarn_full",KSK_VEST,"B_TacticalPack_oli",KSK_HEADGEAR,"G_Bandanna_oli"],
	["<PRIMARY WEAPON >>  ","rhs_weap_hk416d10_LMT_wd_grip","30Rnd_556x45_Stanag",["rhsusf_acc_nt4_tan","rhsusf_acc_anpeq15_bk_top_h","rhsusf_acc_g33_xps3","rhsusf_acc_grip1"]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_m72a7","",["","","",""]],
	["<HANDGUN WEAPON >>  ","KA_P226_Black","KA_P226_15Rnd_9x19_FMJ_Mag",["","KA_P226_Flashlight","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_m67",2],["Chemlight_green",2],["ACE_Chemlight_HiRed",2],["SmokeShell",2],["HANDGUN MAG",2],["PRIMARY MAG",9]]],
	["<BACKPACK ITEMS >> ",[["ACE_Clacker",1],["ACE_DefusalKit",1],["SatchelCharge_Remote_Mag",2]]]
];