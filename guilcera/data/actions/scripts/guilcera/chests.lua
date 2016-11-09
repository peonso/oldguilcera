function onUse(cid, item, frompos, item2, topos)

	--helmet of the ancients
	if item.uid == 6005 then
	questAddReward(cid, topos, 2335, 1, item.uid) --piece of helmet

	elseif item.uid == 6006 then
	questAddReward(cid, topos, 2336, 1, item.uid) --piece of helmet

	elseif item.uid == 6007 then
	questAddReward(cid, topos, 2337, 1, item.uid) --piece of helmet

	elseif item.uid == 6008 then
	questAddReward(cid, topos, 2338, 1, item.uid) --piece of helmet

	elseif item.uid == 6009 then
	questAddReward(cid, topos, 2339, 1, item.uid) --piece of helmet

	elseif item.uid == 6010 then
	questAddReward(cid, topos, 2340, 1, item.uid) --piece of helmet

	elseif item.uid == 6011 then
	questAddReward(cid, topos, 2341, 1, item.uid) --piece of helmet

	-- bk quest
	elseif item.uid == 6012 then
	QUEST_ITEM = 2487 --crown armor
	queststatus = getPlayerStorageValue(cid,item.uid)
		if (queststatus == -1) or (queststatus == 0) then
			local DESCRIPTIONS = getItemDescriptions(QUEST_ITEM)
			REWARD_ITEM = doPlayerAddItem(cid,QUEST_ITEM,1)
			if (getPlayerFreeCap(cid) > 0 == false) then
				doPlayerSendTextMessage(cid, 22, "You do not have enough capacity.")
				doRemoveItem(REWARD_ITEM,1)
			else
				doPlayerSendTextMessage(cid,22,'You have found ' .. DESCRIPTIONS.article .. ' ' ..  DESCRIPTIONS.name .. '.')
				doSendMagicEffect(topos,12)
				setPlayerStorageValue(cid,item.uid,1)
			end
		else
			doPlayerSendTextMessage(cid,22,"There is nothing in this tree.")
		end

	elseif item.uid == 6013 then
	QUEST_ITEM = 2519 --crown shield
	queststatus = getPlayerStorageValue(cid,item.uid)
		if (queststatus == -1) or (queststatus == 0) then
			local DESCRIPTIONS = getItemDescriptions(QUEST_ITEM)
			REWARD_ITEM = doPlayerAddItem(cid,QUEST_ITEM,1)
			if (getPlayerFreeCap(cid) > 0 == false) then
				doPlayerSendTextMessage(cid, 22, "You do not have enough capacity.")
				doRemoveItem(REWARD_ITEM,1)
			else
				doPlayerSendTextMessage(cid,22,'You have found ' .. DESCRIPTIONS.article .. ' ' ..  DESCRIPTIONS.name .. '.')
				doSendMagicEffect(topos,12)
				setPlayerStorageValue(cid,item.uid,1)
			end
		else
			doPlayerSendTextMessage(cid,22,"There is nothing in this tree.")
		end

	--crusader helmet
	elseif item.uid == 6014 then
	questAddReward(cid, topos, 2497, 1, item.uid) --crusader helmet

	--banshee quest
	elseif item.uid == 6015 then
	questAddReward(cid, topos, 2528, 1, item.uid) --tower shield

	elseif item.uid == 6016 then
	questAddReward(cid, topos, 2393, 1, item.uid) --giant sword

	elseif item.uid == 6017 then
	questAddReward(cid, topos, 2197, 5, item.uid) --stone skin amulet

	elseif item.uid == 6018 then
	questAddReward(cid, topos, 2165, 1, item.uid) --stealth ring

	--dragon scale legs
	elseif item.uid == 6019 then
	questAddReward(cid, topos, 2539, 1, item.uid) --phoenix shield

	--warlock area I
	elseif item.uid == 6020 then
	questAddReward(cid, topos, 2474, 1, item.uid) --winged helmet

	--orc fortress
	elseif item.uid == 6021 then
	questAddReward(cid, topos, 2476, 1, item.uid) --knight armor

	elseif item.uid == 6022 then
	questAddReward(cid, topos, 2392, 1, item.uid) --fire sword

	elseif item.uid == 6023 then
	questAddReward(cid, topos, 2430, 1, item.uid) --knight axe

	--behe quest
	elseif item.uid == 6024 then
	questAddReward(cid, topos, 2466, 1, item.uid) --golden armor

	elseif item.uid == 6025 then
	questAddReward(cid, topos, 2520, 1, item.uid) --demon shield

	elseif item.uid == 6026 then
	questAddReward(cid, topos, 2427, 1, item.uid) --guardian halberd

	elseif item.uid == 6027 then
	questAddReward(cid, topos, 2171, 1, item.uid) --platinum amulet

	--warlock room
	elseif item.uid == 6028 then
	questAddReward(cid, topos, 2534, 1, item.uid) --vampire shield

	elseif item.uid == 6029 then
	questAddReward(cid, topos, 2414, 1, item.uid) --dragon lance

	--old demon legs
	elseif item.uid == 6030 then
	questAddReward(cid, topos, 2495, 1, item.uid) --demon legs

	elseif item.uid == 6031 then
	questAddReward(cid, topos, 2536, 1, item.uid) --medusa shield

	elseif item.uid == 6032 then
	questAddReward(cid, topos, 2435, 1, item.uid) --dwarven axe

	--demon quest
	elseif item.uid == 6033 then
	questAddReward(cid, topos, 2493, 1, item.uid) --demon helmet

	elseif item.uid == 6034 then
	questAddReward(cid, topos, 2520, 1, item.uid) --demon shield

	elseif item.uid == 6035 then
	questAddReward(cid, topos, 2645, 1, item.uid) --steel boots

	--golden boots
	elseif item.uid == 6036 then
	questAddReward(cid, topos, 2646, 1, item.uid) --golden boots

	elseif item.uid == 6037 then
	questAddReward(cid, topos, 2527, 1, item.uid) --rose shield

	--vocation quest
	elseif item.uid == 6038 then
	questAddReward(cid, topos, 2426, 1, item.uid) --naginata

	elseif item.uid == 6039 then
	questAddReward(cid, topos, 2152, 100, item.uid) --10k

	--insane game
	elseif item.uid == 6040 then
	QUEST_ITEM = 2088 --silver key
	QUEST_ACTION = 7777
	rewardWeight = getItemWeight(QUEST_ITEM)
	local DESCRIPTIONS = getItemDescriptions(QUEST_ITEM)
	queststatus = getPlayerStorageValue(cid,item.uid)
		if queststatus == -1 or queststatus == 0 then
			if (rewardWeight > getPlayerFreeCap(cid)) then
				doPlayerSendTextMessage(cid, 22, "You do not have enough capacity.")
			else
				doPlayerSendTextMessage(cid,22,"You have found a Silver Key.")
				doSendMagicEffect(topos,12)
				key_uid = doPlayerAddItem(cid,QUEST_ITEM,1)
				doSetItemActionId(key_uid,QUEST_ACTION)
				setPlayerStorageValue(cid,item.uid,1)
			end
		else
			doPlayerSendTextMessage(cid,22,"This chest is empty.")
		end

	elseif item.uid == 6041 then
	questAddReward(cid, topos, 2499, 1, item.uid) --amazon helmet

	elseif item.uid == 6042 then
	questAddReward(cid, topos, 2446, 1, 6041) --pharaoh sword

	elseif item.uid == 6043 then
	questAddReward(cid, topos, 2443, 1, 6041) --ravagers axe

	elseif item.uid == 6044 then
	questAddReward(cid, topos, 2453, 1, 6041) --arcane staff

	--fire axe
	elseif item.uid == 6045 then
	questAddReward(cid, topos, 2432, 1, item.uid) --fire axe

	--dwarven quest
	elseif item.uid == 6046 then
	questAddReward(cid, topos, 2486, 1, item.uid) --noble armor

	--dworcs cave
	elseif item.uid == 6047 then
	questAddReward(cid, topos, 3964, 1, item.uid) --ripper lance

	--primates quest
	elseif item.uid == 6048 then
	QUEST_ITEM = 2088 --silver key
	QUEST_ACTION = 5002
	rewardWeight = getItemWeight(QUEST_ITEM)
	local DESCRIPTIONS = getItemDescriptions(QUEST_ITEM)
	queststatus = getPlayerStorageValue(cid,item.uid)
		if queststatus == -1 or queststatus == 0 then
			if (rewardWeight > getPlayerFreeCap(cid)) then
				doPlayerSendTextMessage(cid, 22, "You do not have enough capacity.")
			else
				doPlayerSendTextMessage(cid,22,"You have found a Silver Key.")
				doSendMagicEffect(topos,12)
				key_uid = doPlayerAddItem(cid,QUEST_ITEM,1)
				doSetItemActionId(key_uid,QUEST_ACTION)
				setPlayerStorageValue(cid,item.uid,1)
			end
		else
			doPlayerSendTextMessage(cid,22,"This chest is empty.")
		end

	elseif item.uid == 6049 then
	QUEST_ITEM = 2088 --silver key
	QUEST_ACTION = 5003
	rewardWeight = getItemWeight(QUEST_ITEM)
	local DESCRIPTIONS = getItemDescriptions(QUEST_ITEM)
	queststatus = getPlayerStorageValue(cid,item.uid)
		if queststatus == -1 or queststatus == 0 then
			if (rewardWeight > getPlayerFreeCap(cid)) then
				doPlayerSendTextMessage(cid, 22, "You do not have enough capacity.")
			else
				doPlayerSendTextMessage(cid,22,"You have found a Silver Key.")
				doSendMagicEffect(topos,12)
				key_uid = doPlayerAddItem(cid,QUEST_ITEM,1)
				doSetItemActionId(key_uid,QUEST_ACTION)
				setPlayerStorageValue(cid,item.uid,1)
			end
		else
			doPlayerSendTextMessage(cid,22,"This chest is empty.")
		end

	elseif item.uid == 6050 then
	questAddReward(cid, topos, 2537, 1, item.uid) --amazon shield

	--turim mountain
	elseif item.uid == 6059 then
	questAddReward(cid, topos, 2438, 1, item.uid) --epee

	--banshee mansion
	elseif item.uid == 6061 then
	questAddReward(cid, topos, 2496, 1, item.uid) --horned helmet

	--bk cave
	elseif item.uid == 6062 then
	questAddReward(cid, topos, 2407, 1, item.uid) --bright sword

	--demon hell
	elseif item.uid == 6063 then
	questAddReward(cid, topos, 2517, 1, item.uid) --holy shield

	elseif item.uid == 6064 then
	questAddReward(cid, topos, 2462, 1, item.uid) --devil helmet

	elseif item.uid == 6065 then
	questAddReward(cid, topos, 2522, 1, item.uid) --great shield

--end of quests

	else
		return false
	end
	return true
end