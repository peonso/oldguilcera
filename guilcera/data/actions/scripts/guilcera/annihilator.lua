-- Annihilator script v2.1 by GriZzm0. 7.5 by Peonso.
-- player?pos  = The position of the players before teleport.
-- player?  = Get the thing from playerpos.
-- player?level = Get the players levels.
-- questslevel  = The level you have to be to do this quest.
-- questtatus?  = Get the quest status of the players.
-- demon?pos  = The position of the demons.
-- nplayer?pos  = The position where the players should be teleported too.
-- 8000 = The switch.
-- 6000 = Demon Armor chest.
-- 6001 = Magic Sword chest.
-- 6002 = Stonecutter Axe chest.
-- 6003 = Thunder Hammer.

function onUse(cid, item, frompos, item2, topos)
if item.uid == 8000 then
 if item.itemid == 1945 then

  player1pos = {x=426, y=93, z=11, stackpos=253}
  player1 = getThingfromPos(player1pos)

  player2pos = {x=425, y=93, z=11, stackpos=253}
  player2 = getThingfromPos(player2pos)

  player3pos = {x=424, y=93, z=11, stackpos=253}
  player3 = getThingfromPos(player3pos)

  player4pos = {x=423, y=93, z=11, stackpos=253}
  player4 = getThingfromPos(player4pos)


  if player1.itemid > 0 and player2.itemid > 0 and player3.itemid > 0 and player4.itemid > 0 then

   player1level = getPlayerLevel(player1.uid)
   player2level = getPlayerLevel(player2.uid)
   player3level = getPlayerLevel(player3.uid)
   player4level = getPlayerLevel(player4.uid)

   questlevel = 100

   if player1level >= questlevel and player2level >= questlevel and player3level >= questlevel and player4level >= questlevel then

    queststatus1 = getPlayerStorageValue(player1.uid,6026)
    queststatus2 = getPlayerStorageValue(player2.uid,6026)
    queststatus3 = getPlayerStorageValue(player3.uid,6026)
    queststatus4 = getPlayerStorageValue(player4.uid,6026)

    if queststatus1 == -1 and queststatus2 == -1 and queststatus3 == -1 and queststatus4 == -1 then

     demon1pos = {x=426, y=77, z=11}
     demon2pos = {x=428, y=77, z=11}
     demon3pos = {x=430, y=79, z=11}
     demon4pos = {x=431, y=79, z=11}
     demon5pos = {x=427, y=81, z=11}
     demon6pos = {x=429, y=81, z=11}
 
     doSummonCreature("Demon", demon1pos)
     doSummonCreature("Demon", demon2pos)
     doSummonCreature("Demon", demon3pos)
     doSummonCreature("Demon", demon4pos)
     doSummonCreature("Demon", demon5pos)
     doSummonCreature("Demon", demon6pos)

     nplayer1pos = {x=429, y=79, z=11}
     nplayer2pos = {x=428, y=79, z=11}
     nplayer3pos = {x=427, y=79, z=11}
     nplayer4pos = {x=426, y=79, z=11}

     doSendMagicEffect(player1pos,2)
     doSendMagicEffect(player2pos,2)
     doSendMagicEffect(player3pos,2)
     doSendMagicEffect(player4pos,2)

     doTeleportThing(player1.uid,nplayer1pos)
     doTeleportThing(player2.uid,nplayer2pos)
     doTeleportThing(player3.uid,nplayer3pos)
     doTeleportThing(player4.uid,nplayer4pos)

     doSendMagicEffect(nplayer1pos,10)
     doSendMagicEffect(nplayer2pos,10)
     doSendMagicEffect(nplayer3pos,10)
     doSendMagicEffect(nplayer4pos,10)

     doTransformItem(item.uid,item.itemid+1)

    else
     doPlayerSendCancel(cid,"Sorry, not possible.")
    end
   else
    doPlayerSendCancel(cid,"Sorry, not possible.")
   end
  else
   doPlayerSendCancel(cid,"Sorry, not possible.")
  end
 elseif item.itemid == 1946 then
  if getPlayerAccess(cid) >= 2 then
   doTransformItem(item.uid,item.itemid-1)
  else
   doPlayerSendCancel(cid,"Sorry, not possible. Talk to Gamemaster to reset the quest!")
  end
 end
elseif item.uid == 6000 then
 queststatus = getPlayerStorageValue(cid,6000)
 if queststatus == -1 then
  doPlayerSendTextMessage(cid,22,"You have found a Demon Armor.")
  doPlayerAddItem(cid,2494,1)
  setPlayerStorageValue(cid,6000,1)
 else
  doPlayerSendTextMessage(cid,22,"It is empty.")
 end
elseif item.uid == 6001 then
 queststatus = getPlayerStorageValue(cid,6000)
 if queststatus == -1 then
  doPlayerSendTextMessage(cid,22,"You have found a Magic Sword.")
  doPlayerAddItem(cid,2400,1)
  setPlayerStorageValue(cid,6000,1)
 else
  doPlayerSendTextMessage(cid,22,"It is empty.")
 end
elseif item.uid == 6002 then
 queststatus = getPlayerStorageValue(cid,6000)
 if queststatus == -1 then
  doPlayerSendTextMessage(cid,22,"You have found a Stonecutter Axe.")
  doPlayerAddItem(cid,2431,1)
  setPlayerStorageValue(cid,6000,1)
 else
  doPlayerSendTextMessage(cid,22,"It is empty.")
 end
elseif item.uid == 6003 then
 queststatus = getPlayerStorageValue(cid,6000)
 if queststatus == -1 then
  doPlayerSendTextMessage(cid,22,"You have found a Thunder Hammer.")
  doPlayerAddItem(cid,2421,1)
  setPlayerStorageValue(cid,6000,1)
 else
  doPlayerSendTextMessage(cid,22,"It is empty.")
 end
end
return 1
end