-- Cornehlia by Peonso

ox = 186
oy = 242
oz = 6
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
	selfSay('I am already talking to you!')
	else if focus > 0 then
        selfSay('Fuck you guy, can´t you see that I´m busy?')
        end
	end
	if(focus == 0) then
	selfSay('What do you want BASTARD? Wanna buy some spells? Or some torchs?')
	selfSay('They are only for knights...')
	focus = cid
	end
	talk_start = os.clock()
end

if string.find(msg, '(%a*)offer(%a*)') and cid == focus then
	selfSay('I´m selling torchs and spells for knight, I NEED TO REAPEAT AGAIN?')
end

if string.find(msg, '(%a*)spell(%a*)') and cid == focus then
 selfSay('You can get Light and Light Healing for free, and I am also selling Haste, Great Light and Berserk. ASSHOLE!')
end

if string.find(msg, '(%a*)torch(%a*)') and cid == focus then
	selfSay('A torch costs 5 gold pieces, do you want to buy one?')
	talk_start = os.clock()
	itemid = 2050
	count = 1
	cost = 5
	talkcount = 1
	return
end

if string.find(msg, 'light healing') and string.len(msg) == 13 and cid == focus then
	selfSay('Do you want to learn light healing for free?')
	talk_start = os.clock()
	talkcount = 3
	magic = 1
	return
end

if string.find(msg, 'haste') and cid == focus then
	selfSay('Do you want to learn haste for 600 gold coins?')
	talk_start = os.clock()
	talkcount = 3
	magic = 2
	return
end

if string.find(msg, 'berserk') and cid == focus then
	selfSay('Do you want to learn berserk for 2500 gold coins?')
	talk_start = os.clock()
	talkcount = 3
	magic = 3
	return
end

if string.find(msg, 'light') and string.len(msg) == 5 and cid == focus then
	selfSay('Do you want to learn light for free?')
	talk_start = os.clock()
	talkcount = 3
	magic = 4
	return
end

if string.find(msg, 'great light') and string.len(msg) == 11 and cid == focus then
	selfSay('Do you want to learn light for 600 gold coins?')
	talk_start = os.clock()
	talkcount = 3
	magic = 5
	return
end

if string.find(msg, '(%a*)yes(%a*)') and cid == focus and talkcount == 3 then       
	talkcount = 0
	talk_start = os.clock()
if magic == 1 and getPlayerVocation(cid) == 4 then
	learnSpell(cid,"exura",0)
end
if magic == 2 and getPlayerVocation(cid) == 4 then
	learnSpell(cid,"utani hur",600)
end
if magic == 3 and getPlayerVocation(cid) == 4 then
if isPromoted(cid) then
	learnSpell(cid,"exori",600)
else
selfSay('Sorry you are not promoted.')
end
end
if magic == 4 and getPlayerVocation(cid) == 4 then
	learnSpell(cid,"utevo lux",0)
end
if magic == 5 and getPlayerVocation(cid) == 4 then
	learnSpell(cid,"utevo gran lux",600)
end
if  getPlayerVocation(cid) == 1 or getPlayerVocation(cid) == 2 or getPlayerVocation(cid) == 3 then
	selfSay('I SAID ONLY FOR KINGHTS! You are so dumb.')
end
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
	selfSay('Yeah! I am with TPM!')
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
selfSay('Ignoring me? Next please!') 
talkcount = 0
end 
focus = 0 
itemid = 0
talk_start = 0 
end 

if focus ~= 0 then
if getDistanceToCreature(focus) > 7 then
selfSay('Say bye fucking stupid.')
focus = 0
end
end

if(focus == 0) then
moveRandom(ox,oy,max)
end

end
