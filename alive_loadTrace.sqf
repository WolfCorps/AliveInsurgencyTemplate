if (!isServer) exitWith {};

alive_x_lib_TRACEGRID_STORE = ["alive_x_lib_TRACEGRID_STORE"] call ALiVE_fnc_getData;



//Customized version of https://github.com/ALiVEOS/ALiVE.OS/blob/master/addons/x_lib/functions/markers/fnc_updateTraceGrid.sqf That runs for every grid.
private _cleared = [alive_x_lib_TRACEGRID_STORE,blufor,[]] call ALiVE_fnc_HashGet;
{
//ALiVE_TraceGrid_%1%2
	private _gridBase = _x select [16]
	private _gridLen = (count _gridBase) / 2;
	private _gridP1 = _gridBase select [0,_gridLen];
	private _gridP2 = _gridBase select [_gridLen];
	private _gridPos = [parseNumber _gridP1,parseNumber _gridP2];
	[[_x,_gridPos,"RECTANGLE",[50,50],"COLORGREEN","","EMPTY", _fill,0,0.5],"ALIVE_fnc_createMarker",blufor,true,false] spawn BIS_fnc_MP;
	diag_log ["Alive greenGrid",_gridPos,_x];
} forEach _cleared;

