/*
	[ok] - Add smoke and destoryed houses in LZ
	[ok] - Add some smoke in attacked town
	[ok] - Add some tracers to town?
	[ok] - Add some artillery to Castle that fire to town
	[ok] - Change all G36 to NIarms + G3
	[ok] - Change camo to GREFs
	[ok] - Move How To Use parachute to Notes in briefing
	[ok] - Add objective to neutralize Aryllery
	[ok] - Add mortar kits
	[ok] - Add mortar stuff
	[ok] - Add second M163 or MANPAD squad	
	[ok] - Add static weapons	
	[ok] - Add some light armed patrols (SMGs, pitsols) in town
	[ok] - Add AERIAL STRIKE logic
	[ok] - Change CO22 to CO20
	[ok] - Add mission logic
	[ok] - Make MEDEVAC chopper unavailable before AAA destroyed	
	[ok] - Remove evac Helicopter and just end mission by completing all targets
	
	[ok] - Add aditional LAWs for Grenadiers
	[ok] - NVG to enemy
	
	[ok] - Add some wreks on road
	[ok] - Fix MG gunners
	- Add Red light in C130
*/

//	Tacitcal Shift Framework initialization
[] spawn {
        waitUntil { !isNil "MissionDate" };

        // dzn Gear 	(set true to engage Edit mode)
        [false] execVM "dzn_gear\dzn_gear_init.sqf";

        // dzn DynAI
        [] execVM "dzn_dynai\dzn_dynai_init.sqf";

        // TS Framework
        [] execVM "dzn_tSFramework\dzn_tSFramework_Init.sqf";
        // dzn AAR
        [] execVM "dzn_brv\dzn_brv_init.sqf";
};
// *****
