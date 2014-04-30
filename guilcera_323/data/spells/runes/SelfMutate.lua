attackType = ATTACK_NONE
animationEffect = NM_ANI_NONE
hitEffect = NM_ME_NONE
damageEffect = NM_ME_NONE
animationColor = GREEN
offensive = false
drawblood = false

SelfMutateObject = MagicDamageObject(attackType, animationEffect, hitEffect, damageEffect, animationColor, offensive, drawblood, 0, 0)

function onCast(cid, creaturePos, level, maglv, var)
centerpos = {x=creaturePos.x, y=creaturePos.y, z=creaturePos.z}

ret = doTargetMagic(cid, centerpos, SelfMutateObject:ordered())
if(ret) then
mutateto = 122
end
time = 15
changeOutfit(cid, time, mutateto)
return ret
end