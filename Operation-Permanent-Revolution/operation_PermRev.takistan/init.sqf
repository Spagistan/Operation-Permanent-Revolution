ffa_func_Cover = compile preprocessFileLineNumbers "Foxholes\fn_Cover.sqf";
ffa_func_digFoxhole = compile preprocessFileLineNumbers "Foxholes\fn_digFoxhole.sqf";
ffa_func_initializeFoxhole = compile preprocessFileLineNumbers "Foxholes\fn_initializeFoxhole.sqf";
ffa_func_positionSelect = compile preprocessFileLineNumbers "Foxholes\fn_positionSelect.sqf";
ffa_func_userInput = compile preprocessFileLineNumbers "Foxholes\fn_userInput.sqf";
call ffa_func_userInput;

//cratefactory addAction ["Manufacture crate", {createVehicle ["rhs_7ya37_1_single", getMarkerPos "marker_21", [], 0, "CAN_COLLIDE"]}, [], 6, false, true, "", "_target distance _this < 5"];

cratefactory addAction [
    "Manufacture ammo crate",
    {
        params ["_target", "_caller", "_actionId", "_arguments"];
        
        if (_target getVariable ["canManufacture", true]) then {
            _target setVariable ["canManufacture", false];
            
            createVehicle ["rhs_7ya37_1_single", getMarkerPos "marker_21", [], 0, "CAN_COLLIDE"];

            [_target] spawn {
                sleep 10;
                (_this select 0) setVariable ["canManufacture", true];
            };
        } else {
            hint "You must wait before using this again.";
        };
    },
    [],
    6,
    false,
    true,
    "",
    "_target distance _this < 6"
];

vicammofactory addAction [
    "Manufacture vehicle ammo crate",
    {
        params ["_target", "_caller", "_actionId", "_arguments"];
        
        if (_target getVariable ["canManufacture", true]) then {
            _target setVariable ["canManufacture", false];
            
            createVehicle ["Box_East_AmmoVeh_F", getMarkerPos "marker_22", [], 0, "CAN_COLLIDE"];

            [_target] spawn {
                sleep 10;
                (_this select 0) setVariable ["canManufacture", true];
            };
        } else {
            hint "You must wait before using this again.";
        };
    },
    [],
    6,
    false,
    true,
    "",
    "_target distance _this < 6"
];