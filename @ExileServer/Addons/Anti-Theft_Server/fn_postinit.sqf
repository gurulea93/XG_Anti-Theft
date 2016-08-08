/*
	Project:
		XG_Anti-Theft

	Authors:
		[XG] StokesMagee:
			www.xexgaming.com

	Credits:
		Diamond
			http://www.legiongaminghq.org/
		Kuplion
			https://www.facebook.com/FriendlyPlayerShooting/
		William Rogers
			http://www.arma3-dayzrp.com/
*/

{
	_x params [["_function",""],["_file",""]];
	_code = compile (preprocessFileLineNumbers _file);
	missionNamespace setVariable [_function,_code];
} forEach
[
	//Network
	["ExileServer_AntiTheft_network_XG_EnterSafeZone","XG_AntiTheft\Network\ExileServer_AntiTheft_network_XG_EnterSafeZone.sqf"],
	["ExileServer_AntiTheft_network_XG_LeftSafeZone","XG_AntiTheft\Network\ExileServer_AntiTheft_network_XG_LeftSafeZone.sqf"],
	["ExileServer_AntiTheft_network_XG_PlayerEnterSafezone","XG_AntiTheft\Network\ExileServer_AntiTheft_network_XG_PlayerEnterSafezone.sqf"],
	["ExileServer_AntiTheft_network_XG_PlayerLeaveSafezone","XG_AntiTheft\Network\ExileServer_AntiTheft_network_XG_PlayerLeaveSafezone.sqf"],
	["ExileServer_AntiTheft_network_XG_CheckVariable","XG_AntiTheft\Network\ExileServer_AntiTheft_network_XG_CheckVariable.sqf"],

	//Getin EventHandler
	["XG_AntiTheft_Getin_Family","XG_AntiTheft\Getin\XG_AntiTheft_Getin_Family.sqf"],
	["XG_AntiTheft_Getin_Group","XG_AntiTheft\Getin\XG_AntiTheft_Getin_Group.sqf"],
	["XG_AntiTheft_Getin_GroupFamily_Check","XG_AntiTheft\Getin\XG_AntiTheft_Getin_GroupFamily_Check.sqf"],
	["XG_AntiTheft_Getin_NoFamily","XG_AntiTheft\Getin\XG_AntiTheft_Getin_NoFamily.sqf"],
	["XG_AntiTheft_Getin_NoGroup","XG_AntiTheft\Getin\XG_AntiTheft_Getin_NoGroup.sqf"],

	//Container EventHandler
	["XG_AntiTheft_Container_Family","XG_AntiTheft\Container\XG_AntiTheft_Container_Family.sqf"],
	["XG_AntiTheft_Container_Group","XG_AntiTheft\Container\XG_AntiTheft_Container_Group.sqf"],
	["XG_AntiTheft_Container_GroupFamily_Check","XG_AntiTheft\Container\XG_AntiTheft_Container_GroupFamily_Check.sqf"],
	["XG_AntiTheft_Container_NoFamily","XG_AntiTheft\Container\XG_AntiTheft_Container_NoFamily.sqf"],
	["XG_AntiTheft_Container_NoGroup","XG_AntiTheft\Container\XG_AntiTheft_Container_NoGroup.sqf"],

	//EventHandlers
	["XG_AntiTheft_ContainerOpened","XG_AntiTheft\EventHandlers\XG_AntiTheft_ContainerOpened.sqf"],
	["XG_AntiTheft_Getin","XG_AntiTheft\EventHandlers\XG_AntiTheft_Getin.sqf"],

	//Checks
	["XG_AntiTheft_Getin_Check","XG_AntiTheft\Getin\XG_AntiTheft_Getin_Check.sqf"],

	//Set Vars
	["XG_AntiTheft_GetIn_SetVariable","XG_AntiTheft\Getin\XG_AntiTheft_GetIn_SetVariable.sqf"]
];