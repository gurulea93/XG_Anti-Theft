#Installation:
#Установка:
###Mission:
###Миссия:
####1. Go into your missionFile, and open your config.cpp, find
    class CfgExileCustomCode
####1. Открываем ваш файл миссии, открыть config.cpp и найти
    class CfgExileCustomCode
and add:
добавить:

	ExileClient_object_player_event_onEnterSafezone = "Anti-theft\ExileClient_object_player_event_onEnterSafezone.sqf";
	ExileClient_object_player_event_onLeaveSafezone = "Anti-theft\ExileClient_object_player_event_onLeaveSafezone.sqf";
	ExileClient_gui_wasteDumpDialog_show = "Anti-theft\ExileClient_gui_wasteDumpDialog_show.sqf";
	ExileClient_object_player_event_onInventoryOpened = "Anti-theft\ExileClient_object_player_event_onInventoryOpened.sqf";
Example:
Пример:
![example1](https://pp.vk.me/c604617/v604617816/ac29/cb-zf0FdqHg.jpg)
####2. Go into the download and copy the Anti-Theft folder into your missionFile.
####2. Перейдите в скачанное и скопировать папку Anti-Theft в файл вашей миссии.
####3. Copy the content from CfgNetworkMessages.hpp (in the download) and put it / merge it into your description.ext
####3. Скопировать содержимое из CfgNetworkMessages.hpp (в скачанном) и добавьте это в ваш description.ext

###Server:
###Сервер:
####1. Go to your @ExileServer\Addons and depbo exile_server.pbo
####1. Зайдите в @ExileServer\Addons в exile_server.pbo
####2. open exile_server and go into code, then copy the file from "Server override" (in the download) and replace the one in exile_server
####2. открыть exile_server и перейти в папку code, а затем скопировать файл из "Server override" (в скачанном) и заменить его в exile_server
####3. pack the folder "Anti-Theft_Server" (in the download) into a pbo, and add it to your @ExileServer\addons folder.
####3. упаковать папку "Anti-Theft_Server" (в скачанном) в pbo, и добавить в свою папку @ExileServer\addons .

#Authors:
#Автор:
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
#Картинки:
![pic1](http://puu.sh/qtR5B/bba371f560.jpg)
![pic2](http://puu.sh/qtR4t/9821e787c2.jpg)
