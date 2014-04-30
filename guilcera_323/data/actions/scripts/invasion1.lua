-- by Peonso

function onUse(cid, item, frompos, item2, topos)

if item.uid == 7062 and item.itemid == 1945 then
 doTransformItem(item.uid,item.itemid+1)
	doPlayerSay(cid,"/o Orshabaal escaped from Hell, now he and his slayers are in the land of Guilcera.",2)
monster1pos = {x=290, y=115, z=7}
	doSummonCreature("Orshabaal",monster1pos)
monster2pos = {x=160, y=240, z=7}
	doSummonCreature("Demon",monster2pos)
monster3pos = {x=140, y=150, z=7}
	doSummonCreature("Demon",monster3pos)
monster4pos = {x=180, y=120, z=7}
	doSummonCreature("Demon",monster4pos)
monster5pos = {x=233, y=178, z=7}
	doSummonCreature("Fire Elemental",monster5pos)
monster6pos = {x=257, y=198, z=7}
	doSummonCreature("Fire Elemental",monster6pos)
monster7pos = {x=332, y=63, z=7}
	doSummonCreature("Fire Elemental",monster7pos)
monster8pos = {x=225, y=115, z=7}
	doSummonCreature("Fire Elemental",monster8pos)
elseif item.uid == 7062 and item.itemid == 1946 then
if getPlayerAccess(cid) == 3 then
 doPlayerSendCancel(cid,"Invasion reseted.")
 doTransformItem(item.uid,item.itemid-1)
else
 doPlayerSendCancel(cid,"Only Gamemaster can reset this invasion.")
end
end
return 1
end