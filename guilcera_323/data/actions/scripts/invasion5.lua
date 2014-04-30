-- by Peonso

function onUse(cid, item, frompos, item2, topos)

if item.uid == 7066 and item.itemid == 1945 then
 doTransformItem(item.uid,item.itemid+1)
	doPlayerSay(cid,"/o Dodoma is under an undead attack.",2)
monster1pos = {x=162, y=108, z=7}
	doSummonCreature("Lich",monster1pos)
monster2pos = {x=163, y=116, z=8}
	doSummonCreature("Lich",monster2pos)
monster3pos = {x=169, y=130, z=8}
	doSummonCreature("Banshee",monster3pos)
monster4pos = {x=190, y=131, z=8}
	doSummonCreature("Banshee",monster4pos)
monster5pos = {x=147, y=131, z=8}
	doSummonCreature("Banshee",monster5pos)
monster6pos = {x=141, y=126, z=8}
	doSummonCreature("Banshee",monster6pos)
monster7pos = {x=160, y=116, z=8}
	doSummonCreature("Necromancer",monster7pos)
monster8pos = {x=159, y=112, z=7}
	doSummonCreature("Demon Skeleton",monster8pos)
monster9pos = {x=162, y=105, z=7}
	doSummonCreature("Demon Skeleton",monster9pos)
monster10pos = {x=159, y=107, z=7}
	doSummonCreature("Demon Skeleton",monster10pos)
monster11pos = {x=173, y=130, z=8}
	doSummonCreature("Demon Skeleton",monster11pos)
monster12pos = {x=136, y=127, z=8}
	doSummonCreature("Crypt Shambler",monster12pos)
monster13pos = {x=164, y=114, z=7}
	doSummonCreature("Crypt Shambler",monster13pos)
monster14pos = {x=155, y=127, z=8}
	doSummonCreature("Crypt Shambler",monster14pos)
monster15pos = {x=147, y=137, z=8}
	doSummonCreature("Crypt Shambler",monster15pos)
monster16pos = {x=149, y=126, z=8}
	doSummonCreature("Crypt Shambler",monster16pos)
monster17pos = {x=161, y=115, z=7}
	doSummonCreature("Bonebeast",monster17pos)
monster18pos = {x=129, y=118, z=8}
	doSummonCreature("Bonebeast",monster18pos)
monster19pos = {x=127, y=114, z=8}
	doSummonCreature("Bonebeast",monster19pos)
monster20pos = {x=164, y=109, z=8}
	doSummonCreature("Bonebeast",monster20pos)
monster21pos = {x=156, y=114, z=8}
	doSummonCreature("Bonebeast",monster21pos)
monster22pos = {x=170, y=107, z=7}
	doSummonCreature("Ghoul",monster22pos)
elseif item.uid == 7066 and item.itemid == 1946 then
 if getPlayerAccess(cid) == 3 then
 doPlayerSendCancel(cid,"Invasion reseted.")
else
 doPlayerSendCancel(cid,"Only Gamemaster can reset this invasion.")
end
end
return 1
end