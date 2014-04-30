-- by Atolon
-- 7.6 version by Peonso
 function onUse(cid, item, frompos, item2, topos)
 if item2.itemid == 28 then
  return 0
 end
 if item2.itemid == 468 then
  doTransformItem(item2.uid,469)
  doDecayItem(item2.uid)
 elseif item2.itemid == 481 then
  doTransformItem(item2.uid,482)
  doDecayItem(item2.uid)
 elseif item2.itemid == 483 then
  doTransformItem(item2.uid,484)
  doDecayItem(item2.uid)
 else
  return 0
 end
 return 1
 end