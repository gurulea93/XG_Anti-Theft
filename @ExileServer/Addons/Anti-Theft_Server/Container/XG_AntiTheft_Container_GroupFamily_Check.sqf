params [["_player",objNull],["_vehicle",objNull],["_family","No Family"],["_vehicleInfo",[]]];
_vehicleInfo params [["_group",""],["_vifamily","No Family"],["_evhID",-1],["_ownerUID",""],["_evhID1",-1]];
if(_group isEqualTo "No Group") then
{
	if!(_family isEqualTo "No Family") then
	{
		_ret = [_player,_vehicle,_family,_vehicleInfo] call XG_AntiTheft_Container_Family;
	}
	else
	{
		_ret = [_player,_vehicle,_family,_vehicleInfo] call XG_AntiTheft_Container_NoFamily;
	};
}
else
{
	if!(_family isEqualTo "No Family") then
	{
		_ret = [_player,_vehicle,_family,_vehicleInfo] call XG_AntiTheft_Container_Group;
	}
	else
	{
		_ret = [_player,_vehicle,_family,_vehicleInfo] call XG_AntiTheft_Container_NoGroup;
	};
};
if!(_ret) then
{
	[_player,"ToastRequest",["ErrorTitleAndText",["Anti-Theft","This is not your vehicle!"]]] call ExileServer_system_network_send_to;
};
_ret