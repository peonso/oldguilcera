-- Gibaltar by Peonso

ox = 270
oy = 230
oz = 7
max = 7
target = 0 
following = false 
attacking = false 
focus = 0
itemid = 0 
count = 0
payback = 0
talkcount = 0
talk_start = 0

function onThingMove(creature, thing, oldpos, oldstackpos) 
end 

function onCreatureAppear(creature) 
end 

function onCreatureDisappear(cid, pos)
	if focus == cid then
	selfSay('Good bye then.')
	focus = 0
	talk_start = 0
	end
end

function onCreatureTurn(creature) 
end 

function onCreatureSay(cid, type, msg)
	msg = string.lower(msg) 
	dist = getDistanceToCreature(cid)
	if dist >= 8 then
	return
end

talk_start = os.clock() 

if string.find(msg, 'hi') and string.len(msg) == 2 then
	if focus == cid then
	selfSay('I am already talking to you <^.->...')
	else if focus > 0 then
        selfSay('Stay calm...')
        end
	end
	if(focus == 0) then
	selfSay('Aew, ' .. creatureGetName(cid) .. '! I am a druid, I can sell some spells for you if you want. And I am also selling hams!')
	focus = cid
	end
	talk_start = os.clock()
end

if string.find(msg, '(%a*)offer(%a*)') and cid == focus then
	selfSay('I can sell some spells for you if you are a druid. And I am also selling hams!')
end

if string.find(msg, '(%a*)spell(%a*)') and cid == focus then
	selfSay('First Light and Light Healing are for free! Make runes spells... Light Magic Missile, Poison Field, Heavy Magic Missile, Intense Healing Rune, Fire Field, Energy Field, Poison Bomb, Great Fireball, Firebomb, Ultimate Healing Rune and Explosion. The others... Create Food, Great Light, Force Strike, Intense Healing, Energy Strike, Flame Strike, Magic Shield, Heal Friend, Ultimate healing, Strong Haste, Creature Ilusion, Mass Healing and Poison Storm.')
end

if string.find(msg, '(%a*)ham(%a*)') and cid == focus then
	selfSay('Do you want a ham for 4 gold pieces?')
	talk_start = os.clock()
	itemid = 2671
	count = 1
	cost = 4
	talkcount = 1
	return
end

if string.find(msg, '(%a*)10 ham(%a*)') and cid == focus then
	selfSay('Do you want a ham for 40 gold pieces?')
	talk_start = os.clock()
	itemid = 2671
	count = 10
	cost = 4
	talkcount = 10
	return
end

if string.find(msg, '(%a*)20 ham(%a*)') and cid == focus then
	selfSay('Do you want a ham for 400 gold pieces?')
	talk_start = os.clock()
	itemid = 2671
	count = 100
	cost = 4
	talkcount = 20
	return
end

if string.find(msg, 'light healing') and string.len(msg) == 13 and cid == focus then
	selfSay('Do you want to learn light healing for free?')
	talk_start = os.clock()
	talkcount = 3
	magic = 1
	return
end

if string.find(msg, 'light magic missile') and string.len(msg) == 19 and cid == focus then
	selfSay('Do you want to learn light magic missile for 200 gold pieces?')
	talk_start = os.clock()
	talkcount = 3
	magic = 2
	return
end

if string.find(msg, 'poison field') and string.len(msg) == 12 and cid == focus then
	selfSay('Do you want to learn poison field for 300 gold pieces?')
	talk_start = os.clock()
	talkcount = 3
	magic = 3
	return
end

if string.find(msg, 'heavy magic missile') and string.len(msg) == 19 and cid == focus then
	selfSay('Do you want to learn heavy magic missile for 600 gold pieces?')
	talk_start = os.clock()
	talkcount = 3
	magic = 4
	return
end

if string.find(msg, 'intense healing rune') and string.len(msg) == 20 and cid == focus then
	selfSay('Do you want to learn intense healing rune for 500 gold pieces?')
	talk_start = os.clock()
	talkcount = 3
	magic = 5
	return
end

if string.find(msg, 'fire field') and string.len(msg) == 10 and cid == focus then
	selfSay('Do you want to learn fire field for 500 gold pieces?')
	talk_start = os.clock()
	talkcount = 3
	magic = 6
	return
end

if string.find(msg, 'energy field') and string.len(msg) == 12 and cid == focus then
	selfSay('Do you want to learn energy field for 700 gold pieces?')
	talk_start = os.clock()
	talkcount = 3
	magic = 7
	return
end

if string.find(msg, 'poison bomb') and string.len(msg) == 11 and cid == focus then
	selfSay('Do you want to learn poisonbomb for 1000 gold pieces?')
	talk_start = os.clock()
	talkcount = 3
	magic = 8
	return
end

if string.find(msg, 'great fireball') and string.len(msg) == 14 and cid == focus then
	selfSay('Do you want to learn great fireball for 1200 gold pieces?')
	talk_start = os.clock()
	talkcount = 3
	magic = 9
	return
end

if string.find(msg, 'fire bomb') and string.len(msg) == 9 and cid == focus then
	selfSay('Do you want to learn firebomb for 1500 gold pieces?')
	talk_start = os.clock()
	talkcount = 3
	magic = 10
	return
end

if string.find(msg, 'ultimate healing rune') and string.len(msg) == 21 and cid == focus then
	selfSay('Do you want to learn ultimate healing rune for 1500 gold pieces?')
	talk_start = os.clock()
	talkcount = 3
	magic = 11
	return
end

if string.find(msg, 'explosion') and string.len(msg) == 9 and cid == focus then
	selfSay('Do you want to learn explosion for 1800 gold pieces?')
	talk_start = os.clock()
	talkcount = 3
	magic = 12
	return
end

if string.find(msg, 'force strike') and string.len(msg) == 12 and cid == focus then
	selfSay('Do you want to learn force strike for 600?')
	talk_start = os.clock()
	talkcount = 3
	magic = 13
	return
end

if string.find(msg, 'energy strike') and string.len(msg) == 11 and cid == focus then
	selfSay('Do you want to learn energy strike for 800 gold pieces?')
	talk_start = os.clock()
	talkcount = 3
	magic = 14
	return
end

if string.find(msg, 'flame strike') and string.len(msg) == 12 and cid == focus then
	selfSay('Do you want to learn flame strike for 800 gold pieces?')
	talk_start = os.clock()
	talkcount = 3
	magic = 15
	return
end

if string.find(msg, 'magic shield') and string.len(msg) == 12 and cid == focus then
	selfSay('Do you want to learn magic shield for 450 gold pieces?')
	talk_start = os.clock()
	talkcount = 3
	magic = 16
	return
end

if string.find(msg, 'heal friend') and string.len(msg) == 11 and cid == focus then
	selfSay('Do you want to learn heal friend for 800 gold pieces?')
	talk_start = os.clock()
	talkcount = 3
	magic = 17
	return
end

if string.find(msg, 'ultimate healing') and string.len(msg) == 16 and cid == focus then
	selfSay('Do you want to learn ultimate healing for 1000 gold pieces?')
	talk_start = os.clock()
	talkcount = 3
	magic = 18
	return
end

if string.find(msg, 'strong haste') and string.len(msg) == 12 and cid == focus then
	selfSay('Do you want to learn strong haste for 1300 gold pieces?')
	talk_start = os.clock()
	talkcount = 3
	magic = 19
	return
end

if string.find(msg, 'mass healing') and string.len(msg) == 12 and cid == focus then
	selfSay('Do you want to learn mass healing for 2200 gold pieces?')
	talk_start = os.clock()
	talkcount = 3
	magic = 20
	return
end

if string.find(msg, 'poison storm') and string.len(msg) == 12 and cid == focus then
	selfSay('Do you want to learn poison storm for 3400 gold pieces?')
	talk_start = os.clock()
	talkcount = 3
	magic = 21
	return
end

if string.find(msg, 'create food') and string.len(msg) == 11 and cid == focus then
	selfSay('Do you want to learn light healing for 100 gold pieces?')
	talk_start = os.clock()
	talkcount = 3
	magic = 22
	return
end

if string.find(msg, 'intense healing') and string.len(msg) == 15 and cid == focus then
	selfSay('Do you want to learn intense healing for 350 gold pieces?')
	talk_start = os.clock()
	talkcount = 3
	magic = 23
	return
end

if string.find(msg, 'creature ilusion') and string.len(msg) == 16 and cid == focus then
	selfSay('Do you want to learn creature ilusion for 100 gold pieces?')
	talk_start = os.clock()
	talkcount = 3
	magic = 24
	return
end

if string.find(msg, 'great light') and string.len(msg) == 11 and cid == focus then
	selfSay('Do you want to learn light for 600 gold coins?')
	talk_start = os.clock()
	talkcount = 3
	magic = 25
	return
end

if string.find(msg, 'light') and string.len(msg) == 5 and cid == focus then
	selfSay('Do you want to learn light for free?')
	talk_start = os.clock()
	talkcount = 3
	magic = 26
	return
end

if string.find(msg, 'paralyze') and string.len(msg) == 5 and cid == focus then
	selfSay('Do you want to learn paralyze rune 2000 gold coins?')
	talk_start = os.clock()
	talkcount = 3
	magic = 27
	return
end

if string.find(msg, '(%a*)yes(%a*)') and cid == focus and talkcount == 3 then       
	talkcount = 0
	talk_start = os.clock()
if magic == 1 and getPlayerVocation(cid) == 2 then
	learnSpell(cid,"exura",0)
end
if magic == 2 and getPlayerVocation(cid) == 2 then
	learnSpell(cid,"adori",200)
end
if magic == 3 and getPlayerVocation(cid) == 2 then
	learnSpell(cid,"adevo grav pox",300)
end
if magic == 4 and getPlayerVocation(cid) == 2 then
	learnSpell(cid,"adori gran",600)
end
if magic == 5 and getPlayerVocation(cid) == 2 then
	learnSpell(cid,"adura gran",500)
end
if magic == 6 and getPlayerVocation(cid) == 2 then
	learnSpell(cid,"adevo grav flam",500)
end
if magic == 7 and getPlayerVocation(cid) == 2 then
	learnSpell(cid,"adevo grav vis",700)
end
if magic == 8 and getPlayerVocation(cid) == 2 then
	learnSpell(cid,"adevo mas pox",1000)
end
if magic == 9 and getPlayerVocation(cid) == 2 then
	learnSpell(cid,"adori gran flam",1200)
end
if magic == 10 and getPlayerVocation(cid) == 2 then
	learnSpell(cid,"adevo mas flam",1500)
end
if magic == 11 and getPlayerVocation(cid) == 2 then
	learnSpell(cid,"adura vita",1500)
end
if magic == 12 and getPlayerVocation(cid) == 2 then
	learnSpell(cid,"adevo mas hur",1800)
end
if magic == 13 and getPlayerVocation(cid) == 2 then
	learnSpell(cid,"exori mort",600)
end
if magic == 14 and getPlayerVocation(cid) == 2 then
	learnSpell(cid,"exori vis",800)
end
if magic == 15 and getPlayerVocation(cid) == 2 then
	learnSpell(cid,"exori flam",800)
end
if magic == 16 and getPlayerVocation(cid) == 2 then
	learnSpell(cid,"utamo vita",450)
end
if magic == 17 and getPlayerVocation(cid) == 2 then
	learnSpell(cid,"exura sio",800)
end
if magic == 18 and getPlayerVocation(cid) == 2 then
	learnSpell(cid,"exura vita",1000)
end
if magic == 19 and getPlayerVocation(cid) == 2 then
	learnSpell(cid,"utani gran hur",1300)
end
if magic == 20 and getPlayerVocation(cid) == 2 then
	learnSpell(cid,"exura gran mas res",2200)
end
if magic == 21 and getPlayerVocation(cid) == 2 then
	learnSpell(cid,"exevo gran mas pox",3400)
end
if magic == 22 and getPlayerVocation(cid) == 2 then
	learnSpell(cid,"exevo pan",100)
end
if magic == 23 and getPlayerVocation(cid) == 2 then
	learnSpell(cid,"exura gran",350)
end
if magic == 24 and getPlayerVocation(cid) == 2 then
	learnSpell(cid,"utevo res ina",100)
end
if magic == 25 and getPlayerVocation(cid) == 2 then
	learnSpell(cid,"utevo gran lux",600)
end
if magic == 26 and getPlayerVocation(cid) == 2 then
	learnSpell(cid,"utevo lux",0)
end
if magic == 27 and getPlayerVocation(cid) == 2 then
	learnSpell(cid,"adana ani",2000)
end
if  getPlayerVocation(cid) == 1 or getPlayerVocation(cid) == 3 or getPlayerVocation(cid) == 4 then
	selfSay('Sorry, you are not a druid.')
end
end

if string.find(msg, 'yes(%a*)') and cid == focus and talkcount == 1 then
	BuyItem(focus,itemid,count,cost)
	talkcount = 0
end

if string.find(msg, 'yes(%a*)') and cid == focus and talkcount == 10 then       
	BuyItem(focus,itemid,count,cost)
	BuyItem(focus,itemid,count,cost)
	BuyItem(focus,itemid,count,cost)
	BuyItem(focus,itemid,count,cost)
	BuyItem(focus,itemid,count,cost)
	BuyItem(focus,itemid,count,cost)
	BuyItem(focus,itemid,count,cost)
	BuyItem(focus,itemid,count,cost)
	BuyItem(focus,itemid,count,cost)
	BuyItem(focus,itemid,count,cost)
	talkcount = 0
end

if string.find(msg, 'yes(%a*)') and cid == focus and talkcount == 20 then       
	BuyItem(focus,itemid,count,cost)
	BuyItem(focus,itemid,count,cost)
	BuyItem(focus,itemid,count,cost)
	BuyItem(focus,itemid,count,cost)
	BuyItem(focus,itemid,count,cost)
	BuyItem(focus,itemid,count,cost)
	BuyItem(focus,itemid,count,cost)
	BuyItem(focus,itemid,count,cost)
	BuyItem(focus,itemid,count,cost)
	BuyItem(focus,itemid,count,cost)
	BuyItem(focus,itemid,count,cost)
	BuyItem(focus,itemid,count,cost)
	BuyItem(focus,itemid,count,cost)
	BuyItem(focus,itemid,count,cost)
	BuyItem(focus,itemid,count,cost)
	BuyItem(focus,itemid,count,cost)
	BuyItem(focus,itemid,count,cost)
	BuyItem(focus,itemid,count,cost)
	BuyItem(focus,itemid,count,cost)
	BuyItem(focus,itemid,count,cost)
	talkcount = 0
end

if string.find(msg, '(%a*)no(%a*)') and cid == focus then
	selfSay('Ok, is there something else you want? If so tell me.')
	itemid = 0
	count = 0
	cost = 0
	talkcount = 0
end 

if string.find(msg, 'bye(%a*)') and cid == focus then
	selfSay('Farewell, ' .. creatureGetName(cid) .. '!')
	focus = 0
	itemid = 0
	talk_start = 0
	talkcount = 0
end 

end

function onCreatureChangeOutfit(creature)
end

function onThink() 
if (os.clock() - talk_start) > 10 then 
if focus > 0 then 
selfSay('Next please!') 
talkcount = 0
end 
focus = 0 
itemid = 0
talk_start = 0 
end 

if focus ~= 0 then
if getDistanceToCreature(focus) > 7 then
selfSay('Good bye then.')
focus = 0
end
end

if(focus == 0) then
moveRandom(ox,oy,max)
end

end
