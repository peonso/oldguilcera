function onSay(cid, words, param)
	p = getPlayerPosition(cid)
	posToGo = {x = p.x + 10, y = p.y, z = p.z}
	createPos = {x = p.x + 1, y = p.y, z = p.z}
	doCreateTeleport(1387, posToGo, createPos)
	return 1
end