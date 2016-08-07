(_this select 1) params[["_vehicle",objNull],["_player",objNull]];
_vehicleInfo = _vehicle getVariable ["XG_AntiTheftInfo",[]];
if!(_vehicleInfo isEqualTo []) then 
{
	[_player,_vehicle,_vehicleInfo] call XG_AntiTheft_Getin_Check;
}
else
{
	[_vehicle,_player] call XG_AntiTheft_Getin_setVariable;
};