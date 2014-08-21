function onUse(cid, item, frompos, item2, topos)
gatepos = {x=179, y=109, z=11, stackpos=1}
getgate = getThingfromPos(gatepos)
gatepos2 = {x=179, y=113, z=11, stackpos=1}
getgate2 = getThingfromPos(gatepos2)

if item.uid == 8012 and item.itemid == 1945 and getgate2.itemid == 1353 and getgate.itemid == 1353 then
 doRemoveItem(getgate.uid,1)
 doRemoveItem(getgate2.uid,1)
 doTransformItem(item.uid,item.itemid+1)
lock1pos = {x=179, y=102, z=11}
	doSummonCreature("Warlock",lock1pos)
lock2pos = {x=191, y=117, z=11}
	doSummonCreature("Warlock",lock2pos)
elseif item.uid == 8012 and item.itemid == 1946 and getgate.itemid == 0 and getgate2.itemid == 0 then
 doCreateItem(1353,1,gatepos)
 doCreateItem(1353,1,gatepos2)
 doTransformItem(item.uid,item.itemid-1)
else
 doPlayerSendCancel(cid,"Sorry, not possible.")
end
return 1
end