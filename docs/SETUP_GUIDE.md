SETUP GUIDE FOR GUILCERA SERVER
===============================

1. How to play in a Guilcera server for Tibia 7.72 client
--------------------------------------------------------

First you need Tibia Client version 7.72, you can download it [HERE](http://lmgtfy.com/?q=Tibia+Client+7.72), [HERE](http://tibiaclient.com/?windows) or [HERE](http://remeresmapeditor.com/marklar.php?clients). I'm not responsible for those links, so you better googling it. We also need a IP changer application, I suggest OtLand ip changer (http://otland.net/threads/otland-ip-changer.134369/), you can found it [HERE](http://static.otland.net/ipchanger.exe).

Then find a server website, create an account there and search for the server ip adress. Open both Tibia 7.72 client and ip changer, enter server IP at *IP* and *apply*. Log in with the account you created.

2. How to setup your Guilcera server
------------------------------------

2.1 - What we will do and what we need.

To run an OpenTibia server you will need a group of programs that manage not only the server, but the database of players, accounts and other informations, and the website used by server users to create the accounts and such things.

The server itself will be Avesta distro revision 94 for protocol 7.72, a work of Ferrus, based on OpenTibia CVS version 0.6.5e, sources are avaible [here](https://code.google.com/p/avesta74/), you can also see some discussion about Avesta [here](http://otland.net/threads/7-4-avesta.39366/), the OtLand forum thread. Guilcera is our map, the files are inside server data folder.

As website we will use Nicaw AAC for Avesta, already edited by me, since the original one is not correctly setup to work with revision 94 of Avesta, but older versions, you can see more about Nicaw AAC [here](http://nicaw.net/). It's a web based account creator for OpenTibia servers that work through PHP.

To manage the server MySQL database, and also put our web account creator online we will use Uniform Server, [official website](http://www.uniformserver.com/).

And last but not least, we will need a URL Redirect service, and port foward all the ports used.

2.2 - Downloads
So, we will need (versions used while I wrote this guide, june 2014)
- Lastest Guilcera data folder (4.03) + OTX 2.10, [HERE](https://github.com/peonso/guilcera/tree/master/guilcera).
- Uniform Server (8.9.2 Coral), get the lastest version at official website [HERE](http://sourceforge.net/projects/miniserver/files/Uniform%20Server/8.9.2-Coral/Coral_8_9_2.exe/download).
- Gesior2012 AAC for Guilcera, [HERE](https://github.com/peonso/guilcera/tree/master/www).

2.3 - URL Redirect service

You need a URL adress for your server, http://www.noip.com is the standard one used for otservers. Create an account and after logging in click on *Add a Host*. Choose a hostname (for this guide I will use guilcera.servegame.com as exemple), select *DNS Host (A)* and click on *Add Host* below (make sure the *IP Adress* field contains your current IP).

After that you need to download the *Dynamic Update Client* in the left row. It will update your IP adress even if it changes, so you don't need to change it manualy everytime it happens. Install it. After it installed, run the thing, log in with your noip account, click on *Edit Hosts*, select the one you created and save. Job done here.

2.4 - Port Fowarding

We need free acess to ports 7171 (TCP/UDP), 7172 (TCP/UDP) and 80 (TCP/UDP). It's depends on each case, since the process depends on you router model or network setup. Try to find a guide at http://portforward.com/. Also notes that some softwares like anti-viruses and firewalls can denie access to some ports.

2.5 - The server

Extract the guilcera map folder (that's where the server will be located), inside it also extract Avesta + DLL libraries, that way inside guilcera folder (that you can rename, for otserv for exemple) should be located avesta_rev94.exe, all dll files, config.lua, data folder and docs folder.

2.6 - Server database

Extract Uniform Server (better if you do at C:\) and run it as service, once it starts it will ask you to setup a MySQL password, do it. Than *start MySQL* and *Apache*. Now we need to setup ou MySQL database, click on *phpMyAdmin*, a page will open in your browser, search for *Users* tab, and let's create a new one. As user name select *guilcera*, select *local* as host, and the password of you preference, also check te buttom below to *create a database with the same name and grant all privileges*, and add the user. After that click on *guilcera* that should had appeared in the left row, and then in the *import* tab (above in the middle), search for a file in your computer, we need *guilcera_schema.sql* that is located in docs folder of guilcera (or *test_schema.sql* if you want the test version with test characters already created). Last thing to do is open server config.lua and enter the database info, so the otserv actually knows how to conect to the database. Config.lua is located on server folder, with avesta_rev94.exe, data folder and dll files, open it and search for 'SQL_Pass = ""' field, fills it with the password you choose sooner, if you didn't use *guilcera* as user name or database name the fields are near and should be filled with the correct ones.

2.7 - Web account creator

Gesior2012 ACC will do the job, at Uniform Server folder there is a folder named *www*, delete all files inside and paste www folder you got from GitHub. Go to 127.0.0.1 and follow the instructions.

2.8 - Running the server

The last bit of configuration we need to do is to setup your IP adress at *config.lua*, located in data folder. Search for 'IP = ""', enter the hostname we created in 2.3 (*guilcera.servegame.com* was the exemple). Now everything is ready. Run avesta_rev94.exe from server folder and people can start to log in using the hostname you created as ip adress. To create accounts they should access http://guilcera.servegame.com (actually the one you created at http://www.noip.com).

So to run the server you need *Dynamic Update Client* (to redirect you hostname to your current IP), *Uniform Server* running both Apache and MySQL, and your server himselft *avesta_rev94.exe* running.

2.9 - Creating a gamemaster character

We don't create a gamemaster from scratch, we will turn an existing one into a gamemaster. Access http://127.0.0.1/admin.php, select *create a GM* option and enter the name of the character we will turn into a gamemaster (you have to create an account and a character beforehand). Set it to group *gamemaster* when asked, it now will have gamemaster powers. I like to run my gamemasters with gamemaster outfit, level 2, no vocation and the GM tag, as real Tibia used to do, to change that, we will need to access the database, open Uniform Server as program and click on *phpMyAdmin*. Click on *guilcera* in the left row, search for *players* line and click on it. You can change the values by double click each one, add the GM tag to the *name*, change *vocation* to 0, *experience* to 100, *level* to 2, *looktype* to 75, and we are done, your gamemaster is ready.

2.10 - Sources
- [Znote's Tutorial at OtLand](http://otland.net/threads/from-nothing-to-a-fully-working-secured-ot-server-uniform-server-tfs-0-3-6.77593/)
- [Zysen's Tutorial at OtLand](http://otland.net/threads/mysql-ultimate-tutorial-how-to-create-an-ot-with-pictures.106569/)

3. How to edit your Guilcera server
-----------------------------------

3.1 - Remere's Map Editor

You can edit guilcera map with [Remere's Map Editor version 2.2] (http://remeresmapeditor.com/) .

Run the instaler, and open the it and it will ask for tibia 9.6 files, just ignore and close all windows that appear. Hit *file* at upper left, then  *preferences*, *Client Version* tab, set *default client version* to 7.6, on *Version 7.6 search path* select your Tibia Client 7.6 folder. You can also take a look on the other options and see if you want to change anything. Both default items.otb and items.xml for version 7.6 from RME are not optimized, and can broke our map, download revised versions [HERE](https://github.com/peonso/guilcera/raw/master/docs/rme_data/760/) or [HERE](http://www.4shared.com/rar/5LMQqKQ7ce/rme_data760.html), (also grab creatures.xml). Go to RME folder (...\Remere's Map Editor\data\760) and replace those files.

3.2 - otitemeditor.exe

If you find an error in a item description or stats, or just want to change it you will need otitemeditor, the tool was developed by OpenTibia team and you can download version 0.2.2 that works perfectly for us [HERE](http://www.4shared.com/zip/jFtWifSjce/otitemeditor-022.html). You can extract it directly at you Tibia Client folder, or copy Tibia.dat and Tibia.spr from you client folder and paste it at otitemeditor folder, as the application use both files as library.

4. Disclaimer
-------------

As you noticied, guilcera works for tibia 7.72, an old protocol, not only for tibia but for otserv also, so a lot of nowadays applications won't work with it, and a lot of adaptations need to be done so it work properly with some new applications. Otitemeditor for exemple, you need version 2.2.0 to work, since newer versions are not suited to protocol 7.72. Our web application is based on a older version from Nicaw ACC, since newer ones won't work. We need a revised items.otb file to work with RME, since files for older protocols are not really functional. I (peonso) am not versed at any computer language or anything computer related, so a lot of solutions I came up with are not really efficient (like lua, php, or html scripts).
