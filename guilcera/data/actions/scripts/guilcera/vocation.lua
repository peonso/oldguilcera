-- by Peonso
function onUse(cid, item, frompos, item2, topos)

SORC_NEW_POS = {x=129, y=165, z=8}
DRUID_NEW_POS = {x=127, y=166, z=8}
PALA_NEW_POS = {x=129, y=166, z=8}
KNIGHT_NEW_POS = {x=127, y=165, z=8}
SORC_POS = {x=105, y=137, z=13, stackpos=253}
DRUID_POS = {x=97, y=137, z=13, stackpos=253}
PALADIN_POS = {x=101, y=141, z=13, stackpos=253}
KNIGHT_POS = {x=101, y=133, z=13, stackpos=253}
sorc = getPlayerPosition(SORC_POS)
druid = getPlayerPosition(DRUID_POS)
paladin = getPlayerPosition(PALADIN_POS)
knight = getPlayerPosition(KNIGHT_POS)
SPELLBOOK_POS = {x=106, y=137, z=13, stackpos=1}
APPLE_POS = {x=96, y=137, z=13, stackpos=1}
CROSSBOW_POS = {x=101, y=142, z=13, stackpos=1}
SWORD_POS = {x=101, y=132, z=13, stackpos=1}
SPELLBOOK = getThingfromPos(SPELLBOOK_POS)
APPLE = getThingfromPos(APPLE_POS)
CROSSBOW = getThingfromPos(CROSSBOW_POS)
SWORD = getThingfromPos(SWORD_POS)
SORC_VOC = getPlayerVocation(sorc.uid)
DRUID_VOC = getPlayerVocation(druid.uid)
PALADIN_VOC = getPlayerVocation(paladin.uid)
KNIGHT_VOC = getPlayerVocation(knight.uid)

	if item.uid == 8030 and item.itemid == 1945 and (SORC_VOC == 1 or SORC_VOC == 5) and (DRUID_VOC == 2 or DRUID_VOC == 6) and (PALADIN_VOC == 3 or PALADIN_VOC == 7) and (KNIGHT_VOC == 4 or KNIGHT_VOC == 8) and SPELLBOOK.itemid == 2175 and APPLE.itemid == 2674 and CROSSBOW.itemid == 2455 and SWORD.itemid == 2376 then
		doTeleportThing(sorc.uid,SORC_NEW_POS)
		doTeleportThing(druid.uid,DRUID_NEW_POS)
		doTeleportThing(paladin.uid,PALA_NEW_POS)
		doTeleportThing(druid.uid,KNIGHT_NEW_POS)
		doRemoveItem(SPELLBOOK.uid,1)
		doRemoveItem(APPLE.uid,1)
		doRemoveItem(CROSSBOW.uid,1)
		doRemoveItem(SWORD.uid,1)
		doSendMagicEffect(SORC_NEW_POS,12)
		doSendMagicEffect(DRUID_NEW_POS,12)
		doSendMagicEffect(PALA_NEW_POS,12)
		doSendMagicEffect(KNIGHT_NEW_POS,12)
		doTransformItem(item.uid,item.itemid+1)
	elseif item.uid == 8030 and item.itemid == 1946 then
		doTransformItem(item.uid,item.itemid-1)
	else
		doPlayerSendCancel(cid,"Sorry, not possible.")
	end
return 1
end