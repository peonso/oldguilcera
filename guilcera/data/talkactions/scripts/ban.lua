function onSay(cid, words, param)

local admin = getPlayerGUID(cid)

local t = string.explode(string.lower(param), ",")
	if not t[1] then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Command requires param.") return true
	end
	
local player = getPlayerByNameWildcard(t[1]) 
	if(not player)then 
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Player not found.") return true 
	end
	
local hours,comment = not tonumber(t[2]) and 12 or tonumber(t[2]),not t[3] and "No Reason" or t[3]
	doBroadcastMessage(getCreatureName(player).." was banned by "..getCreatureName(cid)..": "..comment)
	doAddAccountBanishment(getPlayerAccountId(player), target, os.time() + hours*3600, reason, 2, comment, admin)
	doRemoveCreature(player)
	return true
end