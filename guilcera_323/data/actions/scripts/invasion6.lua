-- by Peonso

function onUse(cid, item, frompos, item2, topos)

if item.uid == 7067 and item.itemid == 1945 then
 doTransformItem(item.uid,item.itemid+1)
	doPlayerSay(cid,"/o Peonsville is under a troll attack.",2)
monster1pos = {x=193, y=217, z=7}
	doSummonCreature("Troll",monster1pos)
monster2pos = {x=263, y=205, z=7}
	doSummonCreature("Troll",monster2pos)
monster3pos = {x=266, y=206, z=7}
	doSummonCreature("Troll",monster3pos)
monster4pos = {x=264, y=209, z=7}
	doSummonCreature("Troll",monster4pos)
monster5pos = {x=268, y=208, z=7}
	doSummonCreature("Troll",monster5pos)
monster6pos = {x=267, y=203, z=7}
	doSummonCreature("Troll",monster6pos)
monster7pos = {x=267, y=206, z=7}
	doSummonCreature("Troll",monster7pos)
monster8pos = {x=220, y=214, z=7}
	doSummonCreature("Troll",monster8pos)
monster9pos = {x=218, y=212, z=7}
	doSummonCreature("Troll",monster9pos)
monster10pos = {x=221, y=214, z=7}
	doSummonCreature("Troll",monster10pos)
monster11pos = {x=216, y=209, z=7}
	doSummonCreature("Troll",monster11pos)
monster12pos = {x=219, y=209, z=7}
	doSummonCreature("Troll",monster12pos)
monster13pos = {x=237, y=220, z=7}
	doSummonCreature("Troll",monster13pos)
monster14pos = {x=261, y=211, z=7}
	doSummonCreature("Frost Troll",monster14pos)
monster15pos = {x=189, y=221, z=7}
	doSummonCreature("Swamp Troll",monster15pos)
monster16pos = {x=192, y=220, z=7}
	doSummonCreature("Swamp Troll",monster16pos)
monster17pos = {x=189, y=217, z=7}
	doSummonCreature("Swamp Troll",monster17pos)
monster18pos = {x=193, y=221, z=7}
	doSummonCreature("Swamp Troll",monster18pos)
monster19pos = {x=220, y=211, z=7}
	doSummonCreature("Wolf",monster19pos)
monster20pos = {x=217, y=216, z=7}
	doSummonCreature("Wolf",monster20pos)
monster21pos = {x=265, y=207, z=7}
	doSummonCreature("Wolf",monster21pos)
monster22pos = {x=266, y=211, z=7}
	doSummonCreature("Wolf",monster22pos)
elseif item.uid == 7067 and item.itemid == 1946 then
 if getPlayerAccess(cid) == 3 then
 doPlayerSendCancel(cid,"Invasion reseted.")
else
 doPlayerSendCancel(cid,"Only Gamemaster can reset this invasion.")
end
end
return 1
end