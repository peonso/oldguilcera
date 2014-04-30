-- HoTS
-- Promotion Seller
-- Premmy Seller

target = 0 
following = false 
attacking = false 
focus = 0
premium = 0
promoted = 0

talk_start = 0 

function onThingMove(creature, thing, oldpos, oldstackpos) 
end 


function onCreatureAppear(creature) 
end 


function onCreatureDisappear(id) 
if id == target then 
target = 0 
attacking = false 
selfAttackCreature(0) 
following = false 
StopSpeaking()
end 

focus = 0
premium = 0 
promoted = 0 
end 


function onCreatureTurn(creature) 
end 


function onCreatureSay(cid, type, msg) 
msg = string.lower(msg) 


dist = getDistanceToCreature(cid)
		if dist >= 7 then

   return

end

-- greeting phrase 
if string.find(msg, '(%a*)hi(%a*)') and focus == 0 then 
selfSay('Hello, ' .. creatureGetName(cid) .. '!') 
focus = cid 
Look(focus)
Speaking()
talk_start = os.clock() 
end 

-- greeting phrase 
if string.find(msg, '(%a*)greetings(%a*)') and focus == 0 then
selfSay('Hello, ' .. creatureGetName(cid) .. '!') 
focus = cid 
Look(focus)
talk_start = os.clock() 
end 

-- He wants buy a premium!! 
if string.find(msg, '(%a*)premmy(%a*)') and cid == focus then 
selfSay('Do you want buy a premmium account?') 
talk_start = os.clock()
premium = 1
promoted = 0
end

-- farewell phrase 
if string.find(msg, '(%a*)bye(%a*)') and cid == focus then 
selfSay('Farewell, ' .. creatureGetName(cid) .. '!') 
focus = 0 
premium = 0
promoted = 0
talk_start = 0 
StopSpeaking()
end 

-- farewell phrase 
if string.find(msg, '(%a*)farewell(%a*)') and cid == focus then 
selfSay('Farewell, ' .. creatureGetName(cid) .. '!') 
focus = 0 
premium = 0
promoted = 0 
talk_start = 0 
StopSpeaking()
end 

if string.find(msg, '(%a*)promotion(%a*)') and cid == focus then
if creatureGetLevel(cid) >= 20 then
selfSay('' .. creatureGetName(cid) .. ' you want buy a promotion for 10k?')
promoted = true
else
promoted = false
selfSay('You are too small!')
selfSay('You need level 20 or higher! Noob!')
end
end

if string.find(msg, '(%a*)yes(%a*)') and cid == focus then
if premium == 1 then
premmy(focus)  
premium = 0
promoted = 0
end
if promoted == true then
promotion(focus)
promoted = 0
premium = 0
end
end

talk_start = os.clock() 
end

function onCreatureChangeOutfit(creature) 
end 


function onThink() 

if (os.clock() - talk_start) > 10 then 
if focus > 0 then 
selfSay('C ya, ' .. creatureGetName(focus) .. '!') 
StopSpeaking()
end 

focus = 0 
premium = 0
promoted = 0
talk_start = 0 
end 
end