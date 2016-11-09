function onUse(cid, item, fromPosition, target, toPosition, isHotkey)
	local config = {
		requiredLevel = 100,
		daily = false,
		playerPositions = {
			Position(426, 93, 11),
			Position(425, 93, 11),
			Position(424, 93, 11),
			Position(423, 93, 11)
		},
		newPositions = {
			Position(429, 79, 11),
			Position(428, 79, 11),
			Position(427, 79, 11),
			Position(426, 79, 11)
		},
		demonPositions = {
			Position(426, 77, 11),
			Position(428, 77, 11),
			Position(430, 79, 11),
			Position(431, 79, 11),
			Position(427, 81, 11),
			Position(429, 81, 11)
		}
	}

	local room = {     -- room with demons
		fromX = 426,
		fromY = 77,
		fromZ = 11,
		toX = 442,
		toY = 81,
		toZ = 11
	}

	if item.itemid == 1946 then
		local storePlayers, playerTile = {}

		for i = 1, #config.playerPositions do
			local player = getTopCreature(config.playerPositions[i])
			if not isPlayer(player.uid) then
				doPlayerSendTextMessage(cid,MESSAGE_STATUS_SMALL,"You need 4 players to do this quest.")
				return true
			end
	
			if getPlayerLevel(player.uid) < config.requiredLevel then
				doPlayerSendTextMessage(cid,MESSAGE_STATUS_SMALL,"All the players need to be level ".. config.requiredLevel .." or higher.")
				return true
			end

			storePlayers[#storePlayers + 1] = player
		end

		for i = 1, #config.demonPositions do
			doSummonCreature("Demon", config.demonPositions[i])
		end

		local players
		for i = 1, #storePlayers do
			players = storePlayers[i]
			doSendMagicEffect(config.playerPositions[i],CONST_ME_POFF)
			doTeleportThing(players.uid,config.newPositions[i])
			doSendMagicEffect(config.newPositions[i],CONST_ME_TELEPORT)
			doSetCreatureDirection(players.uid, EAST)
		end
		
		doTransformItem(item.uid,1945)
	elseif item.itemid == 1945 then
		if config.daily then
			doPlayerSendCancel(cid,"Sorry, not possible.")
			return true
		else
			local player_room = 0
			for x = room.fromX, room.toX do
				for y = room.fromY, room.toY do
					for z = room.fromZ, room.toZ do
						local pos = {x=x,y=y,z=z,stackpos=253}
						local thing = getThingfromPos(pos)
						if thing.itemid > 0 then
							if isPlayer(thing.uid) == true then
								player_room = player_room+1
							end
						end
					end
				end
			end
			if player_room >= 1 then
				doPlayerSendCancel(cid,"Sorry, not possible.")
				return true
			else
				for x = room.fromX, room.toX do
					for y = room.fromY, room.toY do
						for z = room.fromZ, room.toZ do
							local pos = {x=x, y=y, z=z,stackpos = 253}
							local thing = getThingfromPos(pos)
							if thing.itemid > 0 then
								doRemoveCreature(thing.uid)
							end
						end
					end
				end
				doTransformItem(item.uid,1946)
			end
		end
	end
	
	return true
end