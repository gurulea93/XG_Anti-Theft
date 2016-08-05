(_this select 1) params[["_vehicle",objNull],["_player",objNull]];
_vehicleInfo = _vehicle getVariable ["XG_AntiTheftInfo",[]];
if!(_vehicleInfo isEqualTo []) then 
{
	[_player,_vehicle,_vehicleInfo] call XG_AntiTheft_Getin_Check;
}
else
{
	_family = _player getVariable ["ExileClanID","No Family"];
	_toAdd = [];
	_group = str(group _player);
	if(_group isEqualTo "R ") then
	{
		_group = "No Group";
	};
	_toAdd pushBack _group;
	if(_family isEqualTo -1) then
	{
		_toAdd pushBack "No Family";
	}
	else
	{
		_toAdd pushBack _family;
	};
	if!(isNil "SC_transport") then
	{
		if!(SC_transport) then
		{
			_evhID = _vehicle addEventHandler ["GetIn",{_this call XG_AntiTheft_Getin}];
			_evhID1 = _vehicle addEventHandler ["ContainerOpened",{_this call XG_AntiTheft_ContainerOpened}];
			_toAdd pushBack _evhID;
			_toAdd pushBack (getPlayerUID _player);
			_toAdd pushBack _evhID1;
			_vehicle setVariable ["XG_AntiTheftInfo",_toAdd,true];
		};
	}
	else
	{
		_evhID = _vehicle addEventHandler ["GetIn",{_this call XG_AntiTheft_Getin}];
		_evhID1 = _vehicle addEventHandler ["ContainerOpened",{_this call XG_AntiTheft_ContainerOpened}];
		_toAdd pushBack _evhID;
		_toAdd pushBack (getPlayerUID _player);
		_toAdd pushBack _evhID1;
		_vehicle setVariable ["XG_AntiTheftInfo",_toAdd,true];
	};
};