private ["_pos","_centerPos","_fetchPos","_mapRadii"];

//_centerPos = [getMarkerPos "center",4000,20000,10,0,25,0];
//_centerPos = [getMarkerPos "center",2000,4000,10,0,25,0];
_centerPos = [15440, 15342, 0];
_mapRadii = 17000;


_fetchPos = false;

_int = 1;

while {!_fetchPos} do {

	sleep 2;
	
	//_pos = _centerPos call BIS_fnc_findSafePos;
	_pos = [_centerPos,150,_mapRadii,10,0,20,0] call BIS_fnc_findSafePos;
	_int = _int + 1;
	_fetchPos = true;

	if (_fetchPos) then {
		diag_log format ["DMS :: Found valid position at: (%1) in (%2) tries!",_pos,_int];
	};

	// more if exceptions to come

	// water if exception to be added above 

};
_pos
