/*
 *	You can change MissionDate to some specific date to override date set in mission editor:
 *		format:		[@Year, @Month, @Day, @Hours, @Minutes] (e.g. [2012, 12, 31, 12, 45])
 */
MissionDate = [
	date select 0
	, date select 1
	, date select 2
	, switch ("par_daytime" call BIS_fnc_getParamValue) do {
		case 0: { 6 + round(random 8) };
		case 1: { 21 + round(random 4) };
		case 2: { round(random 24) };
	}
	, selectRandom [0,10,15,20,25,30,40,45,50]
];
publicVariable "MissionDate";

/*
 * Date
 */
setDate MissionDate;

/*
 *	Weather
 */
if (!isNil "dzn_fnc_setWeather") then {
	("par_weather" call BIS_fnc_getParamValue) spawn dzn_fnc_setWeather;
};


/*
 *	Collect Some Player connection data
 */
PlayerConnectedData = [];
PlayerConnectedEH = addMissionEventHandler ["PlayerConnected", {
	diag_log "Client connected";
	diag_log _this;
	// [ DirectPlayID, getPlayerUID player, name player, @bool, clientOwner ]
	PlayerConnectedData pushBack _this;
	publicVariable "PlayerConnectedData";
}];


[] spawn {
	// Wait random 7-12 minutes, then start artillery 5 salvos each 30 seconds (150 seconds in total)
	while { alive (gunner AmbientArtyBattery1) || alive (gunner AmbientArtyBattery2) } do {
		sleep 60*random [7,10,12];
		[[AmbientArtyBattery1, AmbientArtyBattery2], AmbientArty, [-3, 30], true] spawn dzn_fnc_artilleryFiremission;
	};
};

[] spawn {
	waitUntil { !isNil "CAS_Requested" };
	
	sleep 28;
	{ 
		_x spawn { 
			sleep (random 2); 
			"Bo_GBU12_LGB" createVehicle (getPos _this);
			sleep (random 2); 
			_this setDamage 1; 
		};
	} forEach [tgt_armor_1, tgt_armor_2, tgt_armor_3, tgt_armor_4];
};


fnc_startLoopSound = {
	waitUntil { time > 0 };

	while { [_this, 300] call dzn_fnc_isPlayerNear } do {
		playSound3D ["CUP\AirVehicles\CUP_AirVehicles_C130J\data\sound\int_engine_low.wss", _this];
		sleep 7.5;
	};
};

{ 
	private _plane = _x;
       {
	       _lgt = "#lightpoint" createVehicle [0,0,0];   
		_lgt lightattachobject [_plane, _x];
		_lgt setLightColor [250,0,0];
		_lgt setLightAttenuation [0.3,0,0,250]; 
		_lgt setLightIntensity 165;
       } forEach [
		[0,-5,-3]
		, [0,0,-3]
	];
       
	_x spawn fnc_startLoopSound;
} forEach (synchronizedObjects C130Logic);

