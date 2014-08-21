EMPTY_CHEST_UID = { 8026, 8027, 8028, 8029 }

function onUse(cid, item, frompos, item2, topos)

if item.uid == EMPTY_CHEST_UID then
doPlayerSendTextMessage(cid,22,"Nothing Here.")
end

return 1
end