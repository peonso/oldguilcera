-- by Peonso

function onUse(cid, item, frompos, item2, topos)
ladderpos = {x=144, y=110, z=11, stackpos=1}
getladder = getThingfromPos(ladderpos)

if item.uid == 7080 and item.itemid == 1945 and getladder.itemid == 0 then
 doCreateItem(1386,1,ladderpos)
 doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 7080 and item.itemid == 1946 and getladder.itemid == 1386 then
 doPlayerSendCancel(cid,"Sorry, not possible.")
else
 doPlayerSendCancel(cid,"Sorry, not possible.")
end
return 1
end