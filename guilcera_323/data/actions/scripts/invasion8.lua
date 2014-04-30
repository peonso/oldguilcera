-- by Peonso

function onUse(cid, item, frompos, item2, topos)

if item.uid == 7069 and item.itemid == 1945 then
 doTransformItem(item.uid,item.itemid+1)
	doPlayerSay(cid,"Caralin warriors invasion, not done yet.",2)
elseif item.uid == 7069 and item.itemid == 1946 then
 doPlayerSendCancel(cid,"Sorry, not possible.")
else
 doPlayerSendCancel(cid,"Invasion reseted.")
end
return 1
end