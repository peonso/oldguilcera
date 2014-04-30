-- by Peonso

function onUse(cid, item, frompos, item2, topos)
gatepos = {x=152, y=159, z=11, stackpos=1}
getgate = getThingfromPos(gatepos)

if item.uid == 7081 and item.itemid == 1945 and getgate.itemid == 1354 then
 doRemoveItem(getgate.uid,1)
 doTransformItem(item.uid,item.itemid+1)
lich1pos = {x=156, y=156, z=11}
	doSummonCreature("Lich",lich1pos)
lich2pos = {x=151, y=146, z=11}
	doSummonCreature("Lich",lich2pos)
crypt1pos = {x=150, y=157, z=11}
	doSummonCreature("Crypt Shambler",crypt1pos)
crypt2pos = {x=156, y=159, z=11}
	doSummonCreature("Crypt Shambler",crypt2pos)
crypt3pos = {x=154, y=155, z=11}
	doSummonCreature("Crypt Shambler",crypt3pos)
crypt4pos = {x=153, y=157, z=11}
	doSummonCreature("Crypt Shambler",crypt4pos)
crypt5pos = {x=155, y=149, z=11}
	doSummonCreature("Crypt Shambler",crypt5pos)
bonebeastpos = {x=154, y=152, z=11}
	doSummonCreature("Bonebeast",bonebeastpos)
elseif item.uid == 7081 and item.itemid == 1946 and getgate.itemid == 0 then
 doPlayerSendCancel(cid,"Sorry, not possible.")
else
 doPlayerSendCancel(cid,"Sorry, not possible.")
end
return 1
end