-- by Peonso
function onUse(cid, item, frompos, item2, topos)

sorc2pos = {x=129, y=165, z=8}
druid2pos = {x=127, y=166, z=8}
pally2pos = {x=129, y=166, z=8}
knight2pos = {x=127, y=165, z=8}
sorcpos = {x=105, y=137, z=13, stackpos=253}
druidpos = {x=97, y=137, z=13, stackpos=253}
pallypos = {x=101, y=141, z=13, stackpos=253}
knightpos = {x=101, y=133, z=13, stackpos=253}
sorc = getPlayerPosition(sorcpos)
druid = getPlayerPosition(druidpos)
pally = getPlayerPosition(pallypos)
knight = getPlayerPosition(knightpos)
sorcitempos = {x=106, y=137, z=13, stackpos=1}
druiditempos = {x=96, y=137, z=13, stackpos=1}
pallyitempos = {x=101, y=142, z=13, stackpos=1}
knightitempos = {x=101, y=132, z=13, stackpos=1}
sorcitem = getThingfromPos(sorcitempos)
druiditem = getThingfromPos(druiditempos)
pallyitem = getThingfromPos(pallyitempos)
knightitem = getThingfromPos(knightitempos)
sorcvoc = getPlayerVocation(sorc.uid)
druidvoc = getPlayerVocation(druid.uid)
pallyvoc = getPlayerVocation(pally.uid)
knightvoc = getPlayerVocation(knight.uid)

if item.uid == 7040 and item.itemid == 2711 and sorcvoc == 1 and druidvoc == 2 and pallyvoc == 3 and knightvoc == 4 and sorcitem.itemid == 2997 and druiditem.itemid == 3523 and pallyitem.itemid == 3287 and knightitem.itemid == 3202 then
doTeleportThing(sorc,sorc2pos)
doTeleportThing(druid,druid2pos)
doTeleportThing(pally,pally2pos)
doTeleportThing(druid,knight2pos)
doRemoveItem(sorcitem.uid,1)
doRemoveItem(druiditem.uid,1)
doRemoveItem(pallyitem.uid,1)
doRemoveItem(knightitem.uid,1)
doSendMagicEffect(sorc2pos,12)
doSendMagicEffect(druid2pos,12)
doSendMagicEffect(pally2pos,12)
doSendMagicEffect(knight2pos,12)
doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 7040 and item.itemid == 2712 then
doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendCancel(cid,"Sorry, not possible.")
end
return 1
end