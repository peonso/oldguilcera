-- Tom by Peonso

ox = 230
oy = 214
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
	selfSay('Hi, ' .. creatureGetName(cid) .. '! Are you new in Peonsville? I am Tom, I sell and buy some equipments.')
	focus = cid
	end
	talk_start = os.clock()
end

if string.find(msg, '(%a*)offer(%a*)') and cid == focus then
	selfSay('I am selling Shovel, Rope, Machete, Knife, Sickle, Crowbar, Snowballs, Fishing Rod and Backpacks. And I also buy War Hammers, Maces, Swords and Brass Helmets.')
end

if string.find(msg, '(%a*)equip(%a*)') and cid == focus then
	selfSay('I am selling Shovel, Rope, Machete, Knife, Sickle, Crowbar, Snowballs, Fishing Rod and Backpacks. And I also buy War Hammers, Maces, Swords and Brass Helmets.')
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

if string.find(msg, '(%a*)snowball(%a*)') and cid == focus then
	selfSay('100 snowballs costs 100 gold pieces, do you want to buy?')
	talk_start = os.clock()
	itemid = 2111
	count = 100
	cost = 100
	talkcount = 1
	return
end

if string.find(msg, '(%a*)machete(%a*)') and cid == focus then
	selfSay('A fishing rod costs 70 gold pieces, do you want to buy one?')
	talk_start = os.clock()
	itemid = 2420
	count = 1
	cost = 70
	talkcount = 1
	return
end

if string.find(msg, '(%a*)crowbar(%a*)') and cid == focus then
	selfSay('A crowbar costs 260 gold pieces, do you want to buy one?')
	talk_start = os.clock()
	itemid = 2416
	count = 1
	cost = 260
	talkcount = 1
	return
end

if string.find(msg, '(%a*)sickle(%a*)') and cid == focus then
	selfSay('A sickle costs 7 gold pieces, do you want to buy one?')
	talk_start = os.clock()
	itemid = 2405
	count = 1
	cost = 7
	talkcount = 1
	return
end

if string.find(msg, '(%a*)knife(%a*)') and cid == focus then
	selfSay('A knife costs 1 gold piece, do you want to buy one?')
	talk_start = os.clock()
	itemid = 2403
	count = 1
	cost = 1
	talkcount = 1
	return
end

if string.find(msg, '(%a*)backpack(%a*)') and cid == focus then
	selfSay('A backpack costs 20 gold pieces, do you want to buy one?')
	talk_start = os.clock()
	itemid = 1998
	count = 1
	cost = 20
	talkcount = 1
	return
end

if string.find(msg, 'sword(%a*)') and cid == focus then
	selfSay('Do you wish to sell your sword for 25 gold pieces?')
	talk_start = os.clock()
	itemid = 2376
	count = 1
	cost = 25
	talkcount = 2
	return
end

if string.find(msg, 'mace(%a*)') and cid == focus then
	selfSay('Do you wish to sell your mace for 30 gold pieces?')
	talk_start = os.clock()
	itemid = 2398
	count = 1
	cost = 30
	talkcount = 2
	return
end

if string.find(msg, 'war hammer(%a*)') and cid == focus then
	selfSay('Do you wish to sell your war hammer for 950 gold pieces?')
	talk_start = os.clock()
	itemid = 2391
	count = 1
	cost = 950
	talkcount = 2
	return
end

if string.find(msg, 'brass helmet(%a*)') and cid == focus then
	selfSay('Do you wish to sell your brass helmet for 30 gold pieces?')
	talk_start = os.clock()
	itemid = 2460
	count = 1
	cost = 30
	talkcount = 2
	return
end

if string.find(msg, 'sell sword(%a*)') and cid == focus then
	selfSay('Do you wish to sell your sword for 25 gold pieces?')
	talk_start = os.clock()
	itemid = 2376
	count = 1
	cost = 25
	talkcount = 2
	return
end

if string.find(msg, 'sell mace(%a*)') and cid == focus then
	selfSay('Do you wish to sell your mace for 30 gold pieces?')
	talk_start = os.clock()
	itemid = 2398
	count = 1
	cost = 30
	talkcount = 2
	return
end

if string.find(msg, 'sell war hammer(%a*)') and cid == focus then
	selfSay('Do you wish to sell your war hammer for 950 gold pieces?')
	talk_start = os.clock()
	itemid = 2391
	count = 1
	cost = 950
	talkcount = 2
	return
end

if string.find(msg, 'sell brass helmet(%a*)') and cid == focus then
	selfSay('Do you wish to sell your brass helmet for 30 gold pieces?')
	talk_start = os.clock()
	itemid = 2460
	count = 1
	cost = 30
	talkcount = 2
	return
end

if string.find(msg, '(%a*)sell 10 sword(%a*)') and cid == focus then
	selfSay('Do you wish to sell 10 swords for 250 gold pieces?')
	talk_start = os.clock()
	itemid = 2376
	count = 1
	cost = 25
	talkcount = 40
	return
end

if string.find(msg, '(%a*)sell 10 mace(%a*)') and cid == focus then
	selfSay('Do you wish to sell 10 maces for 300 gold pieces?')
	talk_start = os.clock()
	itemid = 2398
	count = 1
	cost = 30
	talkcount = 40
	return
end

if string.find(msg, '(%a*)sell 10 war hammer(%a*)') and cid == focus then
	selfSay('Do you wish to sell 10 war hammers for 9500 gold pieces?')
	talk_start = os.clock()
	itemid = 2391
	count = 1
	cost = 950
	talkcount = 40
	return
end

if string.find(msg, '(%a*)sell 10 brass helmet(%a*)') and cid == focus then
	selfSay('Do you wish to sell 10 brass helmets for 300 gold pieces?')
	talk_start = os.clock()
	itemid = 2460
	count = 1
	cost = 30
	talkcount = 40
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
	talkcount = 0
	BuyItem(focus,itemid,count,cost)
end

if string.find(msg, 'yes(%a*)') and cid == focus and talkcount == 2 then 
	SellItem(focus,itemid,count,cost)
	talkcount = 0
end

if string.find(msg, 'yes(%a*)') and cid == focus and talkcount == 40 then       
	SellItem(focus,itemid,count,cost)
	SellItem(focus,itemid,count,cost)
	SellItem(focus,itemid,count,cost)
	SellItem(focus,itemid,count,cost)
	SellItem(focus,itemid,count,cost)
	SellItem(focus,itemid,count,cost)
	SellItem(focus,itemid,count,cost)
	SellItem(focus,itemid,count,cost)
	SellItem(focus,itemid,count,cost)
	SellItem(focus,itemid,count,cost)
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
