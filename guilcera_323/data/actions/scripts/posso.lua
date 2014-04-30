function onUse(cid, item, frompos, item2, topos)
possopos = {x=frompos.x, y=frompos.y, z=frompos.z}

if item.itemid == 1369 and possopos.x == 127 and possopos.y == 116 and possopos.z == 8 then
		possopos.z = possopos.z + 1
		doTeleportThing(cid,possopos)
elseif item.itemid == 1369 and possopos.x == 162 and possopos.y == 139 and possopos.z == 8 then
		possopos.z = possopos.z + 1
		doTeleportThing(cid,possopos)
elseif item.itemid == 1369 and possopos.x == 443 and possopos.y == 407 and possopos.z == 7 then
		possopos.z = possopos.z + 1
		doTeleportThing(cid,possopos)

else
return 0
end
return 1
end