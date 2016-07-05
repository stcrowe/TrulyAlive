params ["_position", "_radius"];

// Create a list of all players
_players = [];

if (count(playableUnits)==0) then
{
	_players = [player];
}
else
{
	{
        if (isPlayer _x) then
        {
        	_players append [_x];
        };
	} forEach playableUnits;
};

// Check list of players
{
	if ((_x distance _position) <= _radius) exitWith { true };

} forEach _players;


false