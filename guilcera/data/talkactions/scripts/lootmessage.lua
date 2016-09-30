function onSay(player, words, param)
    if getPlayerStorageValue(cid,STORAGE_LOOTMESSAGE) == 1 then
        setPlayerStorageValue(cid, STORAGE_LOOTMESSAGE, -1)
        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Loot message has been disabled.")
    else
        setPlayerStorageValue(cid, STORAGE_LOOTMESSAGE, 1)
        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Loot message has been enabled.")
    end

    return false
end