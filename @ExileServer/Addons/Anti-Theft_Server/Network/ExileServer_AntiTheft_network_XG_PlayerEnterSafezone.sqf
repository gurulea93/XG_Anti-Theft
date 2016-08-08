(_this select 1) params [["_player",objNull]];
_playerEvhid = _player addEventHandler ["GetInMan",
{
	params[["_player",objNull],["_pos",""],["_vehicle",objNull]];
	if(_vehicle getVariable["SC_transport",false]) exitWith {};
	_vehicleInfo = _vehicle getVariable ["XG_AntiTheftInfo",[]];
	if(_vehicleInfo isEqualTo []) then 
	{
		[_vehicle,_player] call XG_AntiTheft_Getin_setVariable;
	};
}];
_player setVariable ["XG_PlayerEVHId",[_playerEvhid],true];