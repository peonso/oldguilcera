-- by Peonso

function onUse(cid, item, frompos, item2, topos)
teleportpos = {x=705, y=71, z=11}
playerlevel = getPlayerLevel(cid)

if item.uid == 8014 and item.itemid == 1945 and playerlevel > 99 then
 doTeleportThing(cid,teleportpos)
 doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 8014 and item.itemid == 1946 and playerlevel > 99 then
 doTeleportThing(cid,teleportpos)
 doTransformItem(item.uid,item.itemid-1)
else
 doPlayerSendCancel(cid,"You are not strong to pull it.")
end
return 1
end