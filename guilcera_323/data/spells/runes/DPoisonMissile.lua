--Dworc Poison Atack by Peonso

attackType = ATTACK_POISON
animationEffect = 14

hitEffect = NM_ME_POISEN
damageEffect = NM_ME_POISEN_RINGS
animationColor = GREEN
offensive = true
drawblood = true

DPoisonMissileObject = MagicDamageObject(attackType, animationEffect, hitEffect, damageEffect, animationColor, offensive, drawblood, 1, 1)
DPoisonMissileObject2 = MagicDamageObject(attackType, NM_ANI_NONE, NM_ME_NONE, damageEffect, animationColor, offensive, drawblood, 2, 2)

function onCast(cid, creaturePos, level, maglv, var)
centerpos = {x=creaturePos.x, y=creaturePos.y, z=creaturePos.z}

return doTargetExMagic(cid, centerpos, DPoisonMissileObject:ordered(),
	2000, 10, DPoisonMissileObject2:ordered())
end