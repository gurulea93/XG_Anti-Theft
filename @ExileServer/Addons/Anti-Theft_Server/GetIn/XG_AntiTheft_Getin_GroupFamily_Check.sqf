params [["_player",objNull],["_vehicle",objNull],["_family","No Family"],["_vehicleInfo",[]]];
_vehicleInfo params [["_group",""],["_vifamily","No Family"],["_evhID",-1],["_ownerUID",""],["_evhID1",-1]];
if(_group isEqualTo "No Group") then
{
	if!(_family isEqualTo "No Family") then
	{
		_vehicleInfo = [_player,_vehicle,_family,_vehicleInfo] call XG_AntiTheft_Getin_Family;
	}
	else
	{
		_vehicleInfo = [_player,_vehicle,_family,_vehicleInfo] call XG_AntiTheft_Getin_NoFamily;
	};
}
else
{
	if!(_family isEqualTo "No Family") then
	{
		_vehicleInfo = [_player,_vehicle,_family,_vehicleInfo] call XG_AntiTheft_Getin_Group;
	}
	else
	{
		_vehicleInfo = [_player,_vehicle,_family,_vehicleInfo] call XG_AntiTheft_Getin_NoGroup;
	};
};
_vehicleInfo