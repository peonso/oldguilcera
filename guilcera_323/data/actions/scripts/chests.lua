function onUse(cid, item, frompos, item2, topos)

--noobaquest
if item.uid == 7001 then
queststatus = getPlayerStorageValue(cid,6001)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found an Orcish Axe.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2428,1)
setPlayerStorageValue(cid,6001,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

elseif item.uid == 7002 then
queststatus = getPlayerStorageValue(cid,6001)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Battle Hammer.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2417,1)
setPlayerStorageValue(cid,6001,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

elseif item.uid == 7003 then
queststatus = getPlayerStorageValue(cid,6001)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Scimitar.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2419,1)
setPlayerStorageValue(cid,6001,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

elseif item.uid == 7004 then
queststatus = getPlayerStorageValue(cid,6004)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Steel Shield.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2509,1)
setPlayerStorageValue(cid,6004,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

elseif item.uid == 7005 then
queststatus = getPlayerStorageValue(cid,6005)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Chain Legs.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2648,1)
setPlayerStorageValue(cid,6005,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

elseif item.uid == 7006 then
queststatus = getPlayerStorageValue(cid,6006)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Chain Armor.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2464,1)
setPlayerStorageValue(cid,6006,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

elseif item.uid == 7007 then
queststatus = getPlayerStorageValue(cid,6001)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Bow.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2456,1)
setPlayerStorageValue(cid,6001,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

--bk quest
elseif item.uid == 7008 then
queststatus = getPlayerStorageValue(cid,6008)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Crown Armor.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2487,1)
setPlayerStorageValue(cid,6008,1)

else
doPlayerSendTextMessage(cid,22,"There is nothing in this tree.")
end

elseif item.uid == 7009 then
queststatus = getPlayerStorageValue(cid,6009)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Crown Shield.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2519,1)
setPlayerStorageValue(cid,6009,1)

else
doPlayerSendTextMessage(cid,22,"There is nothing in this tree.")
end

--silver mace quest
elseif item.uid == 7012 then
queststatus = getPlayerStorageValue(cid,6012)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Silver Mace.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2424,1)
setPlayerStorageValue(cid,6012,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

--crusader helmet
elseif item.uid == 7014 then
queststatus = getPlayerStorageValue(cid,6014)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Crusader Helmet.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2497,1)
setPlayerStorageValue(cid,6014,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

--banshee quest
elseif item.uid == 7015 then
queststatus = getPlayerStorageValue(cid,6015)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Tower Shield.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2528,1)
setPlayerStorageValue(cid,6015,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

elseif item.uid == 7016 then
queststatus = getPlayerStorageValue(cid,6016)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Giant Sword.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2393,1)
setPlayerStorageValue(cid,6016,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

--dragon scale legs
elseif item.uid == 7017 then
queststatus = getPlayerStorageValue(cid,6017)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Phoenix Shield.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2539,1)
setPlayerStorageValue(cid,6017,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

--golden helmet
elseif item.uid == 7018 then
queststatus = getPlayerStorageValue(cid,6018)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You get the Helmet of the Sky from the statue.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2471,1)
setPlayerStorageValue(cid,6018,1)

else
doPlayerSendTextMessage(cid,22,"Someone have gotten the statues' helmet.")
end

--orc mountain
elseif item.uid == 7019 then
queststatus = getPlayerStorageValue(cid,6019)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Knight Armor.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2476,1)
setPlayerStorageValue(cid,6019,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

elseif item.uid == 7020 then
queststatus = getPlayerStorageValue(cid,6020)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Fire Sword.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2392,1)
setPlayerStorageValue(cid,6020,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

elseif item.uid == 7021 then
queststatus = getPlayerStorageValue(cid,6021)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Knight Axe.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2430,1)
setPlayerStorageValue(cid,6021,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

--behe quest
elseif item.uid == 7022 then
queststatus = getPlayerStorageValue(cid,6022)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Golden Armor.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2466,1)
setPlayerStorageValue(cid,6022,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

elseif item.uid == 7023 then
queststatus = getPlayerStorageValue(cid,6023)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Demon Shield.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2520,1)
setPlayerStorageValue(cid,6023,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

elseif item.uid == 7024 then
queststatus = getPlayerStorageValue(cid,6024)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Guardian Halberd.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2427,1)
setPlayerStorageValue(cid,6024,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

elseif item.uid == 7025 then
queststatus = getPlayerStorageValue(cid,6025)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Platinum Amulet.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2171,1)
setPlayerStorageValue(cid,6025,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

--warlockandbehe quest
elseif item.uid == 7031 then
queststatus = getPlayerStorageValue(cid,6031)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Vampire Shield.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2534,1)
setPlayerStorageValue(cid,6031,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

elseif item.uid == 7032 then
queststatus = getPlayerStorageValue(cid,6032)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Dragon Lance.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2414,1)
setPlayerStorageValue(cid,6032,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

--demon quests
elseif item.uid == 7033 then
queststatus = getPlayerStorageValue(cid,6033)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Demon Legs.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2495,1)
setPlayerStorageValue(cid,6033,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

elseif item.uid == 7034 then
queststatus = getPlayerStorageValue(cid,6034)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Medusa Shield.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2536,2)
setPlayerStorageValue(cid,6034,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

elseif item.uid == 7035 then
queststatus = getPlayerStorageValue(cid,6035)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Dwarven Axe.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2435,1)
setPlayerStorageValue(cid,6035,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

elseif item.uid == 7036 then
queststatus = getPlayerStorageValue(cid,6036)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Demon Helmet.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2493,1)
setPlayerStorageValue(cid,6036,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

elseif item.uid == 7037 then
queststatus = getPlayerStorageValue(cid,6037)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Demon Shield.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2520,1)
setPlayerStorageValue(cid,6037,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

elseif item.uid == 7038 then
queststatus = getPlayerStorageValue(cid,6038)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Steel Boots.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2645,1)
setPlayerStorageValue(cid,6038,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

-- banshee quest
elseif item.uid == 7049 then
queststatus = getPlayerStorageValue(cid,6049)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Stone Skin Amulet.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2197,5)
setPlayerStorageValue(cid,6049,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

elseif item.uid == 7050 then
queststatus = getPlayerStorageValue(cid,6050)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Stealth Ring.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2165,1)
setPlayerStorageValue(cid,6050,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

-- golden boots
elseif item.uid == 7051 then
queststatus = getPlayerStorageValue(cid,6051)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Golden Boots.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2646,1)
setPlayerStorageValue(cid,6051,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

-- roseshield
elseif item.uid == 7052 then
queststatus = getPlayerStorageValue(cid,6052)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Rose Shield.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2527,1)
setPlayerStorageValue(cid,6052,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

--10k vocation
elseif item.uid == 7053 then
queststatus = getPlayerStorageValue(cid,6053)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Naginata.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2426,1)
setPlayerStorageValue(cid,6053,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

elseif item.uid == 7054 then
queststatus = getPlayerStorageValue(cid,6054)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found 100 platinum coins.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2152,100)
setPlayerStorageValue(cid,6054,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

--insanegame
elseif item.uid == 7055 then
queststatus = getPlayerStorageValue(cid,6055)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Warlord Sword.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2408,1)
setPlayerStorageValue(cid,6055,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

--demon hell
elseif item.uid == 7056 then
queststatus = getPlayerStorageValue(cid,6056)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Blessed Shield.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2523,1)
setPlayerStorageValue(cid,6056,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

--fireaxe
elseif item.uid == 7059 then
queststatus = getPlayerStorageValue(cid,6059)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Fire Axe.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2432,1)
setPlayerStorageValue(cid,6059,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

--dwarven armor
elseif item.uid == 7060 then
queststatus = getPlayerStorageValue(cid,6060)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Dwarven Armor.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2503,1)
setPlayerStorageValue(cid,6060,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

--ice rapier
elseif item.uid == 7071 then
queststatus = getPlayerStorageValue(cid,6071)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found an Ice Rapier.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2396,1)
setPlayerStorageValue(cid,6071,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

-- dworc
elseif item.uid == 7088 then
queststatus = getPlayerStorageValue(cid,6088)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Ripper Lance.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,3964,1)
setPlayerStorageValue(cid,6088,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end


--primate quest
elseif item.uid == 7089 then
queststatus = getPlayerStorageValue(cid,6089)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Silver Key.")
doSendMagicEffect(topos,12)
key_uid = doPlayerAddItem(cid,2088,1)
doSetItemActionId(key_uid,5002)
setPlayerStorageValue(cid,6089,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

elseif item.uid == 7090 then
queststatus = getPlayerStorageValue(cid,6090)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Silver Key.")
doSendMagicEffect(topos,12)
key_uid = doPlayerAddItem(cid,2088,1)
doSetItemActionId(key_uid,5004)
setPlayerStorageValue(cid,6090,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

elseif item.uid == 7092 then
queststatus = getPlayerStorageValue(cid,6092)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found an Amazon Shield.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2537,1)
setPlayerStorageValue(cid,6092,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

elseif item.uid == 7093 then
queststatus = getPlayerStorageValue(cid,6093)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Silver Key.")
doSendMagicEffect(topos,12)
key_uid = doPlayerAddItem(cid,2088,1)
doSetItemActionId(key_uid,5003)
setPlayerStorageValue(cid,6093,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end



-- behe/draggy
elseif item.uid == 7086 then
queststatus = getPlayerStorageValue(cid,6086)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found an Horned Helmet.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2496,1)
setPlayerStorageValue(cid,6086,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

elseif item.uid == 7087 then
queststatus = getPlayerStorageValue(cid,6087)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Ultimate Healing Rune (171x).")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2273,171)
setPlayerStorageValue(cid,6087,1)

else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

elseif item.uid == 5030 then
queststatus = getPlayerStorageValue(cid,5030)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Steel Shield.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2513,1)
setPlayerStorageValue(cid,5030,1)
else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

elseif item.uid == 5031 then
queststatus = getPlayerStorageValue(cid,5031)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Chain Armor.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2464,1)
setPlayerStorageValue(cid,5031,1)
else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

elseif item.uid == 5032 then
queststatus = getPlayerStorageValue(cid,5032)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Chain Legs.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2648,1)
setPlayerStorageValue(cid,5032,1)
else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

elseif item.uid == 5033 then
queststatus = getPlayerStorageValue(cid,5033)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Bow.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2456,1)
setPlayerStorageValue(cid,5033,1)
else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

elseif item.uid == 5034 then
queststatus = getPlayerStorageValue(cid,5033)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Morning Star.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2394,1)
setPlayerStorageValue(cid,5033,1)
else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

elseif item.uid == 5035 then
queststatus = getPlayerStorageValue(cid,5033)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Scimitar.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2385,1)
setPlayerStorageValue(cid,5033,1)
else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

elseif item.uid == 5036 then
queststatus = getPlayerStorageValue(cid,5033)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found an Orcish Axe.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2428,1)
setPlayerStorageValue(cid,5033,1)
else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

-- trolls turim
elseif item.uid == 5038 then
queststatus = getPlayerStorageValue(cid,5038)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Dark Shield.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2521,1)
setPlayerStorageValue(cid,5038,1)
else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

-- warlocks 2
elseif item.uid == 5039 then
queststatus = getPlayerStorageValue(cid,5039)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Winged Helmet.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2474,1)
setPlayerStorageValue(cid,5039,1)
else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

-- Dwarf Orcs
elseif item.uid == 5041 then
queststatus = getPlayerStorageValue(cid,5041)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Dwarven Axe.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2435,1)
setPlayerStorageValue(cid,5041,1)
else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

elseif item.uid == 5042 then
queststatus = getPlayerStorageValue(cid,5042)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Warrior Helmet.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2475,1)
setPlayerStorageValue(cid,5042,1)
else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

-- great shield
elseif item.uid == 5043 then
queststatus = getPlayerStorageValue(cid,5043)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Great Shield.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2522,1)
setPlayerStorageValue(cid,5043,1)
else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

-- HotA
elseif item.uid == 5001 then
queststatus = getPlayerStorageValue(cid,5001)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a piece of helmet.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2335,1)
setPlayerStorageValue(cid,5001,1)
else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

elseif item.uid == 5002 then
queststatus = getPlayerStorageValue(cid,5002)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a piece of helmet.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2336,1)
setPlayerStorageValue(cid,5002,1)
else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

elseif item.uid == 5003 then
queststatus = getPlayerStorageValue(cid,5003)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a piece of helmet.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2337,1)
setPlayerStorageValue(cid,5003,1)
else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

elseif item.uid == 5004 then
queststatus = getPlayerStorageValue(cid,5004)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a piece of helmet.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2338,1)
setPlayerStorageValue(cid,5004,1)
else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

elseif item.uid == 5005 then
queststatus = getPlayerStorageValue(cid,5005)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a piece of helmet.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2339,1)
setPlayerStorageValue(cid,5005,1)
else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

elseif item.uid == 5006 then
queststatus = getPlayerStorageValue(cid,5006)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a piece of helmet.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2340,1)
setPlayerStorageValue(cid,5006,1)
else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

elseif item.uid == 5007 then
queststatus = getPlayerStorageValue(cid,5007)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a piece of helmet.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2341,1)
setPlayerStorageValue(cid,5007,1)
else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

-- hero area
elseif item.uid == 5009 then
queststatus = getPlayerStorageValue(cid,5009)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Noble Armor.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2486,1)
setPlayerStorageValue(cid,5009,1)
else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

-- Golins
elseif item.uid == 5010 then
queststatus = getPlayerStorageValue(cid,5010)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Brass Armor.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2465,1)
setPlayerStorageValue(cid,5010,1)
else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

-- Banshee 2
elseif item.uid == 5016 then
queststatus = getPlayerStorageValue(cid,5016)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Magic Long Sword.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2390,1)
setPlayerStorageValue(cid,5016,1)
else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

-- bright sword bkcave
elseif item.uid == 5017 then
queststatus = getPlayerStorageValue(cid,5017)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Bright Sword.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2407,1)
setPlayerStorageValue(cid,5017,1)
else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

-- demon quest turim
elseif item.uid == 5026 then
queststatus = getPlayerStorageValue(cid,5020)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Holy Shield.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2517,1)
setPlayerStorageValue(cid,5026,1)
else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

elseif item.uid == 5027 then
queststatus = getPlayerStorageValue(cid,5027)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Devil Helmet.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2462,1)
setPlayerStorageValue(cid,5027,1)
else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

elseif item.uid == 5028 then
queststatus = getPlayerStorageValue(cid,5028)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Great Axe.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2415,1)
setPlayerStorageValue(cid,5028,1)
else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

--necros quest
elseif item.uid == 7095 then
queststatus = getPlayerStorageValue(cid,7095)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Griffin Shield.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2533,1)
setPlayerStorageValue(cid,7095,1)
else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end

--morgaroth key
elseif item.uid == 7096 then
queststatus = getPlayerStorageValue(cid,7096)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Golden Key.")
doSendMagicEffect(topos,12)
key_uid = doPlayerAddItem(cid,2091,1)
doSetItemActionId(key_uid,5005)
setPlayerStorageValue(cid,7096,1)
else
doPlayerSendTextMessage(cid,22,"This chest is empty.")
end


else
return 0
end
return 1
end