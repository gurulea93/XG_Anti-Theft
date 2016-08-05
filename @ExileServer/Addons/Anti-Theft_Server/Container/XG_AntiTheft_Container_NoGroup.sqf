params [["_player",objNull],["_vehicle",objNull],["_family","No Family"],["_vehicleInfo",[]]];
_vehicleInfo params [["_group",""],["_vifamily","No Family"],["_evhID",-1],["_ownerUID",""],["_evhID1",-1]];
_ret = true;
try
{
	if!((str(group _player) isEqualTo _group) || (getPlayerUID _player) isEqualTo _ownerUID) then
	{
		throw false;
	}
	else
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
			if!(_family isEqualTo "No Family") then
			{
				_vifamily = _family;
			};
		};
		_vehicleInfo = [_group,_vifamily,_evhID,_ownerUID,_evhID1];
		_vehicle setVariable ["XG_AntiTheftInfo",_vehicleInfo,true];
	};
}
catch
{
	_ret = _exception;
};
_ret