function onLogin(cid)

	--PowerGamers
    if(InitHistory == 0) then
        local historyPage = addEvent(historyPage, 60000, {})
        InitHistory = historyPage
    end
	
    registerCreatureEvent(cid, "PlayerDeath")
	
	--Register the kill/die event
	registerCreatureEvent(cid, "RemoveBlesses")

	--Register the Stage event
	if getBooleanFromString(getConfigInfo("experience_stages"), false) then
		registerCreatureEvent(cid, "ExpStage")
		checkStageChange(cid)
	end

	--Remove blesses if necessary
	if getPlayerStorageValue(cid, STORAGE_REMOVE_BLESSES) == 1 then
		local i = 0
		while i < 5 do
			doPlayerRemoveBless(cid, i)
			i = i + 1
		end
		setPlayerStorageValue(cid, STORAGE_REMOVE_BLESSES, -1)
	end

	--Promotes player if necessary
	if(isPremium(cid) ) then
		if(getPlayerStorageValue(cid, STORAGE_PROMOTION) == 1 and getPlayerVocation(cid) <= 4) then
			doPlayerSetVocation(cid, getPlayerVocation(cid)+4)
			doPlayerRemoveSkillLossPercent(cid, 30)
			setPlayerStorageValue(cid, STORAGE_PROMOTION, -1)
		end
		if(getPlayerStorageValue(cid, STORAGE_PREMIUM_ACCOUNT) == 1) then
			setPlayerStorageValue(cid, STORAGE_PREMIUM_ACCOUNT, -1)
		end
		return true
	end

	--Player is not premium - remove premium privileges
	--Change outfit
	if(getPlayerStorageValue(cid, STORAGE_PREMIUM_ACCOUNT) == -1) then
		local lookType = 128
		if(getPlayerSex(cid) == 0) then
			lookType = 136
		end
		local house = House.getHouseByOwner(cid)
		if(house) and getBooleanFromString(getConfigInfo("house_only_premium"), true) then
			house:setOwner(0) --Remove the house from the player, the server takes care of the rest
		end
		doCreatureChangeOutfit(cid, {lookType = lookType, lookHead = 78, lookBody = 69, lookLegs = 97, lookFeet = 95, lookAddons = 0})
		setPlayerStorageValue(cid, STORAGE_PREMIUM_ACCOUNT, 1)
	end

	--Teleport to free town, change here
	--[[
	doPlayerSetTown(cid, Z)
	local masterFreePos = {x=100, y=100, z=7}
	doTeleportThing(cid, masterFreePos)
	]]-- Hoster's premium towns changes according to the map

	--Remove promotion
	local isPromo = (getPlayerVocation(cid) > 4 and isPremium(cid) == false)
	if(isPromo) then
		doPlayerSetVocation(cid, getPlayerVocation(cid)-4)
		doPlayerRemoveSkillLossPercent(cid, -30)
		setPlayerStorageValue(cid, STORAGE_PROMOTION, 1)
	end
	
	return true
end

function historyPage(parameters)
    local historyPage = addEvent(historyPage, 60000, {})
    if (tonumber(os.date("%d")) ~= getGlobalStorageValue(23456)) then
        setGlobalStorageValue(23456, (tonumber(os.date("%d"))))
        db.executeQuery("UPDATE `players` SET `onlinetime7`=players.onlinetime6, `onlinetime6`=players.onlinetime5, `onlinetime5`=players.onlinetime4, `onlinetime4`=players.onlinetime3, `onlinetime3`=players.onlinetime2, `onlinetime2`=players.onlinetime1, `onlinetime1`=players.onlinetimetoday, `onlinetimetoday`=0;")
        db.executeQuery("UPDATE `players` SET `exphist7`=players.exphist6, `exphist6`=players.exphist5, `exphist5`=players.exphist4, `exphist4`=players.exphist3, `exphist3`=players.exphist2, `exphist2`=players.exphist1, `exphist1`=players.experience-players.exphist_lastexp, `exphist_lastexp`=players.experience;")
    end
    db.executeQuery("UPDATE `players` SET `onlinetimetoday`=players.onlinetimetoday+60, `onlinetimeall`=players.onlinetimeall+60 WHERE `online` = 1;")
end