
/* ----------------------------------------------------------------------------
Function: btc_fnc_log_createVehicle

Description:
    Fill me when you edit me !

Parameters:
    _type - [String]
    _pos - [Array]
    _dir - [Number]
    _customization - [Array]

Returns:

Examples:
    (begin example)
        _result = [] call btc_fnc_log_createVehicle;
    (end)

Author:
    Vdauphin

---------------------------------------------------------------------------- */

params [
    ["_type", "", [""]],
    ["_pos", [0, 0, 0], [[]]],
    ["_dir", 0, [0]],
    ["_customization", [false, false], [[]]]
];

private _veh  = createVehicle [_type, ASLToATL _pos, [], 0, "CAN_COLLIDE"];
_veh setDir _dir;
_veh setPosASL _pos;
[_veh, _customization select 0, _customization select 1] call BIS_fnc_initVehicle;

_veh setVariable ["btc_dont_delete", true];

if (getNumber(configFile >> "CfgVehicles" >> typeOf _veh >> "isUav") isEqualTo 1) then {
    createVehicleCrew _veh;
};

_veh call btc_fnc_db_add_veh;

_veh
