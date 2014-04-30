-- by Peonso

function onUse(cid, item, frompos, item2, topos)

if item.uid == 7065 and item.itemid == 1945 then
 doTransformItem(item.uid,item.itemid+1)
	doPlayerSay(cid,"/o Taumel is under a cyclops attack.",2)
monster1pos = {x=330, y=93, z=7}
	doSummonCreature("Cyclops",monster1pos)
monster2pos = {x=323, y=98, z=7}
	doSummonCreature("Cyclops",monster2pos)
monster3pos = {x=341, y=97, z=7}
	doSummonCreature("Cyclops",monster3pos)
monster4pos = {x=320, y=88, z=7}
	doSummonCreature("Cyclops",monster4pos)
monster5pos = {x=330, y=99, z=7}
	doSummonCreature("Cyclops",monster5pos)
monster6pos = {x=334, y=92, z=7}
	doSummonCreature("Cyclops",monster6pos)
monster7pos = {x=327, y=94, z=7}
	doSummonCreature("Cyclops",monster7pos)
monster8pos = {x=326, y=100, z=7}
	doSummonCreature("Cyclops",monster8pos)
monster9pos = {x=321, y=90, z=7}
	doSummonCreature("Cyclops",monster9pos)
monster10pos = {x=330, y=95, z=7}
	doSummonCreature("Cyclops",monster10pos)
monster11pos = {x=331, y=91, z=7}
	doSummonCreature("Cyclops",monster11pos)
monster12pos = {x=333, y=88, z=7}
	doSummonCreature("Cyclops",monster12pos)
monster13pos = {x=333, y=94, z=7}
	doSummonCreature("Cyclops",monster13pos)
monster14pos = {x=333, y=92, z=7}
	doSummonCreature("Cyclops",monster14pos)
monster15pos = {x=321, y=97, z=7}
	doSummonCreature("Cyclops",monster15pos)
monster16pos = {x=301, y=64, z=7}
	doSummonCreature("Cyclops",monster16pos)
monster17pos = {x=299, y=69, z=7}
	doSummonCreature("Cyclops",monster17pos)
monster18pos = {x=296, y=70, z=7}
	doSummonCreature("Cyclops",monster18pos)
monster19pos = {x=296, y=72, z=7}
	doSummonCreature("Cyclops",monster19pos)
monster20pos = {x=294, y=65, z=7}
	doSummonCreature("Cyclops",monster20pos)
monster21pos = {x=297, y=61, z=7}
	doSummonCreature("Cyclops",monster21pos)
monster22pos = {x=289, y=70, z=7}
	doSummonCreature("Behemoth",monster22pos)
elseif item.uid == 7065 and item.itemid == 1946 then
if getPlayerAccess(cid) == 3 then
 doPlayerSendCancel(cid,"Invasion reseted.")
else
 doPlayerSendCancel(cid,"Only Gamemaster can reset this invasion.")
end
end
return 1
end