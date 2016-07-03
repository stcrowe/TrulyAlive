CIV_FACTION = "CIV_F";

if (isNil "TA_CITY_MANAGER_INIT") then
{

	TA_CITY_MANAGER_INIT = true;

	TA_CITIES = [];

	_logicModules = entities "Logic";

	{
		if (_x getVariable "module" == "city") then
		{
			TA_CITIES append [_x];

			[_x] spawn TA_fnc_initCity;
		};

	} forEach _logicModules;

	publicVariableServer "TA_CITIES";

};

if (true) exitWith{};

while {true} do
{
	sleep 5;

	{
		_cityModule = _x;
		_marker = _cityModule getVariable "marker";
		_markerPos = getMarkerPos _marker;

		if ([_markerPos, 200] call GAIA_fnc_isNearPlayer) then
		{
			_numCivilianSelection = count(configFile >> "CfgVehicles" >> "Civilian_F");

			_newGroup = createGroup civilian;

			_classes = nil;

			_blackList = ["C_journalist_F", "C_man_pilot_F", "C_scientist_F", "C_Soldier_VR_F"];

			if (CIV_FACTION == "CIV_F") then
			{
				_classes = Format["(getText (_x >> 'faction')) == '%1' && (getText (_x >> 'vehicleClass') == 'Men') && !(getText (_x >> 'DLC') == 'Kart')", CIV_FACTION] configClasses (configFile >> "CfgVehicles");
			}
			else
			{

				_classes = Format["getText (_x >> 'faction') == '%1' && getText (_x >> 'vehicleClass') == 'Men'", CIV_FACTION] configClasses (configFile >> "CfgVehicles");
			};

			_civilianClasses = [];
			{
				_civilianClasses append [configName _x];
			} forEach _classes;

			_civilian = selectRandom _blackList;

			while {(_civilian in _blackList)} do
			{
				_civilian = selectRandom _civilianClasses;
			};

			//_veh = (configFile >> "CfgVehicles" >> "Civilian_F") select random _numCivilianSelection;

			//hint format ["%1", _names];

			_newGroup createUnit [_civilian, position player, [], 0, "NONE"];
		};


	} forEach TA_CITIES;



};