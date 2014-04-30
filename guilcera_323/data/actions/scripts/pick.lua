-- by Junkfood
-- Adapted by Nitrous

function onUse(cid, item, frompos, item2, topos)
topos = {x=topos.x, y=topos.y, z=topos.z}
rand = math.random(1,60)

if item2.itemid == 0 then
 return 0
end

if item2.itemid == 355 and topos.x == 111 and topos.y == 153 and topos.z == 12 then
doTransformItem(item2.uid,383)

elseif item2.itemid == 355 and topos.x == 123 and topos.y == 117 and topos.z == 9 then
doTransformItem(item2.uid,383)

elseif item2.itemid == 355 and topos.x == 126 and topos.y == 132 and topos.z == 10 then
doTransformItem(item2.uid,383)

elseif item2.itemid == 351 and topos.x == 97 and topos.y == 176 and topos.z == 8 and rand == 30 then
doTransformItem(item2.uid,482)
elseif item2.itemid == 355 and topos.x == 686 and topos.y == 183 and topos.z == 11 then
doTransformItem(item2.uid,383)

else
 return 0
end
	return 1
end