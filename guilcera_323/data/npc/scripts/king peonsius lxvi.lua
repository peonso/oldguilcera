-- King Peonsius LXVI by Peonso

ox = 260
oy = 235
oz = 8
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

if string.find(msg, 'hail king') and string.len(msg) == 9 then
	if focus == cid then
	selfSay('I am talking to you...')
	else if focus > 0 then
        selfSay('Respect the king, wait!')
        end
	end
	if(focus == 0) then
	selfSay('Hello plebeian.')
	focus = cid
	end
	talk_start = os.clock()
end

if string.find(msg, '(%a*)offer(%a*)') and cid == focus then
	selfSay('I can promote you if you are strong enough.')
	talk_start = os.clock()
end

if string.find(msg, '(%a*)job(%a*)') and cid == focus then
	selfSay('I am Guilcera King!')
	talk_start = os.clock()
end

if string.find(msg, '(%a*)promotion(%a*)') and cid == focus then
	selfSay('Do you want to get promoted by paying 20000 gold coins?')
	talk_start = os.clock()
	talkcount = 99
	return
end

if string.find(msg, '(%a*)yes(%a*)') and cid == focus and talkcount == 99 and getPlayerLevel(creatureGetName(cid)) < 20 then
selfSay('Sorry, you are not strong yet.')
talk_start = os.clock()
talkcount = 0
end

if string.find(msg, '(%a*)yes(%a*)') and cid == focus and talkcount == 99 and isPromoted(cid) then
selfSay('I already promoted you plebian.')
talk_start = os.clock()
talkcount = 0
end

if string.find(msg, '(%a*)yes(%a*)') and cid == focus and talkcount == 99 and getPlayerLevel(creatureGetName(cid)) >= 20 and checkPromotion(cid) == 0 then
paid = PaidTax(cid,20000)
if paid == 0 then
talk_start = os.clock()
talkcount = 0
selfSay('You don\'t have enough money.')
end
if paid == 1 then
talk_start = os.clock()
talkcount = 0
selfSay('Congratulations, now you are King Peonsius warrior.')
promote(cid)
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
selfSay('Good bye then.') 
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
