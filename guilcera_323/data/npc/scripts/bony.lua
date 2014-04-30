-- Bony by Peonso

ox = 240
oy = 250
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
        selfSay('Please wait ' .. creatureGetName(cid) .. '')
        end
	end
	if(focus == 0) then
	selfSay('Hail guy, where do you want to go?')
	focus = cid
	end
	talk_start = os.clock()
end

if string.find(msg, '(%a*)offer(%a*)') and cid == focus then
	selfSay('I am traveling to Taumel, Dodoma, Cona, Xanadu, Caralin and Turim.')
end

if string.find(msg, '(%a*)passage(%a*)') and cid == focus then
	selfSay('I am traveling to Taumel, Dodoma, Cona, Xanadu, Caralin and Turim.')
end

if string.find(msg, 'taumel') and cid == focus then
	selfSay('Do you want to go to Taumel for 50 gold pieces?')
	talk_start = os.clock()
	talkcount = 4
	boat = 2
	return
end

if string.find(msg, 'dodoma') and cid == focus then
	selfSay('Do you want to go to Dodoma for 100 gold pieces?')
	talk_start = os.clock()
	talkcount = 4
	boat = 3
	return
end

if string.find(msg, 'cona') and cid == focus then
	selfSay('Do you want to go to Cona for 100 gold pieces?')
	talk_start = os.clock()
	talkcount = 4
	boat = 4
	return
end

if string.find(msg, 'xanadu') and cid == focus then
	selfSay('Do you want to go to Xanadu for 100 gold pieces?')
	talk_start = os.clock()
	talkcount = 4
	boat = 5
	return
end

if string.find(msg, 'caralin') and cid == focus then
	selfSay('Do you want to go to Caralin for 150 gold pieces?')
	talk_start = os.clock()
	talkcount = 4
	boat = 7
	return
end

if string.find(msg, 'turim') and cid == focus then
	selfSay('Do you want to go to Turim for 50 gold pieces?')
	talk_start = os.clock()
	talkcount = 4
	boat = 8
	return
end

if string.find(msg, '(%a*)yes(%a*)') and cid == focus and talkcount == 4 then
if boat == 2 then
	npcTeleport(cid,311,38,7,50,0)
	focus = 0
	talk_start = 0
	boat = 0
	selfSay('Good travel.')
end
if boat == 3 then
	npcTeleport(cid,172,106,7,100,0)
	focus = 0
	talk_start = 0
	boat = 0
	selfSay('Good travel.')
end
if boat == 4 then
	npcTeleport(cid,61,86,7,100,0)
	focus = 0
	talk_start = 0
	boat = 0
	selfSay('Good travel.')
end
if boat == 5 then
	npcTeleport(cid,416,459,7,100,0)
	focus = 0
	talk_start = 0
	boat = 0
	selfSay('Good travel.')
end
if boat == 7 then
	npcTeleport(cid,196,556,7,150,0)
	focus = 0
	talk_start = 0
	boat = 0
	selfSay('Good travel.')
end
if boat == 8 then
	npcTeleport(cid,594,152,7,50,0)
	focus = 0
	talk_start = 0
	boat = 0
	selfSay('Good travel.')
end
if paid == 0 then 
	selfSay('Sorry, you do not have enough money.')
	talkcount = 0
	boat = 0
	talk_start = os.clock()
end
end

if string.find(msg, '(%a*)no(%a*)') and cid == focus then
	selfSay('Ok.')
	itemid = 0
	count = 0
	cost = 0
	talkcount = 0
	boat = 0
end 

if string.find(msg, 'bye(%a*)') and cid == focus then
	selfSay('Farewell, ' .. creatureGetName(cid) .. '!')
	focus = 0
	itemid = 0
	talk_start = 0
	talkcount = 0
	boat = 0
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
