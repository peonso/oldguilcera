function onSay(cid, words, param, channel)
	local srt = ""
	local secs = ""
	secs = getPlayerOnlineTime(cid)
	-- converting secs --
	local hours = math.ceil(secs / 3600) - 1
	local minutes = math.ceil((secs - (3600 * hours)) / 60)
	if (minutes == 60) then
		minutes = 0
		hours = hours + 1
	end
	local days = math.ceil(hours / 24) - 1
	hours = math.ceil(hours - (24 * days))
	if (hours == 24) then
		hours = 0
		days = days + 1
	end
	-- end of conversion --
	str = "Total time played: ".. days .." days, ".. hours .." hours, ".. minutes .." minutes, since " .. os.date("%d %b %Y", getCreateDate(cid)) .. "."
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_LBLUE, str)
	return true
end

function getPlayerOnlineTime(cid)
	local query = db.getResult("SELECT `onlinetimeall` FROM `players` WHERE `id` = " .. getPlayerGUID(cid) .. ";")
	if query:getID() ~= -1 then
	return query:getDataInt("onlinetimeall")
	end
	query:free()
	return LUA_ERROR
end

function getCreateDate(cid)
	local query = db.getResult("SELECT `create_date` FROM `players` WHERE `id` = " .. getPlayerGUID(cid) .. ";")
	if query:getID() ~= -1 then
	return query:getDataInt("create_date")
	end
	query:free()
	return LUA_ERROR
end