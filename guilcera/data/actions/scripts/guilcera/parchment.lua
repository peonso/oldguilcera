function onUse(cid, item, frompos, item2, topos)

if item.uid == 7030 then
queststatus = getPlayerStorageValue(cid,6030)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a bag.")
doSendMagicEffect(frompos,12)
      local bag = doPlayerAddItem(cid, 1987, 1)
      doAddContainerItem(bag, 2165, 1) --stealth ring
      doAddContainerItem(bag, 2151, 2) --talon
      doAddContainerItem(bag, 2230, 1) --bone
      doAddContainerItem(bag, 2229, 1) --skull
      doAddContainerItem(bag, 1951, 1) --parchment
      key_uid =  doAddContainerItem(bag,2091,1)
      doSetItemActionId(key_uid,5000)
setPlayerStorageValue(cid,6030,1)

else
doPlayerSendTextMessage(cid,22,"Nothing Here.")
end
return 0
end
return 1
end