if (isServer) then
{

	currentGroup = nil;
	currentWaypointIndex = nil;

	// Register modules

	TA_DEBUG = true;

	[] spawn TA_fnc_cityManager;


	//format ["Name %1", count _commandersModules] remoteExecCall ["hint", [0, -2] select isMultiplayer];

	// call compile preprocessfile "gaia\gaia_init.sqf";

	//[] call TA_fnc_initTA;

  	civilian setFriend [east, 1];


  //_newGroup = createGroup civilian;

 // hint format ["%1", count(configFile >> "CfgVehicles" >> "Civilian_F")];

  //"C_man_1" createUnit [position player, _newGroup];

};

//[] call AIC_fnc_initAICommand;

/*[markerPos "hc1", [[1,"Take High Command","FUNC_takeHC",true,true,false],[2,"Release High Command","FUNC_releaseHC",true,false,true]], false, 1] call AIC_fnc_createCommandRadio;

FUNC_takeHC = {
	{["ALL_WEST",true] call AIC_fnc_showCommandControl;} remoteExec ["bis_fnc_call", _this select 0];
};

FUNC_releaseHC = {
	{["ALL_WEST",false] call AIC_fnc_showCommandControl;} remoteExec ["bis_fnc_call", _this select 0];
};*/

player addRating 1000000;
