class CfgPatches
{
	class XG_AntiTheft
	{
		requiredVersion = 0.1977;
		requiredAddons[] = {};
		units[] = {};
		weapons[] = {};
		magazines[] = {};
		ammo[] = {};
		version = v1;
	};
};
class CfgFunctions
{
	class XG_AntiTheft
	{
		class main
		{
			file = "XG_AntiTheft";
			class postInit { postInit = 1; };
		};
	};
};