if (!isServer) exitWith {};

if (isNil "TA_DEBUG") exitWith {};

if (!TA_DEBUG) exitWith {};

_message = param [0, nil];
_type = param [1, "hint"];


if (isNil "_message") exitWith {};

switch (_type) do
{
	case "chat":
	{
		[player, Format["%1", _message]] remoteExecCall ['sideChat',[0,-2] select (isMultiplayer && isDedicated)];
	};

	default
	{
		Format["%1", _message] remoteExecCall ['hint',[0,-2] select (isMultiplayer && isDedicated)];
	};
};