function onUse(cid, item, frompos, item2, topos)
possopos = {x=frompos.x, y=frompos.y, z=frompos.z}

if item.itemid == 1369 and item.actionid == 100 then
		possopos.z = possopos.z + 1
		doTeleportThing(cid,possopos)
else
return 0
end
return 1
end