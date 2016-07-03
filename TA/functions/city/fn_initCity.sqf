if (!isServer) exitWith {};

_cityModule = param[0];

_pop = _cityModule getVariable "population";

// Create citizens

_pop = 144;

// Get a list of class based on faction
_faction = _cityModule getVariable "faction";

// List of units that are blacklisted (thanks BI)
_blackList = ["C_journalist_F", "C_man_pilot_F", "C_scientist_F", "C_Soldier_VR_F"];

_classes = nil;

if (_faction  == "CIV_F") then
{
	_classes = Format["(getText (_x >> 'faction')) == '%1' && (getText (_x >> 'vehicleClass') == 'Men') && !(getText (_x >> 'DLC') == 'Kart')", _faction ] configClasses (configFile >> "CfgVehicles");
}
else
{

	_classes = Format["getText (_x >> 'faction') == '%1' && getText (_x >> 'vehicleClass') == 'Men'", _faction ] configClasses (configFile >> "CfgVehicles");
};

_civilianClasses = [];
{
	_civilianClasses append [configName _x];
} forEach _classes;


_civilian = "C_man_pilot_F";

while {(_civilian in _blackList)} do
{
	_civilian = selectRandom _civilianClasses;
};


while {_pop >= 0} do
{

	_civilian = "C_man_pilot_F";

	while {(_civilian in _blackList)} do
	{
		_civilian = selectRandom _civilianClasses;
	};

	_newPosition = [_cityModule getVariable "marker"] call TA_fnc_randomPositionInMarker;

	if (!(isNil "_newPosition")) then
	{
		//_unit = _civilian createUnit [_newPosition, _newGroup, ""];

		_newGroup = createGroup civilian;
		_unit = _newGroup createUnit [_civilian, _newPosition, [], 0, "NONE"];

		{_x addCuratorEditableObjects [[_unit],true]} forEach allCurators;
	};

	_pop = _pop - 1;
};
