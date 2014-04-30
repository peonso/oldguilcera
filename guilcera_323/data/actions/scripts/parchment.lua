-- Parchment by Peonso

function onUse(cid, item, frompos, item2, topos)
demon1pos = {x=338, y=84, z=14}
demon2pos = {x=348, y=86, z=14}
demon3pos = {x=349, y=92, z=14}
demon4pos = {x=339, y=93, z=14}

if item.uid == 7030 then
queststatus = getPlayerStorageValue(cid,6030)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Golden Key.")
  doSummonCreature("Demon", demon1pos)
  doSummonCreature("Demon", demon2pos)
  doSummonCreature("Demon", demon3pos)
  doSummonCreature("Demon", demon4pos)
doSendMagicEffect(frompos,12)
key_uid = doPlayerAddItem(cid,2091,1)
doSetItemActionId(key_uid,5000)
setPlayerStorageValue(cid,6030,1)

else
doPlayerSendTextMessage(cid,22,"Nothing Here.")
end
return 0
end
return 1
end