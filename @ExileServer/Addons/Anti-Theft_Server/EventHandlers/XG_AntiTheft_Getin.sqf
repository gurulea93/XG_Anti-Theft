params[["_vehicle",objNull],["_pos",""],["_player",objNull],"_vehicleInfo"];
_vehicleInfo = _vehicle getVariable ["XG_AntiTheftInfo",[]];
_family = _player getVariable ["ExileClanID","No Family"];
if(_family isEqualTo -1) then
{
	_family = "No Family";
};
_vehicleInfo = [_player,_vehicle,_family,_vehicleInfo] call XG_AntiTheft_Getin_GroupFamily_Check;
_vehicle setVariable ["XG_AntiTheftInfo",_vehicleInfo,true];