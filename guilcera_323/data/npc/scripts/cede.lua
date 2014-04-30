-- Cede by Peonso

ox = 142
oy = 143
oz = 7
max = 7
target = 0 
following = false 
attacking = false 
focus = 0
itemid = 0 
count = 0
payback = 0
talkcount = 0
talk_start = 0

function onThingMove(creature, thing, oldpos, oldstackpos) 
end 

function onCreatureAppear(creature) 
end 

function onCreatureDisappear(cid, pos)
	if focus == cid then
	selfSay('Good bye then.')
	focus = 0
	talk_start = 0
	end
end

function onCreatureTurn(creature) 
end 

function onCreatureSay(cid, type, msg)
	msg = string.lower(msg) 
	dist = getDistanceToCreature(cid)
	if dist >= 8 then
	return
end

talk_start = os.clock() 

if string.find(msg, 'hi') and string.len(msg) == 2 then
	if focus == cid then
	selfSay('I am already talking to you!')
	else if focus > 0 then
        selfSay('Fuck you guy, can´t you see that I´m busy?')
        end
	end
	if(focus == 0) then
	selfSay('Hi, ' .. creatureGetName(cid) .. ', I am Cede.')
	focus = cid
	end
	talk_start = os.clock()
end

if string.find(msg, '(%a*)offer(%a*)') and cid == focus then
	selfSay(' I sell bolts, arrows, crossbows and spells for paladins.')
end

if string.find(msg, '(%a*)10 bolt(%a*)') and cid == focus then
	selfSay('Do you want to buy 10 bolts for 30 gold pieces?')
	talk_start = os.clock()
	itemid = 2543
	count = 10
	cost = 30
	talkcount = 1
	return
end

if string.find(msg, '(%a*)20 bolt(%a*)') and cid == focus then
	selfSay('Do you want to buy 20 bolts for 60 gold pieces?')
	talk_start = os.clock()
	itemid = 2543
	count = 20
	cost = 60
	talkcount = 1
	return
end

if string.find(msg, '(%a*)30 bolt(%a*)') and cid == focus then
	selfSay('Do you want to buy 30 bolts for 90 gold pieces?')
	talk_start = os.clock()
	itemid = 2543
	count = 30
	cost = 90
	talkcount = 1
	return
end

if string.find(msg, '(%a*)40 bolt(%a*)') and cid == focus then
	selfSay('Do you want to buy 40 bolts for 120 gold pieces?')
	talk_start = os.clock()
	itemid = 2543
	count = 40
	cost = 120
	talkcount = 1
	return
end

if string.find(msg, '(%a*)50 bolt(%a*)') and cid == focus then
	selfSay('Do you want to buy 50 bolts for 150 gold pieces?')
	talk_start = os.clock()
	itemid = 2543
	count = 50
	cost = 150
	talkcount = 1
	return
end

if string.find(msg, '(%a*)60 bolt(%a*)') and cid == focus then
	selfSay('Do you want to buy 60 bolts for 180 gold pieces?')
	talk_start = os.clock()
	itemid = 2543
	count = 60
	cost = 180
	talkcount = 1
	return
end

if string.find(msg, '(%a*)70 bolt(%a*)') and cid == focus then
	selfSay('Do you want to buy 70 bolts for 210 gold pieces?')
	talk_start = os.clock()
	itemid = 2543
	count = 70
	cost = 210
	talkcount = 1
	return
end

if string.find(msg, '(%a*)80 bolt(%a*)') and cid == focus then
	selfSay('Do you want to buy 80 bolts for 240 gold pieces?')
	talk_start = os.clock()
	itemid = 2543
	count = 80
	cost = 240
	talkcount = 1
	return
end

if string.find(msg, '(%a*)90 bolt(%a*)') and cid == focus then
	selfSay('Do you want to buy 90 bolts for 270 gold pieces?')
	talk_start = os.clock()
	itemid = 2543
	count = 90
	cost = 270
	talkcount = 1
	return
end

if string.find(msg, '(%a*)100 bolt(%a*)') and cid == focus then
	selfSay('Do you want to buy 100 bolts for 300 gold pieces?')
	talk_start = os.clock()
	itemid = 2543
	count = 100
	cost = 300
	talkcount = 1
	return
end

if string.find(msg, '(%a*)1000 bolt(%a*)') and cid == focus then
	selfSay('Do you want to buy 1000 bolts for 3000 gold pieces?')
	talk_start = os.clock()
	itemid = 2543
	count = 100
	cost = 300
	talkcount = 10
	return
end

if string.find(msg, 'bolt(%a*)') and string.len(msg) == 4 and cid == focus then
	selfSay('Do you want to buy 100 bolts for 300 gold pieces?')
	talk_start = os.clock()
	itemid = 2543
	count = 100
	cost = 300
	talkcount = 1
	return
end

if string.find(msg, '(%a*)10 arrow(%a*)') and cid == focus then
	selfSay('Do you want to buy 10 arrows for 20 gold pieces?')
	talk_start = os.clock()
	itemid = 2544
	count = 10
	cost = 20
	talkcount = 1
	return
end

if string.find(msg, '(%a*)20 arrow(%a*)') and cid == focus then
	selfSay('Do you want to buy 20 arrows for 40 gold pieces?')
	talk_start = os.clock()
	itemid = 2544
	count = 20
	cost = 40
	talkcount = 1
	return
end

if string.find(msg, '(%a*)30 arrow(%a*)') and cid == focus then
	selfSay('Do you want to buy 30 arrows for 60 gold pieces?')
	talk_start = os.clock()
	itemid = 2544
	count = 30
	cost = 60
	talkcount = 1
	return
end

if string.find(msg, '(%a*)40 arrow(%a*)') and cid == focus then
	selfSay('Do you want to buy 40 arrows for 80 gold pieces?')
	talk_start = os.clock()
	itemid = 2544
	count = 40
	cost = 80
	talkcount = 1
	return
end

if string.find(msg, '(%a*)50 arrow(%a*)') and cid == focus then
	selfSay('Do you want to buy 50 arrows for 100 gold pieces?')
	talk_start = os.clock()
	itemid = 2544
	count = 50
	cost = 100
	talkcount = 1
	return
end

if string.find(msg, '(%a*)60 arrow(%a*)') and cid == focus then
	selfSay('Do you want to buy 60 arrows for 120 gold pieces?')
	talk_start = os.clock()
	itemid = 2544
	count = 60
	cost = 120
	talkcount = 1
	return
end

if string.find(msg, '(%a*)70 arrow(%a*)') and cid == focus then
	selfSay('Do you want to buy 70 arrows for 140 gold pieces?')
	talk_start = os.clock()
	itemid = 2544
	count = 70
	cost = 140
	talkcount = 1
	return
end

if string.find(msg, '(%a*)80 arrow(%a*)') and cid == focus then
	selfSay('Do you want to buy 80 arrows for 160 gold pieces?')
	talk_start = os.clock()
	itemid = 2544
	count = 80
	cost = 160
	talkcount = 1
	return
end

if string.find(msg, '(%a*)90 arrow(%a*)') and cid == focus then
	selfSay('Do you want to buy 90 arrows for 180 gold pieces?')
	talk_start = os.clock()
	itemid = 2544
	count = 90
	cost = 180
	talkcount = 1
	return
end

if string.find(msg, '(%a*)100 arrow(%a*)') and cid == focus then
	selfSay('Do you want to buy 100 arrows for 200 gold pieces?')
	talk_start = os.clock()
	itemid = 2544
	count = 100
	cost = 200
	talkcount = 1
	return
end

if string.find(msg, '(%a*)1000 arrow(%a*)') and cid == focus then
	selfSay('Do you want to buy 1000 arrows for 2000 gold pieces?')
	talk_start = os.clock()
	itemid = 2544
	count = 100
	cost = 200
	talkcount = 10
	return
end

if string.find(msg, 'arrow(%a*)') and string.len(msg) == 5 and cid == focus then
	selfSay('Do you want to buy 100 arrows for 200 gold pieces?')
	talk_start = os.clock()
	itemid = 2544
	count = 100
	cost = 200
	talkcount = 1
	return
end

if string.find(msg, '(%a*)spells(%a*)') and cid == focus then
 selfSay('The spells are Heavy Magic Missile, Great Light, Create Food, Intense Healing, Conjure Arrow, Haste, Magic Shield, Poison Arrow, Conjure Bolt, Conjure Power Bolt, Ultimate Healing and Burst Arrow. Light Healing and Light are for free!')
end

if string.find(msg, 'light healing') and cid == focus then
	selfSay('Do you want to learn Light Healing for free?')
	talk_start = os.clock()
	talkcount = 3
	magic = 1
	return
end

if string.find(msg, 'heavy magic missile') and cid == focus then
	selfSay('Do you want to learn Heavy Magic Missile for 600 gold coins?')
	talk_start = os.clock()
	talkcount = 3
	magic = 2
	return
end

if string.find(msg, 'create food') and cid == focus then
	selfSay('Do you want to learn Create Food for 150 gold coins?')
	talk_start = os.clock()
	talkcount = 3
	magic = 3
	return
end

if string.find(msg, 'intense healing') and cid == focus then
	selfSay('Do you want to learn Instense Healing for 350 gold coins?')
	talk_start = os.clock()
	talkcount = 3
	magic = 4
	return
end

if string.find(msg, 'conjure arrow') and string.len(msg) == 13 and cid == focus then
	selfSay('Do you want to learn Conjure Arrow for 450 gold coins?')
	talk_start = os.clock()
	talkcount = 3
	magic = 5
	return
end

if string.find(msg, 'haste') and cid == focus then
	selfSay('Do you want to learn Haste for 600 gold coins?')
	talk_start = os.clock()
	talkcount = 3
	magic = 6
	return
end

if string.find(msg, 'magic shield') and cid == focus then
	selfSay('Do you want to learn Magic Shield for 450 gold coins?')
	talk_start = os.clock()
	talkcount = 3
	magic = 7
	return
end

if string.find(msg, 'poison arrow') and cid == focus then
	selfSay('Do you want to learn Poison Arrow for 700 gold coins?')
	talk_start = os.clock()
	talkcount = 3
	magic = 8
	return
end

if string.find(msg, 'conjure bolt') and string.len(msg) == 12 and cid == focus then
	selfSay('Do you want to learn Conjure Bolt for 750 gold coins?')
	talk_start = os.clock()
	talkcount = 3
	magic = 9
	return
end

if string.find(msg, 'ultimate healing') and cid == focus then
	selfSay('Do you want to learn Ultimate Healing for 1000 gold coins?')
	talk_start = os.clock()
	talkcount = 3
	magic = 10
	return
end

if string.find(msg, 'burst arrow') and cid == focus then
	selfSay('Do you want to learn Burst Arrow for 1000 gold coins?')
	talk_start = os.clock()
	talkcount = 3
	magic = 11
	return
end

if string.find(msg, 'light') and string.len(msg) == 5 and cid == focus then
	selfSay('Do you want to learn light for free?')
	talk_start = os.clock()
	talkcount = 3
	magic = 12
	return
end

if string.find(msg, 'great light') and string.len(msg) == 11 and cid == focus then
	selfSay('Do you want to learn light for 600 gold coins?')
	talk_start = os.clock()
	talkcount = 3
	magic = 13
	return
end

if string.find(msg, 'conjure power bolt') and cid == focus then
	selfSay('Do you want to learn light for 2000 gold coins?')
	talk_start = os.clock()
	talkcount = 3
	magic = 14
	return
end

if string.find(msg, '(%a*)yes(%a*)') and cid == focus and talkcount == 3 then       
	talkcount = 0
	talk_start = os.clock()
if magic == 1 and getPlayerVocation(cid) == 3 then
	learnSpell(cid,"exura",0)
end
if magic == 2 and getPlayerVocation(cid) == 3 then
	learnSpell(cid,"adori gran",600)
end
if magic == 3 and getPlayerVocation(cid) == 3 then
	learnSpell(cid,"exevo pan",150)
end
if magic == 4 and getPlayerVocation(cid) == 3 then
	learnSpell(cid,"exura gran",350)
end
if magic == 5 and getPlayerVocation(cid) == 3 then
	learnSpell(cid,"exevo con",450)
end
if magic == 6 and getPlayerVocation(cid) == 3 then
	learnSpell(cid,"utani hur",600)
end
if magic == 7 and getPlayerVocation(cid) == 3 then
	learnSpell(cid,"utamo vita",450)
end
if magic == 8 and getPlayerVocation(cid) == 3 then
	learnSpell(cid,"exevo con pox",700)
end
if magic == 9 and getPlayerVocation(cid) == 3 then
	learnSpell(cid,"exevo con mort",750)
end
if magic == 10 and getPlayerVocation(cid) == 3 then
	learnSpell(cid,"exura vita",1000)
end
if magic == 11 and getPlayerVocation(cid) == 3 then
	learnSpell(cid,"exevo con flam",1000)
end
if magic == 12 and getPlayerVocation(cid) == 3 then
	learnSpell(cid,"utevo lux",0)
end
if magic == 13 and getPlayerVocation(cid) == 3 then
	learnSpell(cid,"utevo gran lux",600)
end
if magic == 14 and getPlayerVocation(cid) == 3 then
if isPromoted(cid) then
	learnSpell(cid,'exevo con vis',2000)
else
selfSay('Sorry you are not promoted.')
end
end
if  getPlayerVocation(cid) == 1 or getPlayerVocation(cid) == 2 or getPlayerVocation(cid) == 4 then
	selfSay('Sorry, you are not a paladin.')
end
end

if string.find(msg, 'yes(%a*)') and cid == focus and talkcount == 1 then 
	BuyItem(focus,itemid,count,cost)
	talkcount = 0
end

if string.find(msg, 'yes(%a*)') and cid == focus and talkcount == 10 then       
	BuyItem(focus,itemid,count,cost)
	BuyItem(focus,itemid,count,cost)
	BuyItem(focus,itemid,count,cost)
	BuyItem(focus,itemid,count,cost)
	BuyItem(focus,itemid,count,cost)
	BuyItem(focus,itemid,count,cost)
	BuyItem(focus,itemid,count,cost)
	BuyItem(focus,itemid,count,cost)
	BuyItem(focus,itemid,count,cost)
	BuyItem(focus,itemid,count,cost)
	talkcount = 0
end

if string.find(msg, '(%a*)no(%a*)') and cid == focus then
	selfSay('Ok, is there something else you want? If so tell me.')
	itemid = 0
	count = 0
	cost = 0
	talkcount = 0
end 

if string.find(msg, 'bye(%a*)') and cid == focus then
	selfSay('Farewell, ' .. creatureGetName(cid) .. '!')
	focus = 0
	itemid = 0
	talk_start = 0
	talkcount = 0
end 

end

function onCreatureChangeOutfit(creature)
end

function onThink() 
if (os.clock() - talk_start) > 10 then 
if focus > 0 then 
selfSay('Next please!') 
talkcount = 0
end 
focus = 0 
itemid = 0
talk_start = 0 
end 

if focus ~= 0 then
if getDistanceToCreature(focus) > 7 then
selfSay('Good bye then.')
focus = 0
end
end

if(focus == 0) then
moveRandom(ox,oy,max)
end

end
