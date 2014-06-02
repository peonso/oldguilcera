local shutdownAtServerSave = TRUE
local cleanMapAtServerSave = FALSE

local function serverSave()
	if shutdownAtServerSave then
		setGameState(GAME_STATE_SHUTDOWN)
	else
		setGameState(GAME_STATE_CLOSED)

		if cleanMapAtServerSave then
			cleanMap()
		end

		setGameState(GAME_STATE_NORMAL)
	end
end

local function secondServerSaveWarning()
	broadcastMessage("Server is saving game in one minute. Please logout.")
	addEvent(serverSave, 60000)
end

local function firstServerSaveWarning()
	broadcastMessage("Server is saving game in 3 minutes. Please logout.")
	addEvent(secondServerSaveWarning, 120000)
end

function onTime(interval)
	broadcastMessage("Server is saving game in 5 minutes. Please logout.")
	setGameState(GAME_STATE_STARTUP)
	addEvent(firstServerSaveWarning, 120000)
	return not shutdownAtServerSave
end