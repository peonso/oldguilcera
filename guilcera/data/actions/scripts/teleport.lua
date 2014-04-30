function onUse(cid, item, frompos, item2, topos)
LADDER = {1386, 3678}
	npos = {x = frompos.x, y = frompos.y, z = frompos.z}
	if (item.itemid == 1386 or item.itemid == 3678) then
		npos.y = npos.y + 1
		npos.z = npos.z - 1
		doTeleportThing(cid, npos)
	else
		npos.z = npos.z + 1
		doTeleportThing(cid, npos)
	end
	return TRUE
end