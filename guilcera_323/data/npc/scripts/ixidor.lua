-- Ixidor by Peonso

ox = 337
oy = 50
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
	selfSay('I am already talking to you...')
	else if focus > 0 then
        selfSay('Stay calm...')
        end
	end
	if(focus == 0) then
	selfSay('Hail my friend.')
	focus = cid
	end
	talk_start = os.clock()
end

if string.find(msg, '(%a*)offer(%a*)') and cid == focus then
	selfSay('I sell blank runes, mana fluids and hams.')
end

if string.find(msg, 'mana fluid') and string.len(msg) == 10 and cid == focus then
	selfSay('A vial with mana fluid costs 55 gold coins, do you want to buy one?')
	talk_start = os.clock()
	itemid = 2006
	count = 7
	cost = 55
	talkcount = 1
	return
end

if string.find(msg, '(%a*)10 mana fluid(%a*)') and cid == focus then
	selfSay('10 vials with mana fluid costs 550 gold coins, do you want to buy?')
	talk_start = os.clock()
	itemid = 2006
	count = 7
	cost = 55
	talkcount = 10
	return
end

if string.find(msg, '(%a*)20 mana fluid(%a*)') and cid == focus then
	selfSay('20 vials with mana fluid costs 1100 gold coins, do you want to buy?')
	talk_start = os.clock()
	itemid = 2006
	count = 7
	cost = 55
	talkcount = 20
	return
end

if string.find(msg, 'rune') and string.len(msg) == 4 and cid == focus then
	selfSay('A blank rune costs 10 gold coins, do you want to buy one?')
	talk_start = os.clock()
	itemid = 2260
	count = 1
	cost = 10
	talkcount = 1
	return
end

if string.find(msg, 'blank') and string.len(msg) == 5 and cid == focus then
	selfSay('A blank rune costs 10 gold coins, do you want to buy one?')
	talk_start = os.clock()
	itemid = 2260
	count = 1
	cost = 10
	talkcount = 1
	return
end

if string.find(msg, '(%a*)10 blank(%a*)') and cid == focus then
	selfSay('10 blank runes costs 100 gold coins, do you want to buy?')
	talk_start = os.clock()
	itemid = 2260
	count = 1
	cost = 10
	talkcount = 10
	return
end

if string.find(msg, '(%a*)20 blank(%a*)') and cid == focus then
	selfSay('20 blank runes costs 200 gold coins, do you want to buy?')
	talk_start = os.clock()
	itemid = 2260
	count = 1
	cost = 10
	talkcount = 20
	return
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
