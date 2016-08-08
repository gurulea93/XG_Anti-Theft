params[["_player",objNull],["_vehicle",objNull],["_vehicleInfo",[]]];
_family = _player getVariable ["ExileClanID","No Family"];
if(_family isEqualTo -1) then
{
	_family = "No Family";
};
_vehicleInfo = [_player,_vehicle,_family,_vehicleInfo] call XG_AntiTheft_Getin_GroupFamily_Check;
_vehicle setVariable ["XG_AntiTheftInfo",_vehicleInfo,true];