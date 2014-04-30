-- Mishra by Peonso

ox = 60
oy = 71
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
	selfSay('Hi, ' .. creatureGetName(cid) .. '! Welcome to Cona! I am Mishra, I am selling some equipments and if you want I can trade gold coints.')
	focus = cid
	end
	talk_start = os.clock()
end

if string.find(msg, '(%a*)offer(%a*)') and cid == focus then
	selfSay('I am selling Shovel, Rope, Fishing Rod and Backpacks. And I also sell hams.')
end

if string.find(msg, '(%a*)equip(%a*)') and cid == focus then
	selfSay('I am selling Shovel, Rope, Fishing Rod and Backpacks. And I also sell hams.')
end

if string.find(msg, '(%a*)ham(%a*)') and cid == focus then
	selfSay('Do you want a ham for 4 gold pieces?')
	talk_start = os.clock()
	itemid = 2671
	count = 1
	cost = 4
	talkcount = 1
	return
end

if string.find(msg, '(%a*)10 ham(%a*)') and cid == focus then
	selfSay('Do you want a ham for 40 gold pieces?')
	talk_start = os.clock()
	itemid = 2671
	count = 10
	cost = 4
	talkcount = 10
	return
end

if string.find(msg, '(%a*)20 ham(%a*)') and cid == focus then
	selfSay('Do you want a ham for 400 gold pieces?')
	talk_start = os.clock()
	itemid = 2671
	count = 100
	cost = 4
	talkcount = 20
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

if string.find(msg, '(%a*)rod(%a*)') and cid == focus then
	selfSay('A fishing rod costs 150 gold pieces, do you want to buy one?')
	talk_start = os.clock()
	itemid = 2580
	count = 1
	cost = 150
	talkcount = 1
	return
end

if string.find(msg, '(%a*)backpack(%a*)') and cid == focus then
	selfSay('A backpack costs 20 gold pieces, do you want to buy one?')
	talk_start = os.clock()
	itemid = 2002
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

if string.find(msg, 'yes(%a*)') and cid == focus and talkcount == 20 then       
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
