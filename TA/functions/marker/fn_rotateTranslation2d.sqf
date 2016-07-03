/* ----------------------------------------------------------------------------
Function: TA_fnc_rotateTranslation2d
Description: Returns a  new instance positon rotated through angle _angle along the z-axis
Military objectives

Parameters:
Vector3 - origin of axis (position of marker)
Vector3 - original point prior to translation
Scalar - angle of rotation of the axis

Returns:
Vector3 - the new instance positon rotated through angle _angle


Examples:
[_logic, "faction", "OPF_F"] call ALiVE_fnc_CMP;

See: https://www.siggraph.org/education/materials/HyperGraph/modeling/mod_tran/2drota.htm

Author:
S.Crowe
---------------------------------------------------------------------------- */

params [["_origin", nil], ["_oldPoint", nil], ["_angle", nil]];

if ((isNil "_origin") OR (isNil "_oldPoint") OR (isNil "_angle")) exitWith {["Incorrect params for TA_fnc_rotateTranslation"] call TA_fnc_debugLog;};


// Get origin x,y
_originX = _origin select 0;
_originY = _origin select 1;


// Get old point x,y
_oldPointX = _oldPoint select 0;
_oldPointY = _oldPoint select 1;
_oldPointZ = _oldPoint select 2;


// Translate for rotation
_translateX = _oldPointX - _originX;
_translateY = _oldPointY - _originY;

// Rotate
_rotateX = (_translateX * (cos _angle)) - (_translateY * (sin _angle));
_rotateY = (_translateY * (sin _angle)) + (_translateY * (cos _angle));

// Translate back to original corridnate system
_newPointX = _rotateX + _originX;
_newPointY = _rotateY + _originY;

[_newPointX, _newPointY, _oldPointZ]