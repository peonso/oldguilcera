STAGES = {
	{level = 59, rate = 10},
	{level = 89, rate = 8},
	{level = 119, rate = 6},
}

DEFAULT_RATE = 0

function checkStages(cid)
	local level = getPlayerLevel(cid)
	
	for i = 1, # STAGES do
		if level <= STAGES[i].level then
			doPlayerSetRate(cid, LEVEL_EXPERIENCE, STAGES[i].rate)
			return
		end
	end
	
	doPlayerSetRate(cid, LEVEL_EXPERIENCE, DEFAULT_RATE)
end

function onLogin(cid)
	registerCreatureEvent(cid, "stagesAdvance")
	
	checkStages(cid)
	return 1
end

function onAdvance(cid, type, oldlevel, newlevel)
	if type == LEVEL_EXPERIENCE then
		checkStages(cid)
	end
	
	return 1
end