-- Pierre by Peonso

ox = 241
oy = 215
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
	selfSay('Hi, ' .. creatureGetName(cid) .. '! I am Pierre, I sell parcels and letters.')
	focus = cid
	end
	talk_start = os.clock()
end

if string.find(msg, '(%a*)offer(%a*)') and cid == focus then
	selfSay('I am selling parcels and letters.')
end

if string.find(msg, '(%a*)parcel(%a*)') and cid == focus then
	selfSay('A parcel costs 10 gold pieces, do you want to buy one?')
	talk_start = os.clock()
	itemid = 2595
	count = 1
	cost = 9
	talkcount = 2
	return
end

if string.find(msg, '(%a*)letter(%a*)') and cid == focus then
	selfSay('A letter costs 5 gold pieces, do you want to buy one?')
	talk_start = os.clock()
	itemid = 2597
	count = 1
	cost = 5
	talkcount = 1
	return
end

if string.find(msg, 'yes(%a*)') and cid == focus and talkcount == 1 then       
	talkcount = 0
	BuyItem(focus,itemid,count,cost)
end

if string.find(msg, 'yes(%a*)') and cid == focus and talkcount == 2 then 
	BuyItem(focus,itemid,count,cost)
	BuyItem(focus,2599,count,1)
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
