_state = 0
_count = 0
_index = 0
_delay = 500
 
local items = {}
items[0] = {name = 'parcel', id = 2595, subtype = -1, sell = 10, buy = -1, stackable = 0}
items[1] = {name = 'letter', id = 2597, subtype = -1, sell = 5, buy = -1, stackable = 0}
items[2] = {name = 'label', id = 2599, subtype = -1, sell = 1, buy = -1, stackable = 0}

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
 
function onCreatureAppear(cid)
end
 
function onCreatureDisappear(cid)
	if (getNpcFocus() == cid) then
		selfSay('It was a pleasure to help you.', _delay)
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
			selfSay('It was a pleasure to help you.', _delay)
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
			selfSay('Hello ' .. getCreatureName(cid) .. '. May I help you?', _delay)
		end
	
	elseif (getNpcFocus() ~= cid) then
		if ((msgcontains(msg, 'hi') or msgcontains(msg, 'hello')) and getDistanceToCreature(cid) <= 4) then
			selfSay('Please wait a minute, ' .. getCreatureName(cid) .. '. I am busy.', _delay)
			queuePlayer(cid)
		end
 
	else
		if (msgcontains(msg, 'bye')or msgcontains(msg, 'farewell')) then
			selfSay('It was a pleasure to help you.', _delay)
			_state = 0
			getNext()

		elseif (msgcontains(msg, 'hi') or msgcontains(msg, 'hello')) then
			_selfSay('I\'m already talking to you.')
 			_state = 0
 
		elseif (msgcontains(msg, 'name')) then
			_selfSay('My name is Iryont.')
 			_state = 0

		elseif (msgcontains(msg, 'job')) then
			_selfSay('I am working here at the post office. If you have questions about the Peonsville Mail System or the depots ask me.')
 			_state = 0
			
		elseif (msgcontains(msg, 'mail')) then
			_selfSay('The Mail System enables you to send and receive letters and parcels. You can buy them here if you want.')
 			_state = 0
			
		elseif (msgcontains(msg, 'depot')) then
			_selfSay('The depots are very easily to use. Just step in front of them and you will find your items in them. They are free for all citizens.')
 			_state = 0
						
		elseif (msgcontains(msg, 'time')) then
			_selfSay('Now it\'s ' .. getTibiaTime() .. '.')
 			_state = 0

		elseif (msgcontains(msg, 'offer') or msgcontains(msg, 'goods')) then
			_selfSay('I sell letters, labels and parcels.')
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
 
					selfSay('Here it is. Don\'t forget to write the name of the receiver in the first line and the address in the second one before you put the it in a mailbox.', _delay)
				else
					selfSay('Oh, you have not enough gold.', _delay)
				end
 
				updateNpcIdle()
			else
				selfSay('Ok.', _delay)
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
			selfSay('It was a pleasure to help you.', _delay)
			_state = 0
			getNext()
		end
	end
end