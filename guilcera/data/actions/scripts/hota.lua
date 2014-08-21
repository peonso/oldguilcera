function onUse(cid, item, fromPosition, itemEx, toPosition)
	if(itemEx.itemid == 2147 and itemEx.type >= 1) then 
		doRemoveItem(itemEx.uid,1)
		doTransformItem(item.uid, 2343)
		doSendMagicEffect(toPosition, CONST_ME_MAGIC_RED)
	else
		doPlayerSendCancel(cid,"You cannot use this object.")
	end
	return true
end