-- Eremo by Peonso

ox = 203
oy = 196
oz = 4
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
	selfSay('Stay calm...')
        end
	end
	if(focus == 0) then
	selfSay('I am the sage from Tibia lands, direct from a dimensional hole.')
	focus = cid
	end
	talk_start = os.clock()
end

if string.find(msg, '(%a*)offer(%a*)') and cid == focus then
	selfSay('I sell powerful runes. Sudden death rune, ultimate healing rune, great fireball rune, heavy magic missile rune, explosion rune and intense healing rune. Almost forgot, I can sell you a Amulet of Loss also.')
end

if string.find(msg, '(%a*)amulet of loss(%a*)') and cid == focus then
	selfSay('Do you wanna buy an Amulet of Loss for 50000 gold coins?')
	talk_start = os.clock()
	itemid = 2173
	count = 1
	cost = 50000
	talkcount = 1
	return
end


if string.find(msg, 'sudden death') and cid == focus then
	selfSay('Do you want to buy a Powerful Sudden Death Rune for 17000 gold coins?')
	talk_start = os.clock()
	itemid = 2268
	count = 100
	cost = 17000
	talkcount = 1
	return
end

if string.find(msg, 'ultimate healing') and cid == focus then
	selfSay('Do you want to buy a Powerful Ultimate Healing Rune for 8000 gold coins?')
	talk_start = os.clock()
	itemid = 2273
	count = 100
	cost = 8000
	talkcount = 1
	return
end

if string.find(msg, 'great fireball') and cid == focus then
	selfSay('Do you want to buy a Powerful Great Fireball Rune for 4500 gold coins?')
	talk_start = os.clock()
	itemid = 2304
	count = 100
	cost = 4500
	talkcount = 1
	return
end

if string.find(msg, 'heavy magic missile') and cid == focus then
	selfSay('Do you want to buy a Powerful Heavy Magic Missile Rune for 800 gold coins?')
	talk_start = os.clock()
	itemid = 2311
	count = 100
	cost = 800
	talkcount = 1
	return
end

if string.find(msg, 'explosion rune') and cid == focus then
	selfSay('Do you want to buy a Powerful Explosion Rune for 5000 gold coins?')
	talk_start = os.clock()
	itemid = 2313
	count = 100
	cost = 5000
	talkcount = 1
	return
end

if string.find(msg, 'intense healing rune') and cid == focus then
	selfSay('Do you want to buy a Powerful Instense Healing Rune for 1200 gold coins?')
	talk_start = os.clock()
	itemid = 2265
	count = 100
	cost = 1200
	talkcount = 1
	return
end

if string.find(msg, 'yes(%a*)') and cid == focus and talkcount == 1 then       
	talkcount = 32
	BuyItem(focus,itemid,count,cost)
end

if string.find(msg, '(%a*)no(%a*)') and cid == focus then
	selfSay('Ok, is there something else you want? If so tell me.')
	itemid = 0
	count = 0
	cost = 0
	talkcount = 0
	queststatus = getPlayerStorageValue(cid,777)
	if queststatus == 1 then
	talkcount = 32
	end
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
