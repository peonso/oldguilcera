-- by GriZzm0

function onUse(cid, item, frompos, item2, topos)
gatepos = {x=146, y=541, z=9, stackpos=1}
getgate = getThingfromPos(gatepos)
gatepos2 = {x=142, y=541, z=9, stackpos=1}
getgate2 = getThingfromPos(gatepos2)
gatepos3 = {x=140, y=542, z=9, stackpos=1}
getgate3 = getThingfromPos(gatepos3)
gatepos4 = {x=140, y=545, z=9, stackpos=1}
getgate4 = getThingfromPos(gatepos4)
gatepos5 = {x=113, y=564, z=10, stackpos=1}
getgate5 = getThingfromPos(gatepos5)
gatepos6 = {x=154, y=565, z=10, stackpos=1}
getgate6 = getThingfromPos(gatepos6)
gatepos7 = {x=180, y=573, z=10, stackpos=1}
getgate7 = getThingfromPos(gatepos7)
keypos = {x=144, y=544, z=9, stackpos=255}

if item.uid == 7094 and item.itemid == 1945 and getgate.itemid == 3698 and getgate2.itemid == 3698 and getgate3.itemid == 3700 and getgate4.itemid == 3700 and getgate5.itemid == 3698 and getgate6.itemid == 3698 and getgate7.itemid == 3700 then
 doTransformItem(item.uid,item.itemid+1)
 doCreateItem(2092,1,keypos)
 key = getThingfromPos(keypos)
 doSetItemActionId(key.uid,5004)
elseif item.uid == 7094 and item.itemid == 1946 then
 doPlayerSendCancel(cid,"Sorry, not possible.")
else
 doPlayerSendCancel(cid,"Sorry, not possible.")
end
return 1
end