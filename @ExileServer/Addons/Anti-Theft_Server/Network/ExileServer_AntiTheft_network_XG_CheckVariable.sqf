(_this select 1) params [["_vehicle",objNull],["_player",objNull]];
_vehicleInfo = _vehicle getVariable ["XG_AntiTheftInfo",[]];
if!(_vehicleInfo isEqualTo []) then
{
	_family = _player getVariable ["ExileClanID","No Family"];
	_vehicleInfo params [["_group",""],["_vifamily","No Family"],["_evhID",-1],["_ownerUID",""],["_evhID1",-1]];
	if(_group isEqualTo "No Group") then
	{
		if!(_family isEqualTo "No Family") then
		{
			if!((_family isEqualTo _vifamily) || (getPlayerUID _player) isEqualTo _ownerUID) exitWith
			{
				_holder = "LootWeaponHolder" createVehicle position _player;
				_player action["Gear", _holder];
				deleteVehicle _holder;
				[_player,"ToastRequest",["ErrorTitleAndText",["Anti-Theft","This is not your vehicle!"]]] call ExileServer_system_network_send_to;
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
			};
		}
		else
		{
			if!((getPlayerUID _player) isEqualTo _ownerUID) exitWith
			{
				_holder = "LootWeaponHolder" createVehicle position _player;
				_player action["Gear", _holder];
				deleteVehicle _holder;
				[_player,"ToastRequest",["ErrorTitleAndText",["Anti-Theft","This is not your vehicle!"]]] call ExileServer_system_network_send_to;
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
			};
		};
	}
	else
	{
		if!(_family isEqualTo "No Family") then
		{
			if!((str(group _player) isEqualTo _group) || (_family isEqualTo _vifamily) || (getPlayerUID _player) isEqualTo _ownerUID) exitWith
			{
				_holder = "LootWeaponHolder" createVehicle position _player;
				_player action["Gear", _holder];
				deleteVehicle _holder;
				[_player,"ToastRequest",["ErrorTitleAndText",["Anti-Theft","This is not your vehicle!"]]] call ExileServer_system_network_send_to;
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
			};
		}
		else
		{
			if!((str(group _player) isEqualTo _group) || (getPlayerUID _player) isEqualTo _ownerUID) exitWith
			{
				_holder = "LootWeaponHolder" createVehicle position _player;
				_player action["Gear", _holder];
				deleteVehicle _holder;
				[_player,"ToastRequest",["ErrorTitleAndText",["Anti-Theft","This is not your vehicle!"]]] call ExileServer_system_network_send_to;
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
			};
		};
	};
	_vehicle setVariable ["XG_AntiTheftInfo",_vehicleInfo,true];
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
			_evhID = _vehicle addEventHandler ["GetIn",{_this call XG_AntiTheftInfo_Getin}];
			_toAdd pushBack _evhID;
			_toAdd pushBack (getPlayerUID _player);
			_vehicle setVariable ["XG_AntiTheftInfo",_toAdd,true];
		};
	}
	else
	{
		_evhID = _vehicle addEventHandler ["GetIn",{_this call XG_AntiTheftInfo_Getin}];
		_toAdd pushBack _evhID;
		_toAdd pushBack (getPlayerUID _player);
		_vehicle setVariable ["XG_AntiTheftInfo",_toAdd,true];
	};
	_vehicle setVariable ["XG_AntiTheftInfo",_toadd,true];
};