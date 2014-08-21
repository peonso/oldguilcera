-- by Peonso

function onUse(cid, item, frompos, item2, topos)
keypos = {x=159, y=135, z=9, stackpos=255}
key = getThingfromPos(keypos)

if item.uid == 8013 and item.itemid == 1945 and key.itemid == 2087 then
 doSetItemActionId(key.uid,5001)
 doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 8013 and item.itemid == 1946 and key.itemid == 2087 then
 doSetItemActionId(key.uid,5001)
 doTransformItem(item.uid,item.itemid-1)
else
 doPlayerSendCancel(cid,"Sorry, not possible.")
end
return 1
end