-- by GriZzm0

function onUse(cid, item, frompos, item2, topos)
gatepos = {x=608, y=49, z=10, stackpos=1}
getgate = getThingfromPos(gatepos)
gatepos2 = {x=608, y=50, z=10, stackpos=1}
getgate2 = getThingfromPos(gatepos2)

if item.uid == 5012 and item.itemid == 3699 and getgate.itemid == 1354 and getgate2.itemid == 1354 then
 doRemoveItem(getgate.uid,1)
 doRemoveItem(getgate2.uid,1)
 doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 5012 and item.itemid == 3700 and getgate.itemid == 0 and getgate2.itemid == 0 then
 doCreateItem(1354,1,gatepos)
 doCreateItem(1354,1,gatepos2)
 doTransformItem(item.uid,item.itemid-1)
else
 doPlayerSendCancel(cid,"Sorry, not possible.")
end
return 1
end