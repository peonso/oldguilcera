--madebyjunkfoodpeonsoadptedtopeonsovilleotx
function onUse(cid, item, frompos, item2, topos)

doorpos = {x=frompos.x, y=frompos.y, z=frompos.z}
playerpos = getPlayerPosition(cid)
playerlevel = getPlayerLevel(cid)

--herocavewarlock
if item.itemid == 1227 and doorpos.x == 413 and doorpos.y == 69 and doorpos.z == 12 then
if playerlevel > 54 then
doTeleportThing(cid,doorpos)
elseif playerlevel < 55 then
doPlayerSendTextMessage(cid,22,"You need to be level 55 or higher.")
end

--demonquests
elseif item.itemid == 1229 and doorpos.x == 407 and doorpos.y == 77 and doorpos.z == 12 then
if playerlevel > 99 then
doTeleportThing(cid,doorpos)
elseif playerlevel < 100 then
doPlayerSendTextMessage(cid,22,"You need to be level 100 or higher.")
end

--anihilator
elseif item.itemid == 1227 and doorpos.x == 417 and doorpos.y == 93 and doorpos.z == 11 then
if playerlevel > 99 then
doTeleportThing(cid,doorpos)
elseif playerlevel < 100 then
doPlayerSendTextMessage(cid,22,"You need to be level 100 or higher.")
end

--orcquest
elseif item.itemid == 1229 and doorpos.x == 350 and doorpos.y == 56 and doorpos.z == 9 then
if playerlevel > 39 then
doTeleportThing(cid,doorpos)
elseif playerlevel < 40 then
doPlayerSendTextMessage(cid,22,"You need to be level 40 or higher.")
end

--behequest
elseif item.itemid == 1229 and doorpos.x == 356 and doorpos.y == 161 and doorpos.z == 15 then
if playerlevel > 59 then
doTeleportThing(cid,doorpos)
elseif playerlevel < 60 then
doPlayerSendTextMessage(cid,22,"You need to be level 60 or higher.")
end

--shadowtemple
elseif item.itemid == 1229 and doorpos.x == 265 and doorpos.y == 118 and doorpos.z == 8 then
if playerlevel > 29 then
doTeleportThing(cid,doorpos)
elseif playerlevel < 30 then
doPlayerSendTextMessage(cid,22,"You need to be level 30 or higher.")
end

--banshee quest
elseif item.itemid == 1229 and doorpos.x == 265 and doorpos.y == 75 and doorpos.z == 13 then
if playerlevel > 59 then
doTeleportThing(cid,doorpos)
elseif playerlevel < 60 then
doPlayerSendTextMessage(cid,22,"You need to be level 60 or higher.")
end

--dslegs
elseif item.itemid == 1227 and doorpos.x == 363 and doorpos.y == 192 and doorpos.z == 9 then
if playerlevel > 94 then
doTeleportThing(cid,doorpos)
elseif playerlevel < 95 then
doPlayerSendTextMessage(cid,22,"You need to be level 95 or higher.")
end

--DOMS
elseif item.itemid == 1227 and doorpos.x == 133 and doorpos.y == 250 and doorpos.z == 8 then
if playerlevel > 49 then
doTeleportThing(cid,doorpos)
elseif playerlevel < 50 then
doPlayerSendTextMessage(cid,22,"You need to be level 50 or higher.")
end

--goldenhelmet
elseif item.itemid == 1229 and doorpos.x == 128 and doorpos.y == 183 and doorpos.z == 14 then
if playerlevel > 114 then
doTeleportThing(cid,doorpos)
elseif playerlevel < 115 then
doPlayerSendTextMessage(cid,22,"You need to be level 115 or higher.")
end

--crusader
elseif item.itemid == 1229 and doorpos.x == 96 and doorpos.y == 207 and doorpos.z == 9 then
if playerlevel > 34 then
doTeleportThing(cid,doorpos)
elseif playerlevel < 35 then
doPlayerSendTextMessage(cid,22,"You need to be level 35 or higher.")
end

--crownarmorshield
elseif item.itemid == 1229 and doorpos.x == 107 and doorpos.y == 228 and doorpos.z == 5 then
if playerlevel > 49 then
doTeleportThing(cid,doorpos)
elseif playerlevel < 50 then
doPlayerSendTextMessage(cid,22,"You need to be level 50 or higher.")
end

--silvermace
elseif item.itemid == 1229 and doorpos.x == 126 and doorpos.y == 228 and doorpos.z == 5 then
if playerlevel > 69 then
doTeleportThing(cid,doorpos)
elseif playerlevel < 70 then
doPlayerSendTextMessage(cid,22,"You need to be level 70 or higher.")
end

--insanegame
elseif item.itemid == 1245 and doorpos.x == 158 and doorpos.y == 134 and doorpos.z == 10 then
if playerlevel > 79 then
doTeleportThing(cid,doorpos)
elseif playerlevel < 80 then
doPlayerSendTextMessage(cid,22,"You need to be level 80 or higher.")
end

--golden boots
elseif item.itemid == 1247 and doorpos.x == 189 and doorpos.y == 57 and doorpos.z == 6 then
if playerlevel > 124 then
doTeleportThing(cid,doorpos)
elseif playerlevel < 125 then
doPlayerSendTextMessage(cid,22,"You need to be level 125 or higher.")
end

--golden boots2
elseif item.itemid == 1247 and doorpos.x == 190 and doorpos.y == 57 and doorpos.z == 6 then
if playerlevel > 124 then
doTeleportThing(cid,doorpos)
elseif playerlevel < 125 then
doPlayerSendTextMessage(cid,22,"You need to be level 125 or higher.")
end

--dwarven quest
elseif item.itemid == 1229 and doorpos.x == 251 and doorpos.y == 55 and doorpos.z == 10 then
if playerlevel > 39 then
doTeleportThing(cid,doorpos)
elseif playerlevel < 40 then
doPlayerSendTextMessage(cid,22,"You need to be level 40 or higher.")
end

--vocationquest
elseif item.itemid == 1227 and doorpos.x == 117 and doorpos.y == 154 and doorpos.z == 12 then
if playerlevel > 19 then
doTeleportThing(cid,doorpos)
elseif playerlevel < 20 then
doPlayerSendTextMessage(cid,22,"You need to be level 20 or higher.")
end

--fire axe quest
elseif item.itemid == 1227 and doorpos.x == 80 and doorpos.y == 142 and doorpos.z == 11 then
if playerlevel > 59 then
doTeleportThing(cid,doorpos)
elseif playerlevel < 60 then
doPlayerSendTextMessage(cid,22,"You need to be level 60 or higher.")
end

--behe quest II
elseif item.itemid == 1227 and doorpos.x == 605 and doorpos.y == 389 and doorpos.z == 8 then
if playerlevel > 89 then
doTeleportThing(cid,doorpos)
elseif playerlevel < 90 then
doPlayerSendTextMessage(cid,22,"You need to be level 90 or higher.")
end

--primates quest
elseif item.itemid == 3540 and doorpos.x == 555 and doorpos.y == 457 and doorpos.z == 10 then
if playerlevel > 44 then
doTeleportThing(cid,doorpos)
elseif playerlevel < 45 then
doPlayerSendTextMessage(cid,22,"You need to be level 45 or higher.")
end

elseif item.itemid == 1245 and doorpos.x == 587 and doorpos.y == 93 and doorpos.z == 10 then
if playerlevel > 39 then
doTeleportThing(cid,doorpos)
elseif playerlevel < 40 then
doPlayerSendTextMessage(cid,22,"You need to be lvl 40 or higher.")
end

-- hota quest
elseif item.itemid == 1247 and doorpos.x == 531 and doorpos.y == 110 and doorpos.z == 11 then
if playerlevel > 79 then
doTeleportThing(cid,doorpos)
elseif playerlevel < 80 then
doPlayerSendTextMessage(cid,22,"You need to be level 80 or higher.")
end

-- hero area
elseif item.itemid == 1227 and doorpos.x == 698 and doorpos.y == 110 and doorpos.z == 6 then
if playerlevel > 34 then
doTeleportThing(cid,doorpos)
elseif playerlevel < 35 then
doPlayerSendTextMessage(cid,22,"You need to be level 35 or higher.")
end

-- banshee mansion
elseif item.itemid == 1229 and doorpos.x == 588 and doorpos.y == 33 and doorpos.z == 9 then
if playerlevel > 84 then
doTeleportThing(cid,doorpos)
elseif playerlevel < 85 then
doPlayerSendTextMessage(cid,22,"You need to be level 85 or higher.")
end

elseif item.itemid == 1229 and doorpos.x == 589 and doorpos.y == 33 and doorpos.z == 9 then
if playerlevel > 84 then
doTeleportThing(cid,doorpos)
elseif playerlevel < 85 then
doPlayerSendTextMessage(cid,22,"You need to be level 85 or higher.")
end

-- warlocks
elseif item.itemid == 1227 and doorpos.x == 681 and doorpos.y == 184 and doorpos.z == 12 then
if playerlevel > 49 then
doTeleportThing(cid,doorpos)
elseif playerlevel < 50 then
doPlayerSendTextMessage(cid,22,"You need to be level 50 or higher.")
end

-- warlocks2
elseif item.itemid == 1229 and doorpos.x == 721 and doorpos.y == 97 and doorpos.z == 13 then
if playerlevel > 98 then
doTeleportThing(cid,doorpos)
elseif playerlevel < 99 then
doPlayerSendTextMessage(cid,22,"You need to be level 99 or higher.")
end

-- great shield
elseif item.itemid == 1227 and doorpos.x == 644 and doorpos.y == 239 and doorpos.z == 10 then
if playerlevel > 109 then
doTeleportThing(cid,doorpos)
elseif playerlevel < 110 then
doPlayerSendTextMessage(cid,22,"You need to be level 110 or higher.")
end

-- morgaroth
elseif item.itemid == 1227 and doorpos.x == 246 and doorpos.y == 502 and doorpos.z == 12 then
if playerlevel > 109 then
doTeleportThing(cid,doorpos)
elseif playerlevel < 110 then
doPlayerSendTextMessage(cid,22,"You need to be level 110 or higher.")
end



end
return 1
end