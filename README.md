#Installation:
###Mission:
####1. Go into your missionFile, and open your config.cpp, find
    class CfgExileCustomCode
and add:

	ExileClient_object_player_event_onEnterSafezone = "Anti-theft\ExileClient_object_player_event_onEnterSafezone.sqf";
	ExileClient_object_player_event_onLeaveSafezone = "Anti-theft\ExileClient_object_player_event_onLeaveSafezone.sqf";
	ExileClient_gui_wasteDumpDialog_show = "Anti-theft\ExileClient_gui_wasteDumpDialog_show.sqf";
	ExileClient_object_player_event_onInventoryOpened = "Anti-theft\ExileClient_object_player_event_onInventoryOpened.sqf";
Example:
![example1](http://puu.sh/qtQoU/5020827e15.png)
####2. Go into the download and copy the Anti-Theft folder into your missionFile.

###Server:
####1. Go to your @ExileServer\Addons and depbo exile_server.pbo
####2. open exile_server and go into code, then copy the file from "Server override" (in the download) and replace the one in exile_server
####3. pack the folder "Anti-Theft_Server" (in the download) into a pbo, and add it to your @ExileServer\addons folder.

#Authors:
	[XG] StokesMagee:
		www.xexgaming.com
#Credits:
	Diamond
		http://www.legiongaminghq.org/
	Kuplion
		https://www.facebook.com/FriendlyPlayerShooting/
	William Rogers
		http://www.arma3-dayzrp.com/
#Pictures:
![pic1](http://puu.sh/qtR5B/bba371f560.jpg)
![pic2](http://puu.sh/qtR4t/9821e787c2.jpg)
