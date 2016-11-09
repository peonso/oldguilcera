-- by Peonso

function onUse(cid, item, frompos, item2, topos)
teleportpos = {x=144, y=107, z=10}

if item.uid == 8009 and item.itemid == 1945 then
 doTeleportThing(cid,teleportpos)
 doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 8009 and item.itemid == 1946 then
 doTeleportThing(cid,teleportpos)
 doTransformItem(item.uid,item.itemid-1)
else
 doPlayerSendCancel(cid,"Sorry, not possible.")
end
return 1
end