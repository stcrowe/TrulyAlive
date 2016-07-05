if (!isServer) exitWith {};

_cityModule = param[0];

_pop = _cityModule getVariable "population";

// Create citizens

_pop = 122;

// Get a list of class based on faction
_faction = _cityModule getVariable "faction";

// Create civilians in city
while {_pop >= 0} do
{
	_newPosition = [_cityModule getVariable "marker", true] call TA_fnc_randomPositionInMarker;

	_civilian = [_faction] call TA_fnc_getRandomCivilianClass;

	if (!(isNil "_newPosition")) then
	{
		//_unit = _civilian createUnit [_newPosition, _newGroup, ""];

		_newGroup = createGroup civilian;
		_unit = _newGroup createUnit [_civilian, _newPosition, [], 0, "NONE"];

		{_x addCuratorEditableObjects [[_unit],true]} forEach allCurators;
	};

	_pop = _pop - 1;
};
