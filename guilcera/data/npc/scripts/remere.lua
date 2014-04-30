_state = 0
_count = 0
_index = 0
_delay = 500
 
itemsremere = {}
itemsremere[0] = {name = 'dark helmet', id = 2490, subtype = -1, sell = -1, buy = 200, stackable = 0}
itemsremere[1] = {name = 'crown helmet', id = 2491, subtype = -1, sell = -1, buy = 3000, stackable = 0}
itemsremere[2] = {name = 'warrior helmet', id = 2475, subtype = -1, sell = -1, buy = 6000, stackable = 0}
itemsremere[3] = {name = 'crusader helmet', id = 2497, subtype = -1, sell = -1, buy = 6000, stackable = 0}
itemsremere[4] = {name = 'royal helmet', id = 2498, subtype = -1, sell = -1, buy = 55000, stackable = 0}
itemsremere[5] = {name = 'dark armor', id = 2489, subtype = -1, sell = -1, buy = 1000, stackable = 0}
itemsremere[6] = {name = 'blue robe', id = 2656, subtype = -1, sell = -1, buy = 30000, stackable = 0}
itemsremere[7] = {name = 'crown armor', id = 2487, subtype = -1, sell = -1, buy = 30000, stackable = 0}
itemsremere[8] = {name = 'knight armor', id = 2476, subtype = -1, sell = -1, buy = 15000, stackable = 0}
itemsremere[9] = {name = 'golden armor', id = 2466, subtype = -1, sell = -1, buy = 80000, stackable = 0}
itemsremere[10] = {name = 'plate legs', id = 2647, subtype = -1, sell = -1, buy = 2000, stackable = 0}
itemsremere[11] = {name = 'knight legs', id = 2477, subtype = -1, sell = -1, buy = 20000, stackable = 0}
itemsremere[12] = {name = 'crown legs', id = 2488, subtype = -1, sell = -1, buy = 35000, stackable = 0}
itemsremere[13] = {name = 'spike sword', id = 2383, subtype = -1, sell = -1, buy = 2000, stackable = 0}
itemsremere[14] = {name = 'serpent sword', id = 2409, subtype = -1, sell = -1, buy = 2000, stackable = 0}
itemsremere[15] = {name = 'fire sword', id = 2392, subtype = -1, sell = -1, buy = 15000, stackable = 0}
itemsremere[16] = {name = 'giant sword', id = 2393, subtype = -1, sell = -1, buy = 35000, stackable = 0}
itemsremere[17] = {name = 'knight axe', id = 2430, subtype = -1, sell = -1, buy = 8000, stackable = 0}
itemsremere[18] = {name = 'fire axe', id = 2432, subtype = -1, sell = -1, buy = 26000, stackable = 0}
itemsremere[19] = {name = 'clerical mace', id = 2423, subtype = -1, sell = -1, buy = 500, stackable = 0}
itemsremere[20] = {name = 'dragon hammer', id = 2434, subtype = -1, sell = -1, buy = 3000, stackable = 0}
itemsremere[21] = {name = 'skull staff', id = 2436, subtype = -1, sell = -1, buy = 25000, stackable = 0}
itemsremere[22] = {name = 'ancient shield', id = 2532, subtype = -1, sell = -1, buy = 1000, stackable = 0}
itemsremere[23] = {name = 'medusa shield', id = 2536, subtype = -1, sell = -1, buy = 22000, stackable = 0}
itemsremere[24] = {name = 'guardian shield', id = 2515, subtype = -1, sell = -1, buy = 5000, stackable = 0}
itemsremere[25] = {name = 'dragon shield', id = 2516, subtype = -1, sell = -1, buy = 7500, stackable = 0}
itemsremere[26] = {name = 'crown shield', id = 2519, subtype = -1, sell = -1, buy = 18000, stackable = 0}
itemsremere[27] = {name = 'tower shield', id = 2528, subtype = -1, sell = -1, buy = 16000, stackable = 0}
itemsremere[28] = {name = 'vampire shield', id = 2534, subtype = -1, sell = -1, buy = 45000, stackable = 0}
itemsremere[29] = {name = 'demon shield', id = 2520, subtype = -1, sell = -1, buy = 66666, stackable = 0}
itemsremere[30] = {name = 'beholder shield', id = 2518, subtype = -1, sell = -1, buy = 4000, stackable = 0}
itemsremere[31] = {name = 'wand of inferno', id = 2187, subtype = -1, sell = -1, buy = 7000, stackable = 0}
itemsremere[32] = {name = 'boots of haste', id = 2195, subtype = -1, sell = -1, buy = 20000, stackable = 0}
itemsremere[33] = {name = 'platinum amulet', id = 2171, subtype = -1, sell = -1, buy = 10000, stackable = 0}

local function onActionItem(action)
	if (action == 'buy' and itemsremere[_index].sell == -1) then
		selfSay('I\'m not selling it.', _delay * 2)
		_state = 0
		return
	elseif (action == 'sell' and itemsremere[_index].buy == -1) then
		selfSay('I\'m not interested.', _delay * 2)
		_state = 0
		return
	end

	DESCRIPTION = getItemDescriptions(itemsremere[_index].id)
	amount = ''
	NAME_TO_SAY = DESCRIPTION.name
	if itemsremere[_index].subtype == 7 then
		NAME_TO_SAY = 'mana fluid'
	end
	plural = DESCRIPTION.article
 
	if (_count > 1) then
		amount = '' .. tostring(_count)
		NAME_TO_SAY = DESCRIPTION.plural
		if itemsremere[_index].subtype == 7 then
		NAME_TO_SAY = 'mana fluids'
		end
		plural = ''
	end
 
	cost = itemsremere[_index].buy
	if (_count > 1) then
		cost = itemsremere[_index].buy * amount
	end

	if (action == 'buy') then
		cost = itemsremere[_index].sell
		if (_count > 1) then
			cost = itemsremere[_index].sell * amount
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
			_selfSay('I am Remere. I am selling everything the adventurer needs.')
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
				if (doPlayerRemoveMoney(cid, itemsremere[_index].sell * _count) == 1) then
 
					if itemsremere[_index].stackable == TRUE then
						local _stacks = math.floor(_count/100)
						_count = _count - _stacks*100
						if _stacks > 0 then
							for i = 1, _stacks do
								doPlayerAddItem(cid, itemsremere[_index].id, 100)
      							end
    						end
    						if _count > 0 then
							doPlayerAddItem(cid, itemsremere[_index].id, _count)
    						end

					else
						for i = 1, _count do
							doPlayerAddItem(cid, itemsremere[_index].id, itemsremere[_index].subtype)
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
				if (doPlayerRemoveItem(cid, itemsremere[_index].id, _count, itemsremere[_index].subtype) == 1) then
					doPlayerAddMoney(cid, itemsremere[_index].buy * _count)
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
			for n = 0, table.getn(itemsremere) do
				if (msgcontains(msg, itemsremere[n].name) or msgcontains(msg, itemsremere[n].name .. "s")) then
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