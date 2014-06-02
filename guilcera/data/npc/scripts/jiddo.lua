_state = 0
_count = 0
_index = 0
_delay = 500
 
local items = {}
items[0] = {name = 'vortex', id = 2190, subtype = -1, sell = 500, buy = -1, stackable = 0}
items[1] = {name = 'dragonbreath', id = 2191, subtype = -1, sell = 1000, buy = -1, stackable = 0}
items[2] = {name = 'plague', id = 2188, subtype = -1, sell = 5000, buy = -1, stackable = 0}
items[3] = {name = 'cosmic', id = 2189, subtype = -1, sell = 10000, buy = -1, stackable = 0}
items[4] = {name = 'inferno', id = 2187, subtype = -1, sell = 15000, buy = -1, stackable = 0}
items[5] = {name = 'blank', id = 2260, subtype = -1, sell = 10, buy = -1, stackable = 0}
items[6] = {name = 'mana', id = 2006, subtype = 7, sell = 55, buy = -1, stackable = 0}
items[7] = {name = 'spellbook', id = 2175, subtype = -1, sell = 150, buy = -1, stackable = 0}
items[8] = {name = 'snakebite', id = 2182, subtype = -1, sell = 500, buy = -1, stackable = 0}
items[9] = {name = 'moonlight', id = 2186, subtype = -1, sell = 1000, buy = -1, stackable = 0}
items[10] = {name = 'volcanic', id = 2185, subtype = -1, sell = 5000, buy = -1, stackable = 0}
items[11] = {name = 'quagmire', id = 2181, subtype = -1, sell = 10000, buy = -1, stackable = 0}
items[12] = {name = 'tempest', id = 2183, subtype = -1, sell = 15000, buy = -1, stackable = 0}

local function onActionItem(action)
	if (action == 'buy' and items[_index].sell == -1) then
		selfSay('I\'m not selling it.', _delay * 2)
		_state = 0
		return
	elseif (action == 'sell' and items[_index].buy == -1) then
		selfSay('I\'m not interested.', _delay * 2)
		_state = 0
		return
	end

	DESCRIPTION = getItemDescriptions(items[_index].id)
	amount = ''
	NAME_TO_SAY = DESCRIPTION.name
	if items[_index].subtype == 7 then
		NAME_TO_SAY = 'mana fluid'
	end
	plural = DESCRIPTION.article
 
	if (_count > 1) then
		amount = '' .. tostring(_count)
		NAME_TO_SAY = DESCRIPTION.plural
		if items[_index].subtype == 7 then
		NAME_TO_SAY = 'mana fluids'
		end
		plural = ''
	end
 
	cost = items[_index].buy
	if (_count > 1) then
		cost = items[_index].buy * amount
	end

	if (action == 'buy') then
		cost = items[_index].sell
		if (_count > 1) then
			cost = items[_index].sell * amount
		end
	end
 
 	selfSay('Do you want to ' .. action .. ' ' .. plural .. amount .. ' ' .. NAME_TO_SAY .. ' for ' .. cost .. ' gold?')
end
 
function getNext()
	nextPlayer = getQueuedPlayer()
	if (nextPlayer ~= nil) then
		if (getDistanceToCreature(nextPlayer) <= 4) then
			updateNpcIdle()
			setNpcFocus(nextPlayer)
			_state = 0
			selfSay('Welcome ' .. getCreatureName(nextPlayer) .. '! Whats your need?', _delay * 3)
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
		selfSay('These impatient young brats!', _delay)
    _state = 0
		getNext()
	else
		unqueuePlayer(cid)
	end
end
 
function onCreatureMove(cid, oldPos, newPos)
	if (getNpcFocus() == cid) then
		faceCreature(cid)
 
		if (oldPos.z ~= newPos.z or getDistanceToCreature(cid) > 4) then
			selfSay('These impatient young brats!', _delay)
      _state = 0
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
		if ((msgcontains(msg, 'hi') or msgcontains(msg, 'hello')) and getDistanceToCreature(cid) <= 4) then
			updateNpcIdle()
			setNpcFocus(cid)
			selfSay('Welcome ' .. getCreatureName(cid) .. '! Whats your need?', _delay)
		end
	
	elseif (getNpcFocus() ~= cid) then
		if ((msgcontains(msg, 'hi') or msgcontains(msg, 'hello')) and getDistanceToCreature(cid) <= 4) then
			selfSay('Wait, ' .. getCreatureName(cid) .. '! One after the other.', _delay)
			queuePlayer(cid)
		end
 
	else
		if (msgcontains(msg, 'bye')or msgcontains(msg, 'farewell')) then
			selfSay('Good bye, ' .. getCreatureName(cid) .. '.', _delay)
			_state = 0
			getNext()

		elseif (msgcontains(msg, 'hi') or msgcontains(msg, 'hello')) then
			_selfSay('I\'m already talking to you.')
 			_state = 0
 
		elseif (msgcontains(msg, 'name')) then
			_selfSay('I am the illusterous Jiddo, of course.')
 			_state = 0

		elseif (msgcontains(msg, 'job')) then
			_selfSay('"I am the head alchemist of Peonsville. I keep the secret recipies of our ancestors. Besides, I am selling mana fluids, spellbooks, wands, rods and blank runes.')
 			_state = 0

		elseif (msgcontains(msg, 'vocation')) then
			_selfSay('Your vocation is your profession. There are four vocations in Tibia: Sorcerers, paladins, knights, and Sorcerers.')
 			_state = 0
			
		elseif (msgcontains(msg, 'patience')) then
			_selfSay('You have to free yourself from unpatience to learn the deeper secrets of magic.')
 			_state = 0
			
		elseif (msgcontains(msg, 'sorcerer')) then
			_selfSay('Spells are the minor parts that make a sorcerer. To be one is a state of mind, not of a full spellbook.')
 			_state = 0	
			
		elseif (msgcontains(msg, 'power')) then
			_selfSay('Power is important, but it is just the way, not the ultimate goal.')
 			_state = 0	
			
		elseif (msgcontains(msg, 'goal')) then
			_selfSay('This secrect will be taught you by life, not by me.')
 			_state = 0	
			
		elseif (msgcontains(msg, 'ancestor')) then
			_selfSay('There were many generations of sorcerers in the past. Today a lot of people want to join us.')
 			_state = 0	
			
		elseif (msgcontains(msg, 'wisdom')) then
			_selfSay('Wisdom arises from patience.')
 			_state = 0

		elseif (msgcontains(msg, 'time')) then
			_selfSay('Time is of no meaning to us sorcerers.')
 			_state = 0

		elseif (msgcontains(msg, 'offer') or msgcontains(msg, 'goods')) then
			_selfSay('I am selling mana fluids, spellbooks, wands, rods and blank runes.')
			_state = 0

		elseif (_state == 1) then
			if (msgcontains(msg, 'yes')) then
				if (doPlayerRemoveMoney(cid, items[_index].sell * _count) == 1) then
 
					if items[_index].stackable == TRUE then
						local _stacks = math.floor(_count/100)
						_count = _count - _stacks*100
						if _stacks > 0 then
							for i = 1, _stacks do
								doPlayerAddItem(cid, items[_index].id, 100)
      							end
    						end
    						if _count > 0 then
							doPlayerAddItem(cid, items[_index].id, _count)
    						end

					else
						for i = 1, _count do
							doPlayerAddItem(cid, items[_index].id, items[_index].subtype)
						end
					end
 
					selfSay('Here you are.', _delay)
				else
					selfSay('Come back, when you have enough money.', _delay)
				end
 
				updateNpcIdle()
			else
				selfSay('Hmm, but next time.', _delay)
			end
 
			_state = 0
 
		elseif (_state == 2) then
			if (msgcontains(msg, 'yes')) then
				if (doPlayerRemoveItem(cid, items[_index].id, _count, items[_index].subtype) == 1) then
					doPlayerAddMoney(cid, items[_index].buy * _count)
					selfSay('Ok. Here is your money.')
				else
					if (_count > 1) then
						selfSay('Sorry, you do not have so many.', _delay)
					else
						selfSay('Sorry, you do not have one.', _delay)
					end
				end
 
				updateNpcIdle()
			else
				selfSay('Maybe next time.', _delay)
			end
 
			_state = 0
 
		else
			for n = 0, table.getn(items) do
				if (msgcontains(msg, items[n].name) or msgcontains(msg, items[n].name .. "s")) then
					_count = getCount(msg)
					_index = n
 
					if (msgcontains(msg, 'sell')) then
						_state = 2
						onActionItem('sell')
						
					else	
						_state = 1
						onActionItem('buy')
						
					end
 
					updateNpcIdle()
					break
				end
			end
		end
	end
end
 
function onThink()
	if (getNpcFocus() ~= 0) then
		if (isNpcIdle()) then
			selfSay('These impatient young brats!', _delay)
			_state = 0
			getNext()
		end
	end
end