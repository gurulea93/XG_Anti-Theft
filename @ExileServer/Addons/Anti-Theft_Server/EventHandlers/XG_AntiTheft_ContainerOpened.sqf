params [["_vehicle",objNull],["_player",objNull]];
_vehicleInfo = _vehicle getVariable ["XG_AntiTheftInfo",[]];
_family = _player getVariable ["ExileClanID","No Family"];
if(_family isEqualTo -1) then
{
	_family = "No Family";
};
if(_vehicleInfo isEqualTo []) exitWith {};
_ret = [_player,_vehicle,_family,_vehicleInfo] call XG_AntiTheft_GroupFamily_Check;
_ret