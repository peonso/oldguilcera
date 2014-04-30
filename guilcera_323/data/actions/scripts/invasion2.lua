-- by Peonso

function onUse(cid, item, frompos, item2, topos)

if item.uid == 7063 and item.itemid == 1945 then
 doTransformItem(item.uid,item.itemid+1)
	doPlayerSay(cid,"/o GOD Guido from CIPsoft come to Guilcera ruin our server!",2)
monster1pos = {x=175, y=215, z=7}
	doSummonCreature("GOD Guido",monster1pos)
elseif item.uid == 7063 and item.itemid == 1946 then
if getPlayerAccess(cid) == 3 then
 doPlayerSendCancel(cid,"Invasion reseted.")
else
 doPlayerSendCancel(cid,"Only Gamemaster can reset this invasion.")
end
end
return 1
end