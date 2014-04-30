-- Poorman by Peonso

ox = 309
oy = 122
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
	selfSay('Fuck you ' .. creatureGetName(cid) .. ' Wait a minute please.')
        end
	end
	if(focus == 0) then
	selfSay('Ohh! Hi, my head is shaking!... I´m having some flashes.')
	queststatus = getPlayerStorageValue(cid,777)
	if queststatus == 1 then
	talkcount = 32
	end
	focus = cid
	end
	talk_start = os.clock()
end

if string.find(msg, '(%a*)flashes(%a*)') and cid == focus then
	selfSay('Yeah, some flashes of memory. Seems that I lived in a small island selling some powerful amulets. So small island...')
	talkcount = 30
	return
end

if string.find(msg, 'amulet') and string.len(msg) == 6 and cid == focus and talkcount == 30 then
 selfSay('The guy paid 500 platinum coins on it!')
	talkcount = 31
	return
end

if string.find(msg, '(%a*)eremo(%a*)') and cid == focus and talkcount == 30 then
 selfSay('Yeah! That my name! Now I remenber all! I sell powerful Amulets of Loss and Powerful Runes.')
	setPlayerStorageValue(cid,777,1)
	talkcount = 32
	return
end

if string.find(msg, '(%a*)eremo(%a*)') and cid == focus and talkcount == 31 then
 selfSay('Yeah! That my name! Now I remenber all! I sell powerful Amulets of Loss and Powerful Runes.')
	setPlayerStorageValue(cid,777,1)
	talkcount = 32
	return
end

if string.find(msg, '(%a*)offer(%a*)') and cid == focus and talkcount == 32 then
	selfSay('I sell powerful Amulets of Loss and Powerful Runes.')
	talk_start = os.clock()
	return
end

if string.find(msg, '(%a*)amulet of loss(%a*)') and cid == focus and talkcount == 32 then
	selfSay('Do you wanna buy an Amulet of Loss for 500 platinum coins?')
	talk_start = os.clock()
	itemid = 2173
	count = 1
	cost = 50000
	talkcount = 1
	return
end


if string.find(msg, 'sudden death rune') and cid == focus and talkcount == 32 then
	selfSay('Do you want to buy a Powerful Sudden Death Rune for 170 platinum coins?')
	talk_start = os.clock()
	itemid = 2268
	count = 100
	cost = 17000
	talkcount = 1
	return
end

if string.find(msg, 'ultimate healing rune') and cid == focus and talkcount == 32 then
	selfSay('Do you want to buy a Powerful Ultimate Healing Rune for 80 platinum coins?')
	talk_start = os.clock()
	itemid = 2273
	count = 100
	cost = 8000
	talkcount = 1
	return
end

if string.find(msg, 'great fireball rune') and cid == focus and talkcount == 32 then
	selfSay('Do you want to buy a Powerful Great Fireball Rune for 45 platinum coins?')
	talk_start = os.clock()
	itemid = 2304
	count = 100
	cost = 4500
	talkcount = 1
	return
end

if string.find(msg, 'heavy magic missile rune') and cid == focus and talkcount == 32 then
	selfSay('Do you want to buy a Powerful Heavy Magic Missile Rune for 8 platinum coins?')
	talk_start = os.clock()
	itemid = 2311
	count = 100
	cost = 800
	talkcount = 1
	return
end

if string.find(msg, 'explosion rune') and cid == focus and talkcount == 32 then
	selfSay('Do you want to buy a Powerful Explosion Rune for 50 platinum coins?')
	talk_start = os.clock()
	itemid = 2313
	count = 100
	cost = 5000
	talkcount = 1
	return
end

if string.find(msg, 'intense healing rune') and cid == focus and talkcount == 32 then
	selfSay('Do you want to buy a Powerful Instense Healing Rune for 12 platinum coins?')
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
