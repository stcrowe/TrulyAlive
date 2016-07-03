if (!isServer) exitWith {};

/*private ["_module", "_marker", "_population", "_relationBlu", "_relationInd", "_relationOp"];

_module = param [0]
_marker = param [1];
_population param [2, 20];
_points param [3, 10];

_relationBlu param [3, 1];
_relationInd param [4, 1];
_relationOp param [5, 1];*/

_module = param [0];

_module setVariable ["module", "city"];
_module setVariable	["marker", param [1]];
_module setVariable ["population", param [2, 20]];
_module setVariable	["points", param [3, 10]];
_module setVariable	["relationBlu", param [4, 1]];
_module setVariable	["relationInd", param [5, 1]];
_module setVariable	["relationOp", param [6, 1]];

_module setVariable ["faction", "CIV_F"];

