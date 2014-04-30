function onStepIn(cid, item, topos, frompos)
	doSendAnimatedText(topos, "D'oh!", 192)
	doSendMagicEffect(topos, 15)
	return 1
end

function onStepOut(cid, item, topos, frompos)
	doPlayerSendTextMessage(cid, 25, "You need new boots!")
	return 1
end

function onAddItem(moveitem, tileitem, pos)
	if moveitem.itemid == 1949 then
		doTransformItem(moveitem.uid, 2239)
	end
	return 1
end

function onRemoveItem(moveitem, tileitem, pos)
	if moveitem.itemid == 2666 then
		doSendAnimatedText(pos, "mmm!", 163)
	end
	return	1
end