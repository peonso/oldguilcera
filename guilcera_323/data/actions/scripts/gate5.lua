-- by GriZzm0

function onUse(cid, item, frompos, item2, topos)
gatepos = {x=86, y=82, z=9, stackpos=1}
getgate = getThingfromPos(gatepos)
gatepos2 = {x=86, y=83, z=9, stackpos=1}
getgate2 = getThingfromPos(gatepos2)
gatepos3 = {x=86, y=84, z=9, stackpos=1}
getgate3 = getThingfromPos(gatepos3)

if item.uid == 7061 and item.itemid == 1945 and getgate3.itemid == 1304 and getgate2.itemid == 1304 and getgate.itemid == 1304 then
 doRemoveItem(getgate.uid,1)
 doRemoveItem(getgate2.uid,1)
 doRemoveItem(getgate3.uid,1)
 doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 7061 and item.itemid == 1946 and getgate3.itemid == 0 and getgate.itemid == 0 and getgate2.itemid == 0 then
 doCreateItem(1304,1,gatepos)
 doCreateItem(1304,1,gatepos2)
 doCreateItem(1304,1,gatepos3)
 doTransformItem(item.uid,item.itemid-1)
else
 doPlayerSendCancel(cid,"Sorry, not possible.")
end
return 1
end