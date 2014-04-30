-- By Peonso
function onUse(cid, item, frompos, item2, topos)

if item2.itemid == 0 then
return 0
end
if item2.itemid == 2782 then
doTransformItem(item2.uid,2781)
elseif item2.itemid == 3985 then
doTransformItem(item2.uid,3984)
else
return 0
end
doDecayItem(item2.uid)
return 1
end



--function onUse(cid, item, frompos, item2, topos)
--	if (isInArray(JUNGLE_GRASS_REMOVE, item2.itemid) == TRUE) then
--		doRemoveItem(item2.uid)
--		return TRUE
		
--	elseif (isInArray(JUNGLE_GRASS, item2.itemid) == TRUE) then
--		doTransformItem(item2.uid, item2.itemid - 1)
--		doDecayItem(item2.uid)
--		return TRUE
		
--	elseif (isInArray(SPIDER_WEB, item2.itemid) == TRUE) then
--		doTransformItem(item2.uid, item2.itemid + 6)
--		doDecayItem(item2.uid)
--		return TRUE
--	end
	
--	return FALSE
--end 