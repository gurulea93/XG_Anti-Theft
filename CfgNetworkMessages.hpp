class CfgNetworkMessages
{
	class KillMessages
	{
		module = "KillMessages";
		parameters[] = {"STRING","STRING","OBJECT","OBJECT"};
	};
    class XG_EnterSafeZone 
    {
        module = "AntiTheft";
        parameters[] = {"OBJECT","OBJECT"};
    };
    class XG_LeftSafeZone
    {
        module = "AntiTheft";
        parameters[] = {"OBJECT"};
    };
    class XG_PlayerEnterSafezone
    {
        module = "AntiTheft";
        parameters[] = {"OBJECT"};
    };
    class XG_PlayerLeaveSafezone
    {
        module = "AntiTheft";
        parameters[] = {"OBJECT"};
    };
    class XG_CheckVariable
    {
        module = "AntiTheft";
        parameters[] = {"OBJECT","OBJECT"};
    };
};