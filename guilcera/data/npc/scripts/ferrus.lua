_state = 0
_delay = 750

function getNext()
	nextPlayer = getQueuedPlayer()
	if (nextPlayer ~= nil) then
		if (getDistanceToCreature(nextPlayer) <= 4) then
			updateNpcIdle()
			setNpcFocus(nextPlayer)
			selfSay('Hello, ' .. getCreatureName(cid) .. ' Feel free to ask me for help.', _delay * 2)
			return
		else
			getNext()
		end
	end
	
	setNpcFocus(0)
	resetNpcIdle()
end

function _selfSay(message)
	selfSay(message, _delay)
	updateNpcIdle()
end

function onCreatureAppear(cid)

end

function onCreatureDisappear(cid)
	if (getNpcFocus() == cid) then
		selfSay('Well, bye then.', _delay)
		getNext()
	else
		unqueuePlayer(cid)
	end
end

function onCreatureMove(cid, oldPos, newPos)
	if (getNpcFocus() == cid) then
		faceCreature(cid)
		
		if (oldPos.z ~= newPos.z or getDistanceToCreature(cid) > 4) then
			selfSay('Well, bye then.', _delay)
			getNext()
		end
	else
		if (oldPos.z ~= newPos.z or getDistanceToCreature(cid) > 4) then
			unqueuePlayer(cid)
		end
	end
end

function onCreatureSay(cid, type, msg)
	if (msgcontains(msg, 'heal')) then
		if (getPlayerHealth(cid) < 65) then
			doCreatureAddHealth(cid, 65)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_MAGIC_BLUE)
			selfSay('You are looking really bad. Let me heal your wounds.', _delay)
		elseif (hasCondition(cid, CONDITION_POISON) == TRUE) then
			doRemoveCondition(cid, CONDITION_POISON)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_MAGIC_GREEN)
			selfSay('You are poisoned. I will help you.', _delay)
		elseif (hasCondition(cid, CONDITION_FIRE) == TRUE) then
			doRemoveCondition(cid, CONDITION_FIRE)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_MAGIC_RED)
			selfSay('You are burning. I will help you.', _delay)
		else
			if (getNpcFocus ~= cid) then
				selfSay('You aren\'t looking really bad, ' .. getCreatureName(cid) .. '. Sorry, I can\'t help you.', _delay)
			else
				selfSay('You aren\'t looking that bad. Sorry, I can\'t help you.', _delay)
			end
		end
	elseif (getNpcFocus() == 0) then
		if ((msgcontains(msg, 'hi') or msgcontains(msg, 'hello')) and getDistanceToCreature(cid) <= 4) then
			updateNpcIdle()
			setNpcFocus(cid)
			selfSay('Hello, ' .. getCreatureName(cid) .. '! Feel free to ask me for help.', _delay)
		end
	elseif (getNpcFocus() ~= cid) then
		if ((msgcontains(msg, 'hi') or msgcontains(msg, 'hello')) and getDistanceToCreature(cid) <= 4) then
			selfSay('Please wait, ' .. getCreatureName(cid) .. '. I already talk to someone!', _delay)
			queuePlayer(cid)
		end
	else
		if (msgcontains(msg, 'bye') or msgcontains(msg, 'farewell')) then
			selfSay('Well, bye then, ' .. getCreatureName(cid) .. '.', _delay)
			getNext()

		elseif (msgcontains(msg, 'job')) then
			_selfSay('I am just a humble monk. Ask me if you need help or healing.')
		
		elseif (msgcontains(msg, 'name')) then
			_selfSay('My name is Ferrus.')
		
		elseif (msgcontains(msg, 'blessing')) then
			_selfSay('Remere, in the higher floor of the magic shop is the one you are looking for.')
			
		elseif (msgcontains(msg, 'time')) then
			_selfSay('Now, it is ' .. getTibiaTime() .. ', my child.')
			
		elseif (msgcontains(msg, 'monk')) then
			_selfSay('I sacrifice my life to serve the good gods of Guilcera.')
		
		elseif (msgcontains(msg, 'tibia')) then
			_selfSay('Once the lands in the world were called Tibia, but it\'s a long forgotten civilization, we live now on Guilcera.')
			
		elseif (msgcontains(msg, 'guilcera')) then
			_selfSay('That\'s where we are. The world of Guilcera.')
			
		elseif (msgcontains(msg, 'god')) then
			_selfSay('They created Guilcera and all life on it. Visit our library and learn about them.')
			
		elseif (msgcontains(msg, 'plant')) then
			_selfSay('Just walk around. You will see grass, trees, and bushes.')
		
		elseif (msgcontains(msg, 'citizen')) then
			_selfSay('Only few people live here. Walk around and talk to them.')
			
		elseif (msgcontains(msg, 'monsters') or msgcontains(msg, 'fight')) then
			_selfSay('They are a constant threat. Learn to fight by hunting rats, bugs and perhaps spiders.')
			
		elseif (msgcontains(msg, 'money') or msgcontains(msg, 'gold')) then
			_selfSay('If you need money, you have to slay monsters and take their gold. Look for spiders and rats.')
			
		elseif (msgcontains(msg, 'rat') or msgcontains(msg, 'sewer')) then
			_selfSay('In the north of this temple you find a sewer grate. Use it to enter the sewers if you feel prepared. Don\'t forget a torch; you\'ll need it.')
			
		elseif (msgcontains(msg, 'food')) then
			_selfSay('You can buy food with GriZzm0 at druid\'s den, left from depot.')
			
		elseif (msgcontains(msg, 'grizzmo') or msgcontains(msg, 'grizzm0') or msgcontains(msg, 'rod')) then
			_selfSay('GriZzm0 is a druid. You can find him at the den, left from depot. He got some cheap food, and if you are also a druid you can buy rods with him.')
			
		elseif (msgcontains(msg, 'hint') or msgcontains(msg, 'help')) then
			_selfSay('I\'m here to help you, jusk ask for something and I will answer if I can.')
			
		elseif (msgcontains(msg, 'command')) then
			_selfSay('\'NOT SCRIPTED\'')
			
		elseif (msgcontains(msg, 'equipment') or msgcontains(msg, 'tliff')  or msgcontains(msg, 'rope') or msgcontains(msg, 'shovel')) then
			_selfSay('Tliff is the one you are looking for! He is settled by the west entrance of the city. He sells ropes, shovels and those kind of stuff.')
			
		elseif (msgcontains(msg, 'task') or msgcontains(msg, 'quest') or msgcontains(msg, 'mission')) then
			_selfSay('\'NOT SCRIPTED\'')
			
		elseif (msgcontains(msg, 'armor') or msgcontains(msg, 'gear') or msgcontains(msg, 'shield')) then
			_selfSay('Atolon is our blacksmith. You\'ll find him north of the temple. His shop is to the right.')
			
		elseif (msgcontains(msg, 'atolon')) then
			_selfSay('Atolon is our blacksmith. You\'ll find him north of the temple. His shop is to the right.')
			
		elseif (msgcontains(msg, 'weapon')) then
			_selfSay('Atolon is our blacksmith. You\'ll find him north of the temple. His shop is to the right.')
			
		elseif (msgcontains(msg, 'bow') or msgcontains(msg, 'bolt') or msgcontains(msg, 'arrow')) then
			_selfSay('\'NOT SCRIPTED\'')
			
		elseif (msgcontains(msg, 'pietia') or msgcontains(msg, 'pietia10')) then
			_selfSay('\'NOT SCRIPTED\'')
			
		elseif (msgcontains(msg, 'magic') and msgcontains(msg, 'shop')) then
			_selfSay('\'NOT SCRIPTED\'')
			
		elseif (msgcontains(msg, 'spell')) then
			_selfSay('\'NOT SCRIPTED\'')
			
		elseif (msgcontains(msg, 'wand') or msgcontains(msg, 'blank') or msgcontains(msg, 'spellbook')) then
			_selfSay('\'NOT SCRIPTED\'')
			
		elseif (msgcontains(msg, 'jiddo')) then
			_selfSay('\'NOT SCRIPTED\'')
						
		elseif (msgcontains(msg, 'promotion')) then
			_selfSay('\'NOT SCRIPTED\'')
			
		elseif (msgcontains(msg, 'king') or msgcontains(msg, 'peonso')) then
			_selfSay('\'NOT SCRIPTED\'')

		elseif (msgcontains(msg, 'depot')) then
			_selfSay('\'NOT SCRIPTED\'')
			
		elseif (msgcontains(msg, 'tabern')) then
			_selfSay('\'NOT SCRIPTED\'')
		
		elseif (msgcontains(msg, 'rex')) then
			_selfSay('\'NOT SCRIPTED\'')
			
		elseif (msgcontains(msg, 'blacksmith') or msgcontains(msg, 'merchant')) then
			_selfSay('\'NOT SCRIPTED\'')
		
		elseif (msgcontains(msg, 'talaturen')) then
			_selfSay('\'NOT SCRIPTED\'')
			
		elseif (msgcontains(msg, 'amulet') or msgcontains(msg, 'rune')) then
			_selfSay('\'NOT SCRIPTED\'')
			
		elseif (msgcontains(msg, 'remere')) then
			_selfSay('\'NOT SCRIPTED\'')
			
		elseif (msgcontains(msg, 'dragonslayer') or msgcontains(msg, 'yurez')) then
			_selfSay('\'NOT SCRIPTED\'')	
			
		elseif (msgcontains(msg, 'boat') or msgcontains(msg, 'captain') or msgcontains(msg, 'simone')) then
			_selfSay('\'NOT SCRIPTED\'')	
			
		elseif (msgcontains(msg, 'peonsville')) then
			_selfSay('\'NOT SCRIPTED\'')	
			
		elseif (msgcontains(msg, 'turim')) then
			_selfSay('\'NOT SCRIPTED\'')	
			
		elseif (msgcontains(msg, 'xanadu')) then
			_selfSay('\'NOT SCRIPTED\'')	
			
		end
	end
end

function onThink()
	if (getNpcFocus() ~= 0) then
		if (isNpcIdle()) then
			selfSay('Well, bye then, ' .. getCreatureName(cid) .. '.', _delay)
			getNext()
		end
	end
end