-- by Colandus @otland.net
-- http://otland.net/threads/desert-vocation-quest-script-7-92.27272/

local config = { 
    -- vocation requirement, positions and item configuration
    { 
        vocations = {1, 5}, 
        itemId = 2175, 
        playerPos = {x=105, y=137, z=13},
        newPos = {x=129, y=165, z=8},
        itemPos = {x=106, y=137, z=13} 
    }, 

    { 
        vocations = {2, 6}, 
        itemId = 2674, 
        playerPos = {x=97, y=137, z=13},
        newPos = {x=127, y=166, z=8}, 
        itemPos = {x=96, y=137, z=13} 
    }, 

    { 
        vocations = {3, 7}, 
        itemId = 2455, 
        playerPos = {x=101, y=141, z=13},
        newPos = {x=129, y=166, z=8}, 
        itemPos = {x=101, y=142, z=13} 
    }, 

    { 
        vocations = {4, 8}, 
        itemId = 2376, 
        playerPos = {x=101, y=133, z=13},
        newPos = {x=127, y=165, z=8}, 
        itemPos = {x=101, y=132, z=13} 
    } 
} 

function onUse(cid)
    local players = {}
    local items = {}
    for _, v in ipairs(config) do
 
        v.playerPos.stackpos = 253
        local player = getThingfromPos(v.playerPos).uid
 
        if isPlayer(player) == FALSE then
            return doPlayerSendCancel(cid, "There are not enough players.")
        elseif isInArray(v.vocations, getPlayerVocation(player)) == FALSE then
            players.vocation = 1
        else
            v.itemPos.stackpos = 1
            local item = getThingfromPos(v.itemPos)
 
            if item.itemid ~= v.itemId then
                players.item = 1
            else
                table.insert(players, player)
                table.insert(items, item.uid)
            end
        end
    end

    if players.vocation then
        doPlayerSendCancel(cid, "All players must stand on the correct tiles.")
    elseif players.item then
        doPlayerSendCancel(cid, "All items must be on the correct positions.")
    else
        for k, player in ipairs(players) do
            doSendMagicEffect(getCreaturePosition(player), CONST_ME_POFF)
            doTeleportThing(player, config[k].newPos)
            doSendMagicEffect(getCreaturePosition(player), CONST_ME_TELEPORT)
        end
        
        for _, item in ipairs(items) do
            doRemoveItem(item)
        end
    end
 
    return TRUE
end