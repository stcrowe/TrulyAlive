_object = _this select 0;

player sideChat "HEy";

_object addAction ["Take Command Radio", {
			private ["_radio","_caller"];
			_radio = _this select 0;
			_caller = _this select 1;
			[[_radio,_caller],"TA_fnc_takeCommand",false] spawn BIS_fnc_MP;
		}];