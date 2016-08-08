params [["_player",objNull],["_vehicle",objNull],["_family","No Family"],["_vehicleInfo",[]]];
_vehicleInfo params [["_group",""],["_vifamily","No Family"],["_evhID",-1],["_ownerUID",""],["_evhID1",-1]];
if!((str(group _player) isEqualTo _group) || (_family isEqualTo _vifamily) || (getPlayerUID _player) isEqualTo _ownerUID) then
{
	_player action["Eject", _vehicle];
	[_player,"ToastRequest",["ErrorTitleAndText",["Anti-Theft","This is not your vehicle!"]]] call ExileServer_system_network_send_to;
}
else
{
	if((getPlayerUID _player) isEqualTo _ownerUID) then
	{
		if!(str(group _player) isEqualTo _group) then
		{
			_group = str(group _player);
			if(_group isEqualTo "R ") then
			{
				_group = "No Group";
			};
		};
		if!(_family isEqualTo _vifamily) then
		{
			_vifamily = _family;
		};
		_vehicleInfo = [_group,_vifamily,_evhID,_ownerUID,_evhID1];
	};
};
_vehicleInfo