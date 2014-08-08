function onSay(cid, words, param)
	if(param == "") then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You need to type the parameter.")
		return true
	end

	local ntiles = tonumber(param)
	if(ntiles == nil or ntiles <= 0) then
		return true
	end

	local oldPos = getPlayerPosition(cid)
	if(oldPos == false) then
		return true
	end

	local newPos = getPlayerPosition(cid)
	if(newPos == false) then
		return true
	end

	local lookDir = getPlayerLookDir(cid)

	if(lookDir == NORTH) then
		newPos.y = newPos.y - ntiles
	elseif(lookDir == SOUTH) then
		newPos.y = newPos.y + ntiles
	elseif(lookDir == EAST) then
		newPos.x = newPos.x + ntiles
	elseif(lookDir == WEST) then
		newPos.x = newPos.x - ntiles
	end

	if(newPos.x < 0 or newPos.x > 65535 or newPos.y < 0 or newPos.y > 65535) then
		return true
	end

	if(doTeleportThing(cid, newPos)) then
		if(isPlayerGhost(cid) == false) then
			doSendMagicEffect(oldPos, CONST_ME_POFF)
			doSendMagicEffect(getPlayerPosition(cid), CONST_ME_TELEPORT)
		end
	else
		doPlayerSendCancel(cid, "Destination is not reachable.")
	end

	return true
end
