(_this select 1) params[["_player",objNull]];
_var = _player getVariable ["XG_PlayerEVHId",[]];
if!(_var isEqualTo []) then
{
	_var params [["_evhID",-1]];
	_player removeEventHandler ["GetInMan",_evhID];
	_player setVariable ["XG_PlayerEVHId",[],true];
};