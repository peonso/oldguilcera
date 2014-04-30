_state = 0
_count = 0
_index = 0
_delay = 500
 
itemscornehlia = {}
itemscornehlia[0] = {name = 'chain armor', id = 2464, subtype = -1, sell = 200, buy = -1, stackable = 0}
itemscornehlia[1] = {name = 'brass armor', id = 2465, subtype = -1, sell = 450, buy = 150, stackable = 0}
itemscornehlia[2] = {name = 'plate armor', id = 2463, subtype = -1, sell = -1, buy = 400, stackable = 0}
itemscornehlia[3] = {name = 'brass helmet', id = 2460, subtype = -1, sell = 120, buy = 30, stackable = 0}
itemscornehlia[4] = {name = 'scale armor', id = 2483, subtype = -1, sell = -1, buy = 100, stackable = 0}
itemscornehlia[5] = {name = 'viking helmet', id = 2473, subtype = -1, sell = 265, buy = 66, stackable = 0}
itemscornehlia[6] = {name = 'steel helmet', id = 2457, subtype = -1, sell = -1, buy = 190, stackable = 0}
itemscornehlia[7] = {name = 'plate shield', id = 2510, subtype = -1, sell = 125, buy = 45, stackable = 0}
itemscornehlia[8] = {name = 'battle shield', id = 2513, subtype = -1, sell = -1, buy = 95, stackable = 0}
itemscornehlia[9] = {name = 'steel shield', id = 2509, subtype = -1, sell = 240, buy = 80, stackable = 0}
itemscornehlia[10] = {name = 'brass legs', id = 2478, subtype = -1, sell = 195, buy = 49, stackable = 0}
itemscornehlia[11] = {name = 'two handed sword', id = 2377, subtype = -1, sell = 950, buy = 450, stackable = 0}
itemscornehlia[12] = {name = 'battle axe', id = 2378, subtype = -1, sell = -1, buy = 80, stackable = 0}
itemscornehlia[13] = {name = 'halberd', id = 2381, subtype = -1, sell = -1, buy = 400, stackable = 0}
itemscornehlia[14] = {name = 'morning star', id = 2394, subtype = -1, sell = 430, buy = -1, stackable = 0}
itemscornehlia[15] = {name = 'sword', id = 2376, subtype = -1, sell = 85, buy = 25, stackable = 0}
itemscornehlia[16] = {name = 'mace', id = 2398, subtype = -1, sell = 90, buy = 30, stackable = 0}
itemscornehlia[17] = {name = 'battle hammer', id = 2417, subtype = -1, sell = 350, buy = 120, stackable = 0}
itemscornehlia[18] = {name = 'double axe', id = 2387, subtype = -1, sell = -1, buy = 260, stackable = 0}
itemscornehlia[19] = {name = 'war hammer', id = 2391, subtype = -1, sell = -1, buy = 470, stackable = 0}
itemscornehlia[19] = {name = 'dwarven shield', id = 2525, subtype = -1, sell = -1, buy = 100, stackable = 0}

local function onActionItem(action)
	if (action == 'buy' and itemscornehlia[_index].sell == -1) then
		selfSay('I\'m not selling it.', _delay * 2)
		_state = 0
		return
	elseif (action == 'sell' and itemscornehlia[_index].buy == -1) then
		selfSay('I\'m not interested.', _delay * 2)
		_state = 0
		return
	end

	DESCRIPTION = getItemDescriptions(itemscornehlia[_index].id)
	amount = ''
	NAME_TO_SAY = DESCRIPTION.name
	if itemscornehlia[_index].subtype == 7 then
		NAME_TO_SAY = 'mana fluid'
	end
	plural = DESCRIPTION.article
 
	if (_count > 1) then
		amount = '' .. tostring(_count)
		NAME_TO_SAY = DESCRIPTION.plural
		if itemscornehlia[_index].subtype == 7 then
		NAME_TO_SAY = 'mana fluids'
		end
		plural = ''
	end
 
	cost = itemscornehlia[_index].buy
	if (_count > 1) then
		cost = itemscornehlia[_index].buy * amount
	end

	if (action == 'buy') then
		cost = itemscornehlia[_index].sell
		if (_count > 1) then
			cost = itemscornehlia[_index].sell * amount
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
			_selfSay('I am Cornehlia. I am selling everything the adventurer needs.')
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
				if (doPlayerRemoveMoney(cid, itemscornehlia[_index].sell * _count) == 1) then
 
					if itemscornehlia[_index].stackable == TRUE then
						local _stacks = math.floor(_count/100)
						_count = _count - _stacks*100
						if _stacks > 0 then
							for i = 1, _stacks do
								doPlayerAddItem(cid, itemscornehlia[_index].id, 100)
      							end
    						end
    						if _count > 0 then
							doPlayerAddItem(cid, itemscornehlia[_index].id, _count)
    						end

					else
						for i = 1, _count do
							doPlayerAddItem(cid, itemscornehlia[_index].id, itemscornehlia[_index].subtype)
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
				if (doPlayerRemoveItem(cid, itemscornehlia[_index].id, _count, itemscornehlia[_index].subtype) == 1) then
					doPlayerAddMoney(cid, itemscornehlia[_index].buy * _count)
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
			for n = 0, table.getn(itemscornehlia) do
				if (msgcontains(msg, itemscornehlia[n].name) or msgcontains(msg, itemscornehlia[n].name .. "s")) then
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