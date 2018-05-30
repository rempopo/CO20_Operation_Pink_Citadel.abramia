
// Plane light
{
	private _plane = _x;
	{
		private _lgt = "#lightpoint" createVehicleLocal [0,0,0];   
		_lgt lightattachobject [_plane, _x];
		_lgt setLightColor [250,0,0];
		_lgt setLightAttenuation [0.3,0,0,250]; 
		_lgt setLightIntensity 165;
	} forEach [
		[0,-5,-3]
		, [0,0,-3]
	];
} forEach (synchronizedObjects C130Logic);

// Anim fix
[] spawn {
	waitUntil { time > 4 };
	player switchMove "";
	
	sleep 1;
	player switchMove "";
};

