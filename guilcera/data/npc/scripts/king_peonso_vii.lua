_state = 0
_delay = 750

function getNext()
	nextPlayer = getQueuedPlayer()
	if (nextPlayer ~= nil) then
		if (getDistanceToCreature(nextPlayer) <= 4) then
			setNpcFocus(nextPlayer)
			selfSay('I greet thee, my loyal subject.', _delay * 2)
			updateNpcIdle()
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
		selfSay('What a lack of manners!', _delay)
		getNext()
	else
		unqueuePlayer(cid)
	end
end

function onCreatureMove(cid, oldPos, newPos)
	if (getNpcFocus() == cid) then
		faceCreature(cid)
		
		if (oldPos.z ~= newPos.z or getDistanceToCreature(cid) > 4) then
			selfSay('What a lack of manners!', _delay)
			getNext()
		end
	else
		if (oldPos.z ~= newPos.z or getDistanceToCreature(cid) > 4) then
			unqueuePlayer(cid)
		end
	end
end

function onCreatureSay(cid, type, msg)
	if (getNpcFocus() == 0) then
		if (msgcontains(msg, 'king') and getDistanceToCreature(cid) <= 4) then
			if (msgcontains(msg, 'hello') or msgcontains(msg, 'hail') or msgcontains(msg, 'salutations')) then
				updateNpcIdle()
				setNpcFocus(cid)
				selfSay('I greet thee, my loyal subject.', _delay)
			end
		end
		
	elseif (getNpcFocus() ~= cid) then 
		if ((msgcontains(msg, 'hi') or msgcontains(msg, 'hello')) and getDistanceToCreature(cid) <= 4) then
			--selfSay('Just wait, ' .. getCreatureName(cid) .. '.', _delay)
			--queuePlayer(cid)
		end
		
	else
		if (msgcontains(msg, 'bye') or msgcontains(msg, 'farewell')) then
			selfSay('Good bye, ' .. getCreatureName(cid) .. '!', _delay)
			getNext()
		
		elseif (msgcontains(msg, 'job')) then
			_selfSay('I am your sovereign, King Peonso VII, and it\'s my duty to provide justice and guidance for my subjects.')
		
		elseif (msgcontains(msg, 'justice')) then
			_selfSay('I try my best to be just and fair to our citizens. The army is a great help for fulfilling this duty.')
		
		elseif (msgcontains(msg, 'name')) then
			_selfSay('It\'s hard to believe that you don\'t know your own king!')
		
		elseif (msgcontains(msg, 'king') or msgcontains(msg, 'peonso')) then
			_selfSay('The king has not much interest in magic items as far as I know.')
		
		elseif (msgcontains(msg, 'news')) then
			_selfSay('The latest news are usually brought to our magnificent town by brave adventurers. They spread tales of their journeys at Rex\'s tavern.')
		
		elseif (msgcontains(msg, 'guilcera') or msgcontains(msg, 'land')) then
			_selfSay('Soon the whole land will be ruled by me once again!')
		
		elseif (msgcontains(msg, 'how') and msgcontains(msg, 'are') and msgcontains(msg, 'you')) then
			_selfSay('Thank you, I\'m fine.')
		
		elseif (msgcontains(msg, 'castle')) then
			_selfSay('Peonsville Castle is my home.')
		
		elseif (msgcontains(msg, 'sell')) then
			_selfSay('Sell? Sell what? My kingdom isn\'t for sale!')
		
		elseif (msgcontains(msg, 'god')) then
			_selfSay('Honor the gods and pay your taxes.')

		elseif (msgcontains(msg, 'citizen')) then
			_selfSay('The citizens of Tibia are my subjects. Ask the old monk Ferrus to learn more about them.')

		elseif (msgcontains(msg, 'treasure')) then
			_selfSay('My daughter Edyneia is my greatest treasure!')
			
		elseif (msgcontains(msg, 'monster')) then
			_selfSay('o and hunt them! For king and country!')
			
		elseif (msgcontains(msg, 'help')) then
			_selfSay('Visit Ferrus, the monk, for help.')
			
		elseif (msgcontains(msg, 'quest') or msgcontains(msg, 'mission')) then
			_selfSay('I will call for heroes as soon as the need arises again and then reward them appropriately.')
			
		elseif (msgcontains(msg, 'gold') or msgcontains(msg, 'money') or msgcontains(msg, 'tax')) then
			_selfSay('To pay your taxes, visit the royal tax collector.')
			
		elseif (msgcontains(msg, 'sewer')) then
			_selfSay('What a disgusting topic!')
			
		elseif (msgcontains(msg, 'dungeon')) then
			_selfSay('Dungeons are no places for kings.')
			
		elseif (msgcontains(msg, 'equipment')) then
			_selfSay('Feel free to buy it in our town\'s fine shops.')
			
		elseif (msgcontains(msg, 'time') or msgcontains(msg, 'hero') or msgcontains(msg, 'heroes')) then
			_selfSay('It\'s a time for heroes, that\'s for sure!')
			
		elseif (msgcontains(msg, 'tax') and msgcontains(msg, 'collector')) then
			_selfSay('He has been lazy lately. I bet you have not payed any taxes at all.')
			
		elseif (msgcontains(msg, 'king')) then
			_selfSay('I am the king, so mind your words!')
			
		elseif (msgcontains(msg, 'army')) then
			_selfSay('Ask the soldiers about that topic.')
			
		elseif (msgcontains(msg, 'enemy') or msgcontains(msg, 'enemies')) then
			_selfSay('Our enemies are numerous.')
			
		elseif (msgcontains(msg, 'peonsville') or msgcontains(msg, 'city')) then
			_selfSay('Our beloved city has some fine shops, guildhouses, and a modern system of sewers.')
			
		elseif (msgcontains(msg, 'shop')) then
			_selfSay('Visit the shops of our merchants and craftsmen.')
			
		elseif (msgcontains(msg, 'merchant') or msgcontains(msg, 'craftsmen')) then
			_selfSay('Ask around about them.')
			
		elseif (msgcontains(msg, 'guild')) then
			_selfSay('The four major guilds are the knights, the paladins, the druids, and the sorcerers.')
			
		elseif (msgcontains(msg, 'minotaur')) then
			_selfSay('Vile monsters, but I must admit they are strong and sometimes even cunning ... in their own bestial way.')
			
		elseif (msgcontains(msg, 'good')) then
			_selfSay('The forces of good are hard pressed in these dark times.')
			
		elseif (msgcontains(msg, 'evil')) then
			_selfSay('We need all strength we can muster to smite evil!')
			
		elseif (msgcontains(msg, 'order')) then
			_selfSay('We need order to survive!')
			
		elseif (msgcontains(msg, 'chaos')) then
			_selfSay('Chaos arises from selfishness, and that\'s its weakness.')
			
		elseif (msgcontains(msg, 'excalibug')) then
			_selfSay('It\'s the sword of the kings. If you could return this weapon to me I would reward you beyond your dreams.')
			
		elseif (msgcontains(msg, 'reward')) then
			_selfSay('Well, if you want a reward, go on a quest to bring me Excalibug!')

		elseif (msgcontains(msg, 'promote') or msgcontains(msg, 'promotion')) then
			_selfSay('Do you want to be promoted in your vocation for 20000 gold?')
			_state = 1
		
		elseif (_state == 1) then
			if (msgcontains(msg, 'yes')) then
				if (isPremium(cid) == 1) then
					if (isPromoted(cid) == 0) then
						if (getPlayerLevel(cid) >= 20) then
							if (doPlayerRemoveMoney(cid, 20000) == 1) then
								doPlayerSetVocation(cid, getPlayerVocation(cid) + 4)
								_selfSay('Congratulations! You are now promoted.')
							else
								_selfSay('You do not have enough money.')
							end
						else
							_selfSay('You need to be at least level 20 in order to be promoted.')
						end
					else
						_selfSay('You are already promoted.')
					end
				else
					_selfSay('You need a premium account in order to promote.')
				end
			else
				_selfSay('Ok, then not.')
			end
			
			_state = 0
		end
	end
end

function onThink()
	if (getNpcFocus() ~= 0) then
		if (isNpcIdle()) then
			selfSay('What a lack of manners!', _delay)
			getNext()
		end
	end
end
