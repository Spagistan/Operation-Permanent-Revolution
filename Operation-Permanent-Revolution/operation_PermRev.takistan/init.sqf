ffa_func_Cover = compile preprocessFileLineNumbers "Foxholes\fn_Cover.sqf";
ffa_func_digFoxhole = compile preprocessFileLineNumbers "Foxholes\fn_digFoxhole.sqf";
ffa_func_initializeFoxhole = compile preprocessFileLineNumbers "Foxholes\fn_initializeFoxhole.sqf";
ffa_func_positionSelect = compile preprocessFileLineNumbers "Foxholes\fn_positionSelect.sqf";
ffa_func_userInput = compile preprocessFileLineNumbers "Foxholes\fn_userInput.sqf";
call ffa_func_userInput;

//cratefactory addAction ["Manufacture crate", {createVehicle ["rhs_7ya37_1_single", getMarkerPos "marker_21", [], 0, "CAN_COLLIDE"]}, [], 6, false, true, "", "_target distance _this < 5"];

cratefactory addAction [
    "Manufacture crate",
    {
        params ["_target", "_caller", "_actionId", "_arguments"];
        
        if (_target getVariable ["canManufacture", true]) then {
            _target setVariable ["canManufacture", false];
            
            // Create the crate
            createVehicle ["rhs_7ya37_1_single", getMarkerPos "marker_21", [], 0, "CAN_COLLIDE"];

            // Re-enable the action after 10 seconds
            [_target] spawn {
                sleep 10;
                (_this select 0) setVariable ["canManufacture", true];
            };
        } else {
            // Optional: Feedback to user
            hint "You must wait before using this again.";
        };
    },
    [],
    6,
    false,
    true,
    "",
    "_target distance _this < 5"
];