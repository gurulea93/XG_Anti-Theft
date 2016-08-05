(_this select 1) params [["_player",objNull]];
_playerEvhid = _player addEventHandler ["GetInMan",
{
	params[["_player",objNull],["_pos",""],["_vehicle",objNull]];
	_vehicleInfo = _vehicle getVariable ["XG_AntiTheftInfo",[]];
	if(_vehicleInfo isEqualTo []) then 
	{
		["XG_EnterSafeZone",[_vehicle,_player]] call ExileClient_system_network_send;
	};
}];
_player setVariable ["XG_PlayerEVHId",[_playerEvhid],true];