-- example of fishing script--
   
   function onUse(cid, item, frompos, item2, topos)
         -- itemid means that is a creature
        if item2.itemid == 4664 then
                 skill_level = getPlayerSkill(cid,6)
                 random_number = math.random(1,(100+skill_level/10))
                 doSendMagicEffect(topos,1)
                 if random_number<=skill_level then
                 doPlayerAddItem(cid,2667,1)
          end
             doPlayerAddSkillTry(cid,6,1)
   
        elseif item2.itemid == 4665 then
                 skill_level = getPlayerSkill(cid,6)
                 random_number = math.random(1,(100+skill_level/10))
                 doSendMagicEffect(topos,1)
                 if random_number<=skill_level then
                 doPlayerAddItem(cid,2667,1)
          end
             doPlayerAddSkillTry(cid,6,1)
   
        elseif item2.itemid == 4666 then
                 skill_level = getPlayerSkill(cid,6)
                 random_number = math.random(1,(100+skill_level/10))
                 doSendMagicEffect(topos,1)
                 if random_number<=skill_level then
                 doPlayerAddItem(cid,2667,1)
          end
             doPlayerAddSkillTry(cid,6,1)
   
        elseif item2.itemid == 4667 then
                 skill_level = getPlayerSkill(cid,6)
                 random_number = math.random(1,(100+skill_level/10))
                 doSendMagicEffect(topos,1)
                 if random_number<=skill_level then
                 doPlayerAddItem(cid,2667,1)
          end
             doPlayerAddSkillTry(cid,6,1)
   
        elseif item2.itemid == 4668 then
                 skill_level = getPlayerSkill(cid,6)
                 random_number = math.random(1,(100+skill_level/10))
                 doSendMagicEffect(topos,1)
                 if random_number<=skill_level then
                 doPlayerAddItem(cid,2667,1)
          end
             doPlayerAddSkillTry(cid,6,1)
   
        elseif item2.itemid == 4669 then
                 skill_level = getPlayerSkill(cid,6)
                 random_number = math.random(1,(100+skill_level/10))
                 doSendMagicEffect(topos,1)
                 if random_number<=skill_level then
                 doPlayerAddItem(cid,2667,1)
          end
             doPlayerAddSkillTry(cid,6,1)
   
        elseif item2.itemid == 4670 then
                 skill_level = getPlayerSkill(cid,6)
                 random_number = math.random(1,(100+skill_level/10))
                 doSendMagicEffect(topos,1)
                 if random_number<=skill_level then
                 doPlayerAddItem(cid,2667,1)
          end
             doPlayerAddSkillTry(cid,6,1)
   
        elseif item2.itemid == 4671 then
                 skill_level = getPlayerSkill(cid,6)
                 random_number = math.random(1,(100+skill_level/10))
                 doSendMagicEffect(topos,1)
                 if random_number<=skill_level then
                 doPlayerAddItem(cid,2667,1)
          end
             doPlayerAddSkillTry(cid,6,1)
   
        elseif item2.itemid == 4672 then
                 skill_level = getPlayerSkill(cid,6)
                 random_number = math.random(1,(100+skill_level/10))
                 doSendMagicEffect(topos,1)
                 if random_number<=skill_level then
                 doPlayerAddItem(cid,2667,1)
          end
             doPlayerAddSkillTry(cid,6,1)
 
        elseif item2.itemid == 629 then
                 skill_level = getPlayerSkill(cid,6)
                 random_number = math.random(1,(100+skill_level/10))
                 doSendMagicEffect(topos,1)
                 if random_number<=skill_level then
                 doPlayerAddItem(cid,2667,1)
          end
             doPlayerAddSkillTry(cid,6,1)
      else 
    return 0
   end
   return 1
   end