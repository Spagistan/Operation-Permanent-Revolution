ffa_func_Cover = compile preprocessFileLineNumbers "Foxholes\fn_Cover.sqf";
ffa_func_digFoxhole = compile preprocessFileLineNumbers "Foxholes\fn_digFoxhole.sqf";
ffa_func_initializeFoxhole = compile preprocessFileLineNumbers "Foxholes\fn_initializeFoxhole.sqf";
ffa_func_positionSelect = compile preprocessFileLineNumbers "Foxholes\fn_positionSelect.sqf";
ffa_func_userInput = compile preprocessFileLineNumbers "Foxholes\fn_userInput.sqf";
call ffa_func_userInput;

itemfactory1 addAction [
    "Manufacture Crate (Empty)",
    {
        params ["_target", "_caller", "_actionId", "_arguments"];

        if (_target getVariable ["canManufacture", true]) then {
            _target setVariable ["canManufacture", false];

           [_target, "FactorySound"] remoteExec ["say3D", 0];

            [_target] spawn {
                sleep 10.8;

                private _crate = createVehicle ["rhs_7ya37_1_single", getMarkerPos "marker_21", [], 0, "CAN_COLLIDE"];
                _crate setVariable ["ace_cargo_customName", "Empty", true];

                clearWeaponCargoGlobal _crate;
                clearMagazineCargoGlobal _crate;
                clearItemCargoGlobal _crate;
                clearBackpackCargoGlobal _crate;

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
    "_target distance _this < 8"
];

itemfactory1 addAction [
    "Manufacture Rifle Supply Crate",
    {
        params ["_target", "_caller", "_actionId", "_arguments"];

        if (_target getVariable ["canManufacture", true]) then {
            _target setVariable ["canManufacture", false];

           [_target, "FactorySound"] remoteExec ["say3D", 0];

            [_target] spawn {
                sleep 10.8;

            private _crate1 = createVehicle ["rhs_7ya37_1_single", getMarkerPos "marker_21", [], 0, "CAN_COLLIDE"];
            _crate1 setVariable ["ace_cargo_customName", "Rifle Squad Supply Crate", true];
            _crate1 setVariable ["ace_cargo_noRename", true];

            clearWeaponCargoGlobal _crate1;
            clearMagazineCargoGlobal _crate1;
            clearItemCargoGlobal _crate1;
            clearBackpackCargoGlobal _crate1;

            _crate1 addWeaponCargoGlobal ["rhs_weap_ak74m", 2];
            _crate1 addWeaponCargoGlobal ["rhs_weap_rpg75", 2];
            _crate1 addMagazineCargoGlobal ["rhs_30Rnd_545x39_7N22_AK", 20];
            _crate1 addMagazineCargoGlobal ["rhs_60Rnd_545x39_7N22_AK", 10];
            _crate1 addMagazineCargoGlobal ["rhs_VOG25", 20];
            _crate1 addMagazineCargoGlobal ["rhs_GRD40_white", 10];
            _crate1 addMagazineCargoGlobal ["rhssaf_mag_br_m75", 10];
            _crate1 addMagazineCargoGlobal ["rhssaf_mag_brd_m83_white", 10];
            _crate1 addItemCargoGlobal ["ACE_elasticBandage", 20];
            _crate1 addItemCargoGlobal ["ACE_packingBandage", 20];
            _crate1 addItemCargoGlobal ["ACE_morphine", 5];
            _crate1 addItemCargoGlobal ["ACE_epinephrine", 5];
            _crate1 addItemCargoGlobal ["ACE_tourniquet", 5];
            _crate1 addItemCargoGlobal ["ACE_splint", 5];
            _crate1 addItemCargoGlobal ["ACE_EarPlugs", 3];
            _crate1 addItemCargoGlobal ["ACE_suture", 20];
            _crate1 addItemCargoGlobal ["ACE_salineIV_500", 5];
            _crate1 addMagazineCargoGlobal ["murshun_cigs_cigpack", 1];

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
    "_target distance _this < 8"
];

itemfactory1 addAction [
    "Manufacture Weapons Supply Crate",
    {
        params ["_target", "_caller", "_actionId", "_arguments"];

        if (_target getVariable ["canManufacture", true]) then {
            _target setVariable ["canManufacture", false];

           [_target, "FactorySound"] remoteExec ["say3D", 0];

            [_target] spawn {
                sleep 10.8;

            private _crate3 = createVehicle ["rhs_7ya37_1_single", getMarkerPos "marker_21", [], 0, "CAN_COLLIDE"];
            _crate3 setVariable ["ace_cargo_customName", "Weapons Squad Supply Crate", true];
            _crate3 setVariable ["ace_cargo_noRename", true];

            clearWeaponCargoGlobal _crate3;
            clearMagazineCargoGlobal _crate3;
            clearItemCargoGlobal _crate3;
            clearBackpackCargoGlobal _crate3;
            
            _crate3 addMagazineCargoGlobal ["rhssaf_250Rnd_762x54R", 4];
            _crate3 addMagazineCargoGlobal ["rhs_rpg7_PG7VS_mag", 6];
            _crate3 addMagazineCargoGlobal ["rhs_rpg7_type69_airburst_mag", 3];
            _crate3 addMagazineCargoGlobal ["rhs_rpg7_TBG7V_mag", 3];
            _crate3 addMagazineCargoGlobal ["rhs_rpg7_OG7V_mag", 2];
            _crate3 addItemCargoGlobal ["ACE_EarPlugs", 3];
            _crate3 addItemCargoGlobal ["ACE_canteen", 1];
            _crate3 addMagazineCargoGlobal ["murshun_cigs_cigpack", 1];

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
    "_target distance _this < 8"
];

itemfactory1 addAction [
    "Manufacture Medical Supply Crate",
    {
        params ["_target", "_caller", "_actionId", "_arguments"];

        if (_target getVariable ["canManufacture", true]) then {
            _target setVariable ["canManufacture", false];

           [_target, "FactorySound"] remoteExec ["say3D", 0];

            [_target] spawn {
                sleep 10.8;

            private _crate2 = createVehicle ["ACE_medicalSupplyCrate_advanced", getMarkerPos "marker_21", [], 0, "CAN_COLLIDE"];

                clearWeaponCargoGlobal _crate2;
                clearMagazineCargoGlobal _crate2;
                clearItemCargoGlobal _crate2;
                clearBackpackCargoGlobal _crate2;

                _crate2 addItemCargoGlobal ["ACE_elasticBandage", 75];
                _crate2 addItemCargoGlobal ["ACE_packingBandage", 75];
                _crate2 addItemCargoGlobal ["ACE_quikclot", 75];
                _crate2 addItemCargoGlobal ["ACE_bodyBag", 5];
                _crate2 addItemCargoGlobal ["ACE_CableTie", 25];
                _crate2 addItemCargoGlobal ["ACE_morphine", 25];
                _crate2 addItemCargoGlobal ["ACE_epinephrine", 25];
                _crate2 addItemCargoGlobal ["ACE_salineIV", 40];
                _crate2 addItemCargoGlobal ["ACE_salineIV_500", 40];
                _crate2 addItemCargoGlobal ["ACE_tourniquet", 16];
                _crate2 addItemCargoGlobal ["ACE_splint", 16];
                _crate2 addItemCargoGlobal ["ACE_EarPlugs", 3];
                _crate2 addItemCargoGlobal ["ACE_suture", 100];
                _crate2 addItemCargoGlobal ["ACE_surgicalKit", 4];
                _crate2 addItemCargoGlobal ["ACE_painkillers", 15];
                _crate2 addItemCargoGlobal ["ACE_suture", 100];
                _crate2 addMagazineCargoGlobal ["murshun_cigs_cigpack", 1];

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
    "_target distance _this < 8"
];

itemfactory1 addAction [
    "Manufacture Vehicle Ammo Crate",
    {
        params ["_target", "_caller", "_actionId", "_arguments"];

        if (_target getVariable ["canManufacture", true]) then {
            _target setVariable ["canManufacture", false];

           [_target, "FactorySound"] remoteExec ["say3D", 0];

            [_target] spawn {
                sleep 10.8;

            createVehicle ["Box_East_AmmoVeh_F", getMarkerPos "marker_21", [], 0, "CAN_COLLIDE"];

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
    "_target distance _this < 8"
];

itemfactory1 addAction [
    "Manufacture Concertina Wire",
    {
        params ["_target", "_caller", "_actionId", "_arguments"];

        if (_target getVariable ["canManufacture", true]) then {
            _target setVariable ["canManufacture", false];

           [_target, "FactorySound"] remoteExec ["say3D", 0];

            [_target] spawn {
                sleep 10.8;

            createVehicle ["ACE_ConcertinaWireCoil", getMarkerPos "marker_21", [], 0, "CAN_COLLIDE"];

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
    "_target distance _this < 8"
];

itemfactory1 addAction [
    "Manufacture Fuel Can",
    {
        params ["_target", "_caller", "_actionId", "_arguments"];

        if (_target getVariable ["canManufacture", true]) then {
            _target setVariable ["canManufacture", false];

           [_target, "FactorySound"] remoteExec ["say3D", 0];

            [_target] spawn {
                sleep 10.8;

            createVehicle ["rhsusf_props_ScepterMFC_OD", getMarkerPos "marker_21", [], 0, "CAN_COLLIDE"];

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
    "_target distance _this < 8"
];

itemfactory1 addAction [
    "Manufacture Spare Wheel",
    {
        params ["_target", "_caller", "_actionId", "_arguments"];

        if (_target getVariable ["canManufacture", true]) then {
            _target setVariable ["canManufacture", false];

           [_target, "FactorySound"] remoteExec ["say3D", 0];

            [_target] spawn {
                sleep 10.8;

            createVehicle ["ACE_Wheel", getMarkerPos "marker_21", [], 0, "CAN_COLLIDE"];

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
    "_target distance _this < 8"
];

itemfactory1 addAction [
    "Manufacture Spare Track",
    {
        params ["_target", "_caller", "_actionId", "_arguments"];

        if (_target getVariable ["canManufacture", true]) then {
            _target setVariable ["canManufacture", false];

           [_target, "FactorySound"] remoteExec ["say3D", 0];

            [_target] spawn {
                sleep 10.8;

            createVehicle ["ACE_Track", getMarkerPos "marker_21", [], 0, "CAN_COLLIDE"];

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
    "_target distance _this < 8"
];