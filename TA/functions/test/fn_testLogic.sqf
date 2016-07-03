_module = _this select 0;

format ["Name %1", count synchronizedObjects _module] remoteExecCall ["hint", [0, -2] select isMultiplayer];