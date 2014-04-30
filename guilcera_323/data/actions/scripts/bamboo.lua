-- by Peonso
function onUse(cid, item, frompos, item2, topos)
 
if item.itemid == 3798 then
doTransformItem(item.uid,3959)
elseif item.itemid == 3799 then
doTransformItem(item.uid,3958)

end
return 1
end