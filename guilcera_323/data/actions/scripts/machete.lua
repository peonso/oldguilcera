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