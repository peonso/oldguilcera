local config = {
	loginMessage = getConfigValue('loginMessage'),
	useFragHandler = getBooleanFromString(getConfigValue('useFragHandler'))
}

function onLogin(cid)
    if(InitHistory == 0) then
        local historyPage = addEvent(historyPage, 60000, {})
        InitHistory = historyPage
    end
    registerCreatureEvent(cid, "PlayerDeath")

	if(getBooleanFromString(getConfigValue('accountManager')) == false) then
		if (getCreatureName(cid) == "Account Manager") then
			return doRemoveCreature(cid, true)
		end
	end

	local loss = getConfigValue('deathLostPercent')
	if(loss ~= nil) then
		doPlayerSetLossPercent(cid, PLAYERLOSS_EXPERIENCE, loss * 10)
	end

	local accountManager = getPlayerAccountManager(cid)
	if(accountManager == MANAGER_NONE) then
		local lastLogin, str = getPlayerLastLoginSaved(cid), config.loginMessage
		if(lastLogin > 0) then
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_DEFAULT, str)
			str = "Your last visit was on " .. os.date("%a %b %d %X %Y", lastLogin) .. "."
		else
			str = str .. " Please choose your outfit."
			doPlayerSendOutfitWindow(cid)
		end

		doPlayerSendTextMessage(cid, MESSAGE_STATUS_DEFAULT, str)
	elseif(accountManager == MANAGER_NAMELOCK) then
		addEvent(valid(doCreatureSay), 500, cid, "Hello, it appears that your character has been locked for name violating rules, what new name would you like to have?", TALKTYPE_PRIVATE_NP, true, cid)
	elseif(accountManager == MANAGER_ACCOUNT) then
		addEvent(valid(doCreatureSay), 500, cid, "Hello, type 'account' to manage your account. If you would like to start over, type 'cancel' anywhere.", TALKTYPE_PRIVATE, true, cid)
	else
		addEvent(valid(doCreatureSay), 500, cid, "Hello, type 'account' to create an account or 'recover' to recover an account.", TALKTYPE_PRIVATE, true, cid)
	end

	if(not isPlayerGhost(cid)) then
		doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
	end

	registerCreatureEvent(cid, "Idle")
	registerCreatureEvent(cid, "Mail")
	registerCreatureEvent(cid, "ReportBug")
	if(config.useFragHandler) then
		registerCreatureEvent(cid, "SkullCheck")
	end

	registerCreatureEvent(cid, "GuildEvents")
	registerCreatureEvent(cid, "AdvanceSave")
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
