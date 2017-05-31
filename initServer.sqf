//--- Respawn inventory settings

//--- Unarmed Bitch
[west,"b_soldier_unarmed_f"] call bis_fnc_addrespawninventory;
[east,"b_soldier_unarmed_f"] call bis_fnc_addrespawninventory;
[resistance,"b_soldier_unarmed_f"] call bis_fnc_addrespawninventory;

[] spawn {

	sleep 120;
	{ deleteVehicle _x; } forEach [hide,hide_1,hide_2,hide_3,hide_4,hide_5,hide_6,hide_7,hide_8,hide_9,hide_10,hide_11,hide_12,hide_13,hide_14,hide_15,hide_16,hide_17,hide_18,hide_19,hide_20,hide_21,hide_22,hide_23,hide_24,hide_25,hide_26,hide_27,hide_28,hide_29,hide_30,hide_31,hide_32,hide_33,hide_34,hide_35];

};


[] execVM "alive_loadTrace.sqf";

ALIVE_TraceSaver = compile preprocessFileLineNumbers "alive_saveTrace.sqf";

[] spawn {
	diag_log "ALICE_TraceSaver initialized";
	while {true} do {
		sleep 60;
		call ALIVE_TraceSaver;
	};
};














//--- Curator settings
_curator = allcurators select 0;
_curators = allcurators;

//--- Unlock everything
if (("CuratorGodMode" call bis_fnc_getParamValue) > 0) exitwith {
	{
		_x setcuratorcoef ["place",0];
		_x setcuratorcoef ["delete",0];
	} foreach _curators;
};

