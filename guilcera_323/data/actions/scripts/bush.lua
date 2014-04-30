-- 7.5 version by Peonso
function onUse(cid, item, frompos, item2, topos)
 
if item.itemid == 2785 then
doTransformItem(item.uid,2786)
doPlayerAddItem(cid,2677,4)

end
return 1
end