-- by Peonso

function onUse(cid, item, frompos, item2, topos)
peonsville = {x=224, y=229, z=7}
oxpholis = {x=339, y=72, z=6}
treasure = {x=122, y=124, z=8}
elfidia = {x=450, y=415, z=8}
bombera = {x=615, y=107, z=5}

if item.uid == 7082 then
doPlayerSetMasterPos(cid,peonsville)
doPlayerSendTextMessage(cid,22,"Now you are a Peonsville Citizen.")
doSendMagicEffect(peonsville,12)
doTeleportThing(cid,peonsville)
elseif item.uid == 7083 then
doPlayerSetMasterPos(cid,oxpholis)
doPlayerSendTextMessage(cid,22,"Now you are an Oxpholis Citizen.")
doSendMagicEffect(oxpholis,12)
doTeleportThing(cid,oxpholis)
elseif item.uid == 7084 then
doPlayerSetMasterPos(cid,treasure)
doPlayerSendTextMessage(cid,22,"Now you are a Treasure Citizen.")
doSendMagicEffect(treasure,12)
doTeleportThing(cid,treasure)
elseif item.uid == 7085 then
doPlayerSetMasterPos(cid,elfidia)
doPlayerSendTextMessage(cid,22,"Now you are an Elfídia Citizen.")
doSendMagicEffect(elfidia,12)
doTeleportThing(cid,elfidia)
elseif item.uid == 5029 then
doPlayerSetMasterPos(cid,bombera)
doPlayerSendTextMessage(cid,22,"Now you are a Bombera Citizen.")
doSendMagicEffect(bombera,12)
doTeleportThing(cid,bombera)
end
return 1
end