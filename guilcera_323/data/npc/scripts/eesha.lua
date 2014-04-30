-- Eesha by Peonso

ox = 172
oy = 116
oz = 8
max = 15
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
	selfSay('Hail, ' .. creatureGetName(cid) .. '! I buy a great number of good equipments.')
	focus = cid
	end
	talk_start = os.clock()
end

if string.find(msg, '(%a*)offer(%a*)') and cid == focus then
	selfSay('I buy all! Try to sell.')
end

if string.find(msg, 'sell steel helmet') and cid == focus then
	selfSay('Do you wish to sell your steel helmet for 200 gold pieces?')
	talk_start = os.clock()
	itemid = 2457
	count = 1
	cost = 200
	talkcount = 2
	return
end

if string.find(msg, 'sell dark helmet') and cid == focus then
	selfSay('Do you wish to sell your dark helmet for 200 gold pieces?')
	talk_start = os.clock()
	itemid = 2490
	count = 1
	cost = 200
	talkcount = 2
	return
end

if string.find(msg, 'sell crown helmet') and cid == focus then
	selfSay('Do you wish to sell your crown helmet for 3000 gold pieces?')
	talk_start = os.clock()
	itemid = 2491
	count = 1
	cost = 3000
	talkcount = 2
	return
end

if string.find(msg, 'sell warrior helmet') and cid == focus then
	selfSay('Do you wish to sell your warrior helmet for 6000 gold pieces?')
	talk_start = os.clock()
	itemid = 2475
	count = 1
	cost = 6000
	talkcount = 2
	return
end

if string.find(msg, 'sell crusader helmet') and cid == focus then
	selfSay('Do you wish to sell your crusader helmet for 6000 gold pieces?')
	talk_start = os.clock()
	itemid = 2497
	count = 1
	cost = 6000
	talkcount = 2
	return
end

if string.find(msg, 'sell royal helmet') and cid == focus then
	selfSay('Do you wish to sell your royal helmet for 80000 gold pieces?')
	talk_start = os.clock()
	itemid = 2498
	count = 1
	cost = 80000
	talkcount = 2
	return
end

if string.find(msg, 'sell scale armor') and cid == focus then
	selfSay('Do you wish to sell your scale armor for 100 gold pieces?')
	talk_start = os.clock()
	itemid = 2483
	count = 1
	cost = 100
	talkcount = 2
	return
end

if string.find(msg, 'sell plate armor') and cid == focus then
	selfSay('Do you wish to sell your plate armor for 400 gold pieces?')
	talk_start = os.clock()
	itemid = 2463
	count = 1
	cost = 400
	talkcount = 2
	return
end

if string.find(msg, 'sell dark armor') and cid == focus then
	selfSay('Do you wish to sell your dark armor for 1000 gold pieces?')
	talk_start = os.clock()
	itemid = 2489
	count = 1
	cost = 1000
	talkcount = 2
	return
end

if string.find(msg, 'sell blue robe') and cid == focus then
	selfSay('Do you wish to sell your blue robe for 30000 gold pieces?')
	talk_start = os.clock()
	itemid = 2656
	count = 1
	cost = 30000
	talkcount = 2
	return
end

if string.find(msg, 'sell crown armor') and cid == focus then
	selfSay('Do you wish to sell your crown armor for 30000 gold pieces?')
	talk_start = os.clock()
	itemid = 2487
	count = 1
	cost = 30000
	talkcount = 2
	return
end

if string.find(msg, 'sell knight armor') and cid == focus then
	selfSay('Do you wish to sell your knight armor for 15000 gold pieces?')
	talk_start = os.clock()
	itemid = 2476
	count = 1
	cost = 15000
	talkcount = 2
	return
end

if string.find(msg, 'sell golden armor') and cid == focus then
	selfSay('Do you wish to sell your golden armor for 90000 gold pieces?')
	talk_start = os.clock()
	itemid = 2466
	count = 1
	cost = 90000
	talkcount = 2
	return
end

if string.find(msg, 'sell plate legs') and cid == focus then
	selfSay('Do you wish to sell your plate legs for 2000 gold pieces?')
	talk_start = os.clock()
	itemid = 2647
	count = 1
	cost = 2000
	talkcount = 2
	return
end

if string.find(msg, 'sell knight legs') and cid == focus then
	selfSay('Do you wish to sell your plate armor for 20000 gold pieces?')
	talk_start = os.clock()
	itemid = 2477
	count = 1
	cost = 20000
	talkcount = 2
	return
end

if string.find(msg, 'sell crown legs') and cid == focus then
	selfSay('Do you wish to sell your crown legs for 35000 gold pieces?')
	talk_start = os.clock()
	itemid = 2488
	count = 1
	cost = 35000
	talkcount = 2
	return
end

if string.find(msg, 'sell platinum amulet') and cid == focus then
	selfSay('Do you wish to sell your plate armor for 10000 gold pieces?')
	talk_start = os.clock()
	itemid = 2171
	count = 1
	cost = 10000
	talkcount = 2
	return
end

if string.find(msg, 'sell spike sword') and cid == focus then
	selfSay('Do you wish to sell your spike sword for 2000 gold pieces?')
	talk_start = os.clock()
	itemid = 2383
	count = 1
	cost = 2000
	talkcount = 2
	return
end

if string.find(msg, 'sell serpent sword') and cid == focus then
	selfSay('Do you wish to sell your serpent sword for 2000 gold pieces?')
	talk_start = os.clock()
	itemid = 2409
	count = 1
	cost = 2000
	talkcount = 2
	return
end

if string.find(msg, 'sell fire sword') and cid == focus then
	selfSay('Do you wish to sell your fire sword for 15000 gold pieces?')
	talk_start = os.clock()
	itemid = 2392
	count = 1
	cost = 15000
	talkcount = 2
	return
end

if string.find(msg, 'sell giant sword') and cid == focus then
	selfSay('Do you wish to sell your giant sword for 35000 gold pieces?')
	talk_start = os.clock()
	itemid = 2393
	count = 1
	cost = 35000
	talkcount = 2
	return
end

if string.find(msg, 'sell halberd') and cid == focus then
	selfSay('Do you wish to sell your halberd for 600 gold pieces?')
	talk_start = os.clock()
	itemid = 2381
	count = 1
	cost = 600
	talkcount = 2
	return
end

if string.find(msg, 'sell double axe') and cid == focus then
	selfSay('Do you wish to sell your double axe for 400 gold pieces?')
	talk_start = os.clock()
	itemid = 2387
	count = 1
	cost = 400
	talkcount = 2
	return
end

if string.find(msg, 'sell knight axe') and cid == focus then
	selfSay('Do you wish to sell your knight axe for 8000 gold pieces?')
	talk_start = os.clock()
	itemid = 2430
	count = 1
	cost = 8000
	talkcount = 2
	return
end

if string.find(msg, 'sell fire axe') and cid == focus then
	selfSay('Do you wish to sell your fire axe for 26000 gold pieces?')
	talk_start = os.clock()
	itemid = 2432
	count = 1
	cost = 26000
	talkcount = 2
	return
end

if string.find(msg, 'sell two handed sword') and cid == focus then
	selfSay('Do you wish to sell your two handed sword for 500 gold pieces?')
	talk_start = os.clock()
	itemid = 2377
	count = 1
	cost = 500
	talkcount = 2
	return
end

if string.find(msg, 'sell battle hammer') and cid == focus then
	selfSay('Do you wish to sell your battle hammer for 100 gold pieces?')
	talk_start = os.clock()
	itemid = 2417
	count = 1
	cost = 100
	talkcount = 2
	return
end

if string.find(msg, 'sell clerical mace') and cid == focus then
	selfSay('Do you wish to sell your clerical mace for 500 gold pieces?')
	talk_start = os.clock()
	itemid = 2423
	count = 1
	cost = 500
	talkcount = 2
	return
end

if string.find(msg, 'sell dragon hammer') and cid == focus then
	selfSay('Do you wish to sell your dragon hammer for 3000 gold pieces?')
	talk_start = os.clock()
	itemid = 2434
	count = 1
	cost = 3000
	talkcount = 2
	return
end

if string.find(msg, 'sell skull staff') and cid == focus then
	selfSay('Do you wish to sell your skull staff for 25000 gold pieces?')
	talk_start = os.clock()
	itemid = 2436
	count = 1
	cost = 25000
	talkcount = 2
	return
end

if string.find(msg, 'sell battle shield') and cid == focus then
	selfSay('Do you wish to sell your battle shield for 100 gold pieces?')
	talk_start = os.clock()
	itemid = 2513
	count = 1
	cost = 100
	talkcount = 2
	return
end

if string.find(msg, 'sell ancient shield') and cid == focus then
	selfSay('Do you wish to sell your ancient shield for 1000 gold pieces?')
	talk_start = os.clock()
	itemid = 2532
	count = 1
	cost = 1000
	talkcount = 2
	return
end

if string.find(msg, 'sell medusa shield') and cid == focus then
	selfSay('Do you wish to sell your medusa shield for 27000 gold pieces?')
	talk_start = os.clock()
	itemid = 2536
	count = 1
	cost = 27000
	talkcount = 2
	return
end

if string.find(msg, 'sell guardian shield') and cid == focus then
	selfSay('Do you wish to sell your guardian shield for 5000 gold pieces?')
	talk_start = os.clock()
	itemid = 2515
	count = 1
	cost = 5000
	talkcount = 2
	return
end

if string.find(msg, 'sell dragon shield') and cid == focus then
	selfSay('Do you wish to sell your dragon shield for 7500 gold pieces?')
	talk_start = os.clock()
	itemid = 2516
	count = 1
	cost = 7500
	talkcount = 2
	return
end

if string.find(msg, 'sell crown shield') and cid == focus then
	selfSay('Do you wish to sell your crown shield for 20000 gold pieces?')
	talk_start = os.clock()
	itemid = 2519
	count = 1
	cost = 20000
	talkcount = 2
	return
end

if string.find(msg, 'sell tower shield') and cid == focus then
	selfSay('Do you wish to sell your tower shield for 19000 gold pieces?')
	talk_start = os.clock()
	itemid = 2528
	count = 1
	cost = 19000
	talkcount = 2
	return
end

if string.find(msg, 'sell vampire shield') and cid == focus then
	selfSay('Do you wish to sell your vampire shield for 70000 gold pieces?')
	talk_start = os.clock()
	itemid = 2534
	count = 1
	cost = 70000
	talkcount = 2
	return
end

if string.find(msg, 'sell demon shield') and cid == focus then
	selfSay('Do you wish to sell your demon shield for 99900 gold pieces?')
	talk_start = os.clock()
	itemid = 2520
	count = 1
	cost = 99900
	talkcount = 2
	return
end

if string.find(msg, 'yes(%a*)') and cid == focus and talkcount == 2 then       
	talkcount = 0
	SellItem(focus,itemid,count,cost)
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
