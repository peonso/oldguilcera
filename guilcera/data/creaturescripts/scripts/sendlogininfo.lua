function onLogin(cid)
	--Sends the login messages and also the teleport effect
	local loginMsg = getConfigValue('loginmsg')
	-- getPlayerLastLogin(cid) does not work with Avesta rev94
--[[
	local lastLogin = getPlayerLastLogin(cid)
	local serverName = getConfigValue('ServerName')
	local str = ""
]]--

	if (string.len(loginMsg) ~= 0) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_LBLUE, loginMsg)
	end

--[[	if (getPlayerLastLogin(cid) ~= 0) then
		str = "Your last visit in "
		str = str .. serverName
		str = str .. ": "
		str = str .. os.date("%d %b %Y %X", lastLogin)
		str = str .. "."
	else
		str = "This is your first visit in "
		str = str .. serverName
		str = str .. ". Please choose an outfit."
	end
	
	doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, str)
	]]--
	
	return TRUE
end