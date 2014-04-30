-- Peonso by Peonso

ox = 224
oy = 227
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
        selfSay('Please wait my friend.')
        end
	end
	if(focus == 0) then
	selfSay('Welcome to Guilcera ' .. creatureGetName(cid) .. '! Im here to help you.')
	focus = cid
	end
	talk_start = os.clock()
end

if string.find(msg, '(%a*)offer(%a*)') and cid == focus then
	selfSay('I am selling nothing. You dont need to pay me for help.')
	talk_start = os.clock()
end

if string.find(msg, '(%a*)job(%a*)') and cid == focus then
	selfSay('I am only a good monk that help people on there start on Guilcera.')
	talk_start = os.clock()
end

if string.find(msg, '(%a*)help(%a*)') and cid == focus then
	selfSay('In Guilcera you are only a comum human, try to learn some spells with Peonsville magicians.')
selfSay('Also be prepared for dangerous situations, there are lot of powerful monsters in this land.') 
	talk_start = os.clock()
end

if string.find(msg, '(%a*)quest(%a*)') and cid == focus then
	selfSay('I have noticied that King Peonsius III keeps some great equipment on a secret room in the city underground, try to found it.')
	talk_start = os.clock()
end

if string.find(msg, 'bye(%a*)') and cid == focus then
	selfSay('Till other day ' .. creatureGetName(cid) .. '.')
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

if focus == 0 then
moveRandom(ox,oy,max)
end

end
