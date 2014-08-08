function onSay(cid, words, param, channel)

local commands = "Player commands:"
commands = commands .. "\n/played - show total time online"
commands = commands .. "\n/frags - display information about your frag limits"
commands = commands .. "\n/online - show players online"
commands = commands .. "\n/commands - information about available commands"
commands = commands .. "\n/share - activate shared exp while in a party"
commands = commands .. "\n/buyhouse - stand in front of a house door to buy a house (you need to be carrying the gold)"
commands = commands .. "\n/sellhouse [player] - open a trade window, need to be in 2sqm range of the player (items go to depot)"
commands = commands .. "\n/leavehouse - leave your house (items go to depot)"

local commands2 = "Gamemaster commands:"
commands2 = commands2 .. "\n/serverdiag - show server connections and spawns"
commands2 = commands2 .. "\n/closeserver; /openserver - close/open server for connections"
commands2 = commands2 .. "\n/promote; /demote [player,groupID] - promote player to desired groupID"
commands2 = commands2 .. "\n/shutdown - shutdown server .exe application"
commands2 = commands2 .. "\n/m [creaturename] - create specified wild monster"
commands2 = commands2 .. "\n/n [npcname] - create specified npc"
commands2 = commands2 .. "\n/i [itemname,count] - create specified item"
commands2 = commands2 .. "\n/owner [player] - while in a house set its ownership"
commands2 = commands2 .. "\n/save - save server"
commands2 = commands2 .. "\n/b [message] - broadcast message"

local commands3 =  "\n/bc [message] - broadcast message without showing your name"
commands3 = commands3 .. "\n/raid [raidname] - execute raid"
commands3 = commands3 .. "\n/newtype [outfitnumber] - set outfit"
commands3 = commands3 .. "\n/send [player;posx,posy,pos,z];[player;waypoint] - send player to position"
commands3 = commands3 .. "\n/wp [waypointname] - set current position as waypointname, can be used with /send and /goto"
commands3 = commands3 .. "\n/r - remove item in front of you (can be used to kick players)"
commands3 = commands3 .. "\n/c [player];[npc] - bring player/npc for your current position"
commands3 = commands3 .. "\n/kick [player] - kick player from server"
commands3 = commands3 .. "\n/reaload [data] - reload specified data folder"

local commands4 = "\n/up; /down - teleport up/down"
commands4 = commands4 .. "\n/clean - remove items from the map"
commands4 = commands4 .. "\n/town [city] - teleport to city temple"
commands4 = commands4 .. "\n/info [player] - show player info"
commands4 = commands4 .. "\n/cliport - turn on/off click to teleport mode"
commands4 = commands4 .. "\n/squelch - turn on/off private messages"
commands4 = commands4 .. "\n/ghost; /invisible - turn on/off gamemaster invisibility"
commands4 = commands4 .. "\n/mute [player,seconds] - mute player"
commands4 = commands4 .. "\n/unmute [player] - unmute player"
commands4 = commands4 .. "\n/light - turn off/on light effects for you"
commands4 = commands4 .. "\n/goto [posx,posy,posz];[player];[creature];[waypoint] - teleport to specified parameter"

local commands5 = "\n/ban [player,hours,comment] - ban player account"
commands5 = commands5 .. "\n/unban [player] - unban player"
commands5 = commands5 .. "\n/notations [player] - show player notations"
commands5 = commands5 .. "\n/baninfo [player] - show information about the banishment"
commands5 = commands5 .. "\n/attr; /edition - http://otland.net/threads/attr-command.41211/#post-983209"
commands5 = commands5 .. "\n/a [number] - teleport x tiles to the direction your are faced'"

local access = getPlayerAccess(cid)
	
	if access >= 3 then	
	local booktext = commands2 .. commands3 .. commands4 .. commands5
	doShowTextDialog(cid, ITEM_ACTION_BOOK, booktext)
	--	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, commands2)
	--	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, commands3)
	--	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, commands4)
	--	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, commands5)
	end
	
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_LBLUE, commands)
	
end