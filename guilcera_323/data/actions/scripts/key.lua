-- By GriZzm0
-- 7.5 version by Peonso
function onUse(cid, item, frompos, item2, topos)

if item.actionid == item2.actionid then
if item2.itemid == 1219 or item2.itemid == 1221 or item2.itemid == 1237 or item2.itemid == 1239 or item2.itemid == 3538 or item2.itemid == 3547 then
  doTransformItem(item2.uid,item2.itemid+1)
else
doPlayerSendCancel(cid,"The key does not match.")
end
else
 return 0
end
return 1
end