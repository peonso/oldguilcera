function onUse(cid, item, frompos, item2, topos)
if item.itemid == 2152 and item.type == 100 then
  doPlayerSay(cid,"$$$",16)
  doRemoveItem(item.uid,item.type)
  doPlayerAddItem(cid,2160,1)
  doRemoveItem(item.uid,99)
  doTransformItem(item.uid,2160)

end
end