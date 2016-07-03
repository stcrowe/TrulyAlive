/*if(!isServer) exitWith {};

if(!isNil "LA_CITIES_CALLED") exitWith {};
LA_CITIES_CALLED = true;

//_cityModules = allMissionObjects "TA_CityModule";

_cityModules = entities	"Logic";

player sideChat format ["%1", count _cityModules];

if(count _cityModules  > 0) then
{
	{
	_cityModule = _x;

		if(_cityModule typeOf "Logic") then
		{
			TA_CITIES append [_cityModule];

			_markerName = _cityModule getVariable ["markerName", nil];
			_relationBlu = _module getVariable ["relationBlu", 1];
			_relationInd = _module getVariable ["relationInd", 1];
			_relationOpf = _module getVariable ["relationOpf", 1];
		};
	} forEach _cityModules;
};
*/