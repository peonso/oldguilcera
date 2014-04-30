function onUse(cid, item, frompos, item2, topos)

--noobaquest
if item.uid == 5000 then
queststatus = getPlayerStorageValue(cid,1000)
queststatus1 = getPlayerStorageValue(cid,5001)
queststatus2 = getPlayerStorageValue(cid,5002)
queststatus3 = getPlayerStorageValue(cid,5003)
queststatus4 = getPlayerStorageValue(cid,5004)
queststatus5 = getPlayerStorageValue(cid,5005)
queststatus6 = getPlayerStorageValue(cid,5006)
queststatus7 = getPlayerStorageValue(cid,5007)
if queststatus1 == 1 and queststatus2 == 1 and queststatus3 == 1 and queststatus4 == 1 and queststatus5 == 1 and queststatus6 == 1 and queststatus7 == 1 and (queststatus == 0 or queststatus == -1) then
doPlayerSendTextMessage(cid,22,"You have found an Helmet of Ancient.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2343,1)
setPlayerStorageValue(cid,1000,1)

else
doPlayerSendTextMessage(cid,22,"Sorry, you dont got all the pieces or you already have got the helmet.")
end

else
return 0
end
return 1
end