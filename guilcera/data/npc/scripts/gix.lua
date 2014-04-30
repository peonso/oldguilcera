_state = 0
_count = 0
_index = 0
_delay = 500
 
itemsgix = {}
itemsgix[0] = {name = 'vortex', id = 2190, subtype = -1, sell = 500, buy = -1, stackable = 0}
itemsgix[1] = {name = 'dragonbreath', id = 2191, subtype = -1, sell = 1000, buy = -1, stackable = 0}
itemsgix[2] = {name = 'plague', id = 2188, subtype = -1, sell = 5000, buy = -1, stackable = 0}
itemsgix[3] = {name = 'cosmic', id = 2189, subtype = -1, sell = 10000, buy = -1, stackable = 0}
itemsgix[4] = {name = 'inferno', id = 2187, subtype = -1, sell = 15000, buy = -1, stackable = 0}
itemsgix[5] = {name = 'blank', id = 2260, subtype = -1, sell = 10, buy = -1, stackable = 0}
itemsgix[6] = {name = 'mana', id = 2006, subtype = 7, sell = 55, buy = -1, stackable = 0}
itemsgix[7] = {name = 'spellbook', id = 2175, subtype = -1, sell = 150, buy = -1, stackable = 0}
itemsgix[8] = {name = 'snakebite', id = 2182, subtype = -1, sell = 500, buy = -1, stackable = 0}
itemsgix[9] = {name = 'moonlight', id = 2186, subtype = -1, sell = 1000, buy = -1, stackable = 0}
itemsgix[10] = {name = 'volcanic', id = 2185, subtype = -1, sell = 5000, buy = -1, stackable = 0}
itemsgix[11] = {name = 'quagmire', id = 2181, subtype = -1, sell = 10000, buy = -1, stackable = 0}
itemsgix[12] = {name = 'tempest', id = 2183, subtype = -1, sell = 15000, buy = -1, stackable = 0}

local function onActionItem(action)
	if (action == 'buy' and itemsgix[_index].sell == -1) then
		selfSay('I\'m not selling it.', _delay * 2)
		_state = 0
		return
	elseif (action == 'sell' and itemsgix[_index].buy == -1) then
		selfSay('I\'m not interested.', _delay * 2)
		_state = 0
		return
	end

	DESCRIPTION = getItemDescriptions(itemsgix[_index].id)
	amount = ''
	NAME_TO_SAY = DESCRIPTION.name
	if itemsgix[_index].subtype == 7 then
		NAME_TO_SAY = 'mana fluid'
	end
	plural = DESCRIPTION.article
 
	if (_count > 1) then
		amount = '' .. tostring(_count)
		NAME_TO_SAY = DESCRIPTION.plural
		if itemsgix[_index].subtype == 7 then
		NAME_TO_SAY = 'mana fluids'
		end
		plural = ''
	end
 
	cost = itemsgix[_index].buy
	if (_count > 1) then
		cost = itemsgix[_index].buy * amount
	end

	if (action == 'buy') then
		cost = itemsgix[_index].sell
		if (_count > 1) then
			cost = itemsgix[_index].sell * amount
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
			selfSay('Hi there ' .. getCreatureName(nextPlayer) .. '.', _delay * 3)
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
 
--
function onCreatureAppear(cid)
 
end
 
function onCreatureDisappear(cid)
	if (getNpcFocus() == cid) then
		selfSay('See you.', _delay)
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
			selfSay('See you.', _delay)
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
			selfSay('Hi ' .. getCreatureName(cid) .. '! Are you new in Peonsville?', _delay)
		end
	
	elseif (getNpcFocus() ~= cid) then
		if ((msgcontains(msg, 'hi') or msgcontains(msg, 'hello')) and getDistanceToCreature(cid) <= 4) then
			selfSay('Sorry ' .. getCreatureName(cid) .. ', I\'m talking to a customer. Please stand in line.', _delay)
			queuePlayer(cid)
		end
 
	else
		if (msgcontains(msg, 'bye')or msgcontains(msg, 'farewell')) then
			selfSay('Good bye.', _delay)
			_state = 0
			getNext()

		elseif (msgcontains(msg, 'hi') or msgcontains(msg, 'hello')) then
			_selfSay('I\'m already talking to you.')
 			_state = 0
 
		elseif (msgcontains(msg, 'name')) then
			_selfSay('I am Gix. I am selling everything the adventurer needs.')
 			_state = 0

		elseif (msgcontains(msg, 'job')) then
			_selfSay('I am selling equipment of all kinds. Do you need anything?')
 			_state = 0

		elseif (msgcontains(msg, 'food')) then
			_selfSay('Sorry, I don\'t sell food.')
 			_state = 0

		elseif (msgcontains(msg, 'time')) then
			_selfSay('It\'s ' .. getTibiaTime() .. ' right now.')
 			_state = 0

		elseif (msgcontains(msg, 'offer') or msgcontains(msg, 'goods')) then
			_selfSay('I\'m sell crowbars, fishing rods, machetes, picks, backpacks, bags, ropes, scythes, shovels, torches and worms.')
			_state = 0

		elseif (_state == 1) then
			if (msgcontains(msg, 'yes')) then
				if (doPlayerRemoveMoney(cid, itemsgix[_index].sell * _count) == 1) then
 
					if itemsgix[_index].stackable == TRUE then
						local _stacks = math.floor(_count/100)
						_count = _count - _stacks*100
						if _stacks > 0 then
							for i = 1, _stacks do
								doPlayerAddItem(cid, itemsgix[_index].id, 100)
      							end
    						end
    						if _count > 0 then
							doPlayerAddItem(cid, itemsgix[_index].id, _count)
    						end

					else
						for i = 1, _count do
							doPlayerAddItem(cid, itemsgix[_index].id, itemsgix[_index].subtype)
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
				if (doPlayerRemoveItem(cid, itemsgix[_index].id, _count, itemsgix[_index].subtype) == 1) then
					doPlayerAddMoney(cid, itemsgix[_index].buy * _count)
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
			for n = 0, table.getn(itemsgix) do
				if (msgcontains(msg, itemsgix[n].name) or msgcontains(msg, itemsgix[n].name .. "s")) then
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
			selfSay('See you.', _delay)
			_state = 0
			getNext()
		end
	end
end