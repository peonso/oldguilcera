function onLogin(cid)
	if getPlayerPremiumDays(cid) <= 15 then
		doPlayerAddPremiumDays(cid, 30)
		-- doPlayerSendTextMessage(cid, 17, "You received 30 premium days for free.")
	end
	return TRUE
end