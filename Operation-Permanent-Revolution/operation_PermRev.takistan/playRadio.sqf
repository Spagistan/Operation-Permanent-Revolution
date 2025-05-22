if (isNil { missionNamespace getVariable "mySounds" }) then 
{
    private _songContainer = 
    [
    ["BirinchiMuhabbatim", 535], ["BloodType", 285], ["CeddinDeden", 118], ["Chollima", 159], ["DabkaTarbyia", 421],
    ["DabkeElOuyoun", 153], ["DefendTheRev", 192], ["Gulbadan", 347], ["Karvon", 404], ["Korobeiniki", 290], 
    ["OltinQanot", 331], ["PlevneMarch", 175], ["Saddam", 201], ["Samovars", 150]];
    missionNamespace setVariable ["mySounds", _songContainer];
};

private _songList = missionNamespace getVariable "mySounds";

if (!(_songList isEqualTo [])) then
{
private _songSelected = selectRandom _songList;
private _song = (_songSelected select 0);
private _songLength = (_songSelected select 1);
[radio, [_song, 100, 1]] remoteExec ["say3D"];
_songList deleteAt (_songList find _songSelected);
missionNamespace setVariable ["mySounds", _songList];

radio remoteExec ["removeAllActions"];

[radio, ["Turn Off Radio",
{
    _pos = getPosATL (_this select 0);
    _dir = getDir (_this select 0);
    deleteVehicle (_this select 0);

    radio = "Land_FMradio_F" createVehicle [0, 0, 0];
    radio setPosATL [_pos select 0, _pos select 1, _pos select 2];
    radio setDir _dir;
    radioH remoteExec ["terminate"];

    [radio, ["Play Radio", {radioH = [] execVM "playRadio.sqf"}]] remoteExec ["addAction"];
}, [], 6, false, true, "", "_target distance _this < 2"]] remoteExec ["addAction"];

_waitTime = time + _songLength;
waitUntil { time >= _waitTime };
radio remoteExec ["removeAllActions"];
radioH = [] execVM "playRadio.sqf";
};