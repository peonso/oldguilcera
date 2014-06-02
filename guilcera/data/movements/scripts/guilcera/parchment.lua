parchpos = { x = 343, y = 87, z = 14 }

function onRemoveItem(item, tileItem, pos)
	if pos.x == parchpos.x and pos.y == parchpos.y and pos.z == parchpos.z then
		demonpos1 = { x = parchpos.x - 2, y = parchpos.y - 1, z = parchpos.z }
		demonpos2 = { x = parchpos.x - 2, y = parchpos.y + 1, z = parchpos.z }
		demonpos3 = { x = parchpos.x + 2, y = parchpos.y - 1, z = parchpos.z }
		demonpos4 = { x = parchpos.x + 2, y = parchpos.y + 1, z = parchpos.z }
		doSummonCreature("Demon", demonpos1)  
		doSummonCreature("Demon", demonpos2)  
		doSummonCreature("Demon", demonpos3)  
		doSummonCreature("Demon", demonpos4)
	end
return 1
end