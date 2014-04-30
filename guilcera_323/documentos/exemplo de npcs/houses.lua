-- Scripts by TLM TEAM
-- Modified by HoTS

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


function onCreatureDisappear(id) 
if id == target then 
target = 0 
attacking = false 
selfAttackCreature(0) 
following = false 
StopSpeaking()
end 

focus = 0
itemid = 0 
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

  if string.find(msg, '(%a*)hi(%a*)') and string.len(msg) == 2 then
     if focus == cid then
        selfSay('I am already talking to you!')
     else if focus > 0 then
        selfSay('' .. creatureGetName(cid) .. ', please wait until it is your turn!')
        end
     end
     if(focus == 0) then
        selfSay('Hello, ' .. creatureGetName(cid) .. ', welcome to my houses shop!') 
        focus = cid
	Look(focus)
	Speaking()
     end
     talk_start = os.clock()
  end

  if string.find(msg, '(%a*)hello(%a*)') and string.len(msg) == 5 then
     if focus == cid then
        selfSay('I am already talking to you!')
     else if focus > 0 then
        selfSay('' .. creatureGetName(cid) .. ', please wait until it is your turn!')
        end
     end
     if(focus == 0) then
        selfSay('Hello, ' .. creatureGetName(cid) .. ', welcome to my houses shop!') 
        focus = cid
	Look(focus)
	Speaking()
     end
     talk_start = os.clock()
  end

  if string.find(msg, '(%a*)hey(%a*)') and string.len(msg) == 3 then
     if focus == cid then
        selfSay('I am already talking to you!')
     else if focus > 0 then
        selfSay('' .. creatureGetName(cid) .. ', please wait until it is your turn!')
        end
     end
     if(focus == 0) then
        selfSay('Hello, ' .. creatureGetName(cid) .. ', welcome to my houses shop!') 
	focus = cid
	Look(focus)
	Speaking()
     end
     talk_start = os.clock()
  end

  if string.find(msg, '(%a*)bye(%a*)') and cid == focus then 
     selfSay('Farewell, ' .. creatureGetName(cid) .. '!') 
focus = 0 
itemid = 0
talk_start = 0 
talkcount = 0
StopSpeaking()
  end 

  if string.find(msg, '(%a*)farewell(%a*)') and cid == focus then 
     selfSay('Farewell, ' .. creatureGetName(cid) .. '!') 
focus = 0 
itemid = 0
talk_start = 0 
talkcount = 0
StopSpeaking()
  end


if string.find(msg, 'edron house x') and string.len(msg) == 13 and cid == focus then       
     BuyHouse(cid,226,215,7,5000)
  end

if string.find(msg, 'edron house i') and string.len(msg) == 13 and cid == focus then       
     BuyHouse(cid,195,222,7,5000)
  end

if string.find(msg, 'edron house ii') and string.len(msg) == 14 and cid == focus then       
     BuyHouse(cid,195,227,7,5000)
  end

if string.find(msg, 'edron house iii') and string.len(msg) == 15 and cid == focus then       
     BuyHouse(cid,195,233,7,5000)
  end

if string.find(msg, 'edron house iv') and string.len(msg) == 14 and cid == focus then       
     BuyHouse(cid,196,242,7,100000)
  end

if string.find(msg, 'edron house v') and string.len(msg) == 13 and cid == focus then       
     BuyHouse(cid,210,233,7,5000)
  end

if string.find(msg, 'edron house vi') and string.len(msg) == 14 and cid == focus then       
     BuyHouse(cid,210,227,7,5000)
  end

if string.find(msg, 'Edron House VII') and string.len(msg) == 15 and cid == focus then       
     BuyHouse(cid,210,222,7,5000)
  end

if string.find(msg, 'Edron House VIII') and string.len(msg) == 16 and cid == focus then       
     BuyHouse(cid,195,212,7,10000)
  end

if string.find(msg, 'Edron House IX') and string.len(msg) == 14 and cid == focus then       
     BuyHouse(cid,205,212,7,10000)
  end

if string.find(msg, 'Edron House XI') and string.len(msg) == 14 and cid == focus then       
     BuyHouse(cid,231,222,7,5000)
  end

if string.find(msg, 'Edron House XII') and string.len(msg) == 15 and cid == focus then       
     BuyHouse(cid,231,230,7,5000)
  end

end


function onCreatureChangeOutfit(creature)
end


function onThink() 

if (os.clock() - talk_start) > 10 then 
if focus > 0 then 
selfSay('Next please!') 
talkcount = 0
StopSpeaking()
end 

focus = 0 
itemid = 0
talk_start = 0 
end 
end
