if(isServer) then {

	params ["_console", "_caller"];



	//[_radio,_caller] call AIC_fnc_setRadioOwner;
	_console hideObjectGlobal true;
	_console hideObject true;
	{
		_x hideObjectGlobal true;
		_x hideObject true;
	} forEach attachedObjects _console;

	/*[[],"AIC_fnc_syncCommandRadioTasksLocal",true] spawn BIS_fnc_MP;*/
};

["cheese"] call AIC_fnc_createCommandControl;
["cheese",true] call AIC_fnc_showCommandControl;
["ALL_WEST",true] call AIC_fnc_showCommandControl;

hint "You are now commander";