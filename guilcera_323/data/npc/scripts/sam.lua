-- Sam by Peonso

ox = 319
oy = 80
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
	selfSay('I am already talking to you.')
	else if focus > 0 then
        selfSay('Im working! Wait!')
        end
	end
	if(focus == 0) then
	selfSay('Hi, ' .. creatureGetName(cid) .. '! Are you new in Taumel? I am Sam, I sell some equipments. If you want I can change your gold to platinum and platinum to crystal.')
	focus = cid
	end
	talk_start = os.clock()
end

if string.find(msg, '(%a*)offer(%a*)') and cid == focus then
	selfSay('I am selling bolts, arrows, Shovel, Rope and Backpacks.')
end

if string.find(msg, '(%a*)equip(%a*)') and cid == focus then
	selfSay('I am selling bolts, arrows, Shovel, Rope and Backpacks.')
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

if string.find(msg, '(%a*)shovel(%a*)') and cid == focus then
	selfSay('A shovel costs 20 gold pieces, do you want to buy one?')
	talk_start = os.clock()
	itemid = 2554
	count = 1
	cost = 20
	talkcount = 1
	return
end

if string.find(msg, '(%a*)rope(%a*)') and cid == focus then
	selfSay('A rope costs 50 gold pieces, do you want to buy one?')
	talk_start = os.clock()
	itemid = 2120
	count = 1
	cost = 50
	talkcount = 1
	return
end

if string.find(msg, '(%a*)backpack(%a*)') and cid == focus then
	selfSay('A backpack costs 20 gold pieces, do you want to buy one?')
	talk_start = os.clock()
	itemid = 2000
	count = 1
	cost = 20
	talkcount = 1
	return
end

if string.find(msg, '(%a*)change gold(%a*)') and cid == focus then
	selfSay('Do you want how many platinum coins?')
	talk_start = os.clock()
	talkcount = 8
	return
end

if string.find(msg, '(%a*)change platinum(%a*)') and cid == focus then
	selfSay('Do you want how many crystal coins?')
	talk_start = os.clock()
	talkcount = 7
	return
end

if string.find(msg, '(%a*)5(%a*)') and talkcount == 8 and cid == focus then
	selfSay('Do you want to change 500 gold pieces for 5 platinum coins?')
	talk_start = os.clock()
	itemid = 2152
	count = 5
	cost = 500
	talkcount = 1
	return
end

if string.find(msg, '(%a*)10(%a*)') and talkcount == 8 and cid == focus then
	selfSay('Do you want to change 1000 gold pieces for 10 platinum coins?')
	talk_start = os.clock()
	itemid = 2152
	count = 10
	cost = 1000
	talkcount = 1
	return
end

if string.find(msg, '(%a*)50(%a*)') and talkcount == 8 and cid == focus then
	selfSay('Do you want to change 5000 gold pieces for 50 platinum coins?')
	talk_start = os.clock()
	itemid = 2152
	count = 50
	cost = 5000
	talkcount = 1
	return
end

if string.find(msg, '(%a*)100(%a*)') and talkcount == 8 and cid == focus then
	selfSay('Do you want to change 10000 gold pieces for 100 platinum coins?')
	talk_start = os.clock()
	itemid = 2152
	count = 100
	cost = 10000
	talkcount = 1
	return
end

if string.find(msg, '(%a*)5(%a*)') and talkcount == 7 and cid == focus then
	selfSay('Do you want to change 500 platinum coins for 5 crystal coins?')
	talk_start = os.clock()
	itemid = 2152
	count = 5
	cost = 500
	talkcount = 1
	return
end

if string.find(msg, '(%a*)10(%a*)') and talkcount == 7 and cid == focus then
	selfSay('Do you want to change 1000 platinum coins for 10 crystal coins?')
	talk_start = os.clock()
	itemid = 2152
	count = 10
	cost = 1000
	talkcount = 1
	return
end

if string.find(msg, '(%a*)50(%a*)') and talkcount == 7 and cid == focus then
	selfSay('Do you want to change 5000 platinum coins for 50 crystal coins?')
	talk_start = os.clock()
	itemid = 2152
	count = 50
	cost = 5000
	talkcount = 1
	return
end

if string.find(msg, '(%a*)100(%a*)') and talkcount == 7 and cid == focus then
	selfSay('Do you want to change 10000 platinum coins for 100 crystal coins?')
	talk_start = os.clock()
	itemid = 2152
	count = 100
	cost = 10000
	talkcount = 1
	return
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
