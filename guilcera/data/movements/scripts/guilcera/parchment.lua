function onRemoveItem(item, tile, position)
	local demonPositions = {
		{x=340, y=86, z=14},
		{x=346, y=86, z=14},
		{x=340, y=90, z=14},
		{x=346, y=90, z=14}
	}

	doSetItemActionId(item.uid, 0)
	for i = 1, #demonPositions do
		doSummonCreature("Demon", demonPositions[i])
	end

	return true
end