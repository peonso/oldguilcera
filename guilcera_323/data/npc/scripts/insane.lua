-- Insane by Peonso


ox = 166
oy = 140
oz = 9
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
	selfSay('I am already talking to you <^.->...')
	else if focus > 0 then
        selfSay('Stay calm...')
        end
	end
	if(focus == 0) then
	selfSay('Aew, ' .. creatureGetName(cid) .. '! Welcome to Insane Game.')
	focus = cid
	end
	talk_start = os.clock()
end

if string.find(msg, '(%a*)offer(%a*)') and cid == focus then
	selfSay('I sell the key to enter in my game. And then you die there ;D')
end

if string.find(msg, '(%a*)key(%a*)') and cid == focus then
	selfSay('Do you want a Insane Key for 666 gold pieces?')
	talk_start = os.clock()
	itemid = 2087
	count = 1
	cost = 666
	talkcount = 1
	return
end

if string.find(msg, 'yes(%a*)') and cid == focus and talkcount == 1 then       
	talkcount = 0
	BuyItem(focus,itemid,count,cost)
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
