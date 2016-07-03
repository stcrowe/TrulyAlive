if (!isServer) exitWith {};

if (!isNil("PROFILER_INIT")) exitWith {};

PROFILER_INIT = true;

while {true} do
{
	sleep 1;

	{
		_cityModule = _x;
		_marker = _cityModule getVariable "marker";
		_markerPos = getMarkerPos _marker;

		if ([_markerPos, 1500] call GAIA_fnc_isNearPlayer) then
		{

		};

	} forEach TA_CITIES;