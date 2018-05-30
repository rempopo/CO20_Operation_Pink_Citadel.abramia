tSF_ACEActions_Timeout = -1;

/*
 *	Configuration of ACE Actions:
 *		[ @ActionType, @Name, @ID, @ParentID, @Code, @Condition ]
 *		0:  @List of Classname OR List of @Objects  -   if list of classname is used, then all map objects with given class will be applyed
 *		1:  @Name		-	displayed name of the action node
 *		2:  @ID		-	ID of action node
 *		3:  @ParentID	-	ID of parent action node
 *		4:  @Code		-	code to execute (_target is the action-related object)
 *		5:  @Condition	-	condition of action availabness
 *
 */
 
fnc_showCasMenu = {
	CAS_dir = selectRandom["346", "005", "351", "355"];
	CAS_dist = selectRandom ["1490", "1510", "1550", "1670"];
	CAS_elev = selectRandom ["82", "86", "90", "93"];
	[
		[0, "HEADER", "CAS AUFRUFEN"]
		, [1, "LABEL", "<t align='right'>Steuerungstyp</t>"]
		, [1, "LABEL", "2"]
		, [2, "LABEL", "<t align='right'>Ausgangsposition</t>"]
		, [2, "LABEL", "Ida"]
		, [3, "LABEL", "<t align='right'>Richtung</t>"]
		, [3, "LABEL", CAS_dir]
		, [4, "LABEL", "<t align='right'>Distanz</t>"]
		, [4, "LABEL", CAS_dist]
		, [5, "LABEL", "<t align='right'>Elevation</t>"]
		, [5, "LABEL", CAS_elev]
		, [6, "LABEL", "<t align='right'>Zielbeschreibung</t>"]
		, [6, "LABEL", "Gepanzerte Fahrzeuge, 4"]		
		, [7, "LABEL", "<t align='right'>Zielposition (8-Gitter)</t>"]
		, [7, "INPUT"]
		, [8, "LABEL", "<t align='right'>Markentyp</t>"]
		, [8, "LABEL", "Keiner"]
		, [9, "LABEL", "<t align='right'>Freunde</t>"]
		, [9, "LABEL", "Süd, 1km"]
		, [10, "LABEL", "<t align='right'>Egress</t>"]
		, [10, "LABEL", "Süd"]
		, [11, "BUTTON", "CLOSE", { closeDialog 2; }]
		, [11, "LABEL", ""]
		, [11, "BUTTON", "AUFRUFEN", { 
			[CAS_dir, CAS_dist, CAS_elev, (_this select 0 select 0)] spawn fnc_checkCasPosition;
			closeDialog 2;
		}]
	] call dzn_fnc_ShowAdvDialog;
};

fnc_checkCasPosition = {
	params ["_dir","_dist","_elev","_pos"];
	
	[
		player
		, format [
			"HQ, das ist Dolch-2, der Luftschlag anfordert. Steuerungstyp 2, Ida, pause, %1, pause, %2, pause, %3, pause, gepanzerte fahrzeuge, 4, pause, %4, pause, keine, pause, Süden 1km, pause, Süden."
			, _dir
			, _dist
			, _elev
			, _pos
		]
	] remoteExec ["sideChat", 0];	
	hint "CAS Requested, wait for responce";
	sleep 10;
	
	if ((_pos call dzn_fnc_getPosOnMapGrid) distance2d airstrike_pos > 500) exitWith {	
		[
			[resistance, "HQ"]
			, "Dolch-2, das ist HQ, Amerikaner sieht keine thermischen Ziele in der vorgesehenen Position. Überprüfen Sie Ihre Anfrage!"
		] remoteExec ["sideChat", 0];
		hint "CAS unit didn't find any targets in provided position. Check your request!"
	};
	
	[
		[resistance, "HQ"]
		, "Dolch-2, das ist HQ, Ziele erworben. CAS-Eingang in 30 Sekunden. Ende."
	] remoteExec ["sideChat", 0];
	
	hint "CAS inbound in 30 seconds";
	sleep 20;
	
	CAS_Requested = true;
	publicVariable "CAS_Requested";
};


#define	ACE_ACTIONS_TABLE		tSF_ACEActions_Actions = [
#define	ACE_ACTIONS_TABLE_END	];

ACE_ACTIONS_TABLE
	[
		"SELF"
		, "Запросить авиаудар"
		, "CAS_Node"
		, ""
		, {
			[] spawn fnc_showCasMenu;			
		}
		, { 
			!alive tgt_aa_1
			&& !alive tgt_aa_2
			&& call TFAR_fnc_haveLRRadio 
		}
	]
	
ACE_ACTIONS_TABLE_END
