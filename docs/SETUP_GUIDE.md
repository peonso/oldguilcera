SETUP GUIDE FOR GUILCERA SERVER
===============================

How to play in a Guilcera server for Tibia 7.6 client
-----------------------------------------------------

First you need Tibia Client version 7.6, you can download it [HERE](http://lmgtfy.com/?q=Tibia+Client+7.6), [HERE](http://tibiaclient.com/?windows) or [HERE](http://remeresmapeditor.com/marklar.php?clients). I'm not responsible for those links, so you better googling it.

Then find a server website, create an account there and search for the server ip adress. Then create a shortcut of Tibia 7.6 and right click it, chose "Properties" (last alternative). There's a adress bar with text like `"C:\Program\Tibia\Tibia.exe"`, add following: `host *your_server_ip* port 7171`. So the text becomes:

`"C:\Program\Tibia\Tibia.exe" host *your_server_ip* port 7171`

Login with TEST SERVER checked, you can change that inside Tibia client, through Options menu.

How to setup your Guilcera server
---------------------------------

To run an OpenTibia server you will need a group of programs that manage not only the server, but the database of players, accounts and other informations, and the website used by server users to create the accounts and such things.

The server itself will be Avesta distro revision 94 for protocol 7.6, a work of Ferrus, based on OpenTibia CVS version 0.6.5e, sources are avaible [here](https://code.google.com/p/avesta74/), you can also see some discussion about Avesta [here](http://otland.net/threads/7-4-avesta.39366/), the OtLand forum thread. Guilcera is our map, the files are inside server data folder.

As website we will use Nicaw AAC for Avesta, already edited by me, since the original one is not correctly setup to work with revision 94 of Avesta, but older versions, you can see more about Nicaw AAC [here](http://nicaw.net/). It's a web based account creator for OpenTibia servers that work through PHP.

To manage the server MySQL database, and also put our web account creator online we will use XAMPP, [official website](https://www.apachefriends.org/index.html).

So, we will need
- The server (Avesta+Guilcera+DLL libraries), download the lastest version [HERE](https://github.com/peonso/guilcera/tree/master/downloads).
- XAMMP, get the lastest version at official website [HERE](https://www.apachefriends.org/download.html).
- Nicaw AAC for Guilcera, lastest version [HERE](https://github.com/peonso/guilcera/blob/master/files/nicaw_acc.rar).

Sources 
 * [Zysen's Tutorial at OtLand](http://otland.net/threads/mysql-ultimate-tutorial-how-to-create-an-ot-with-pictures.106569/)

How to edit your Guilcera server
--------------------------------

otitemeditor.exe
Remere Map Editor
