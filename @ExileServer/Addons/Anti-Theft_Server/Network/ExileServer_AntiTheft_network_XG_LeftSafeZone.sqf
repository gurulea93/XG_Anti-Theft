(_this select 1) params[["_vehicle",objNull]];
_vehicleInfo = _vehicle getVariable ["XG_AntiTheftInfo",[]];
if!(_vehicleInfo isEqualTo []) then
{
	_vehicleInfo params [["_group",0],["_vifamily","No Family"],["_evhID",-1],["_ownerUID",""],["_evhID1",0]];
	_vehicle removeEventHandler ["GetIn",_evhID];
	_vehicle setVariable ["XG_AntiTheftInfo",[],true];
};