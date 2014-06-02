Guilcera Change Log
===================
more info and lastest version at https://github.com/peonso/guilcera

  4.02

    - may 2014, [7.6] Avesta rev94 by Ferrus - MySQL database
    - added to GitHub
    - added README.md
    - added docs/CHANGELOG.md
    - added docs/SETUP_GUIDE.md
    - cleaned up guilcera_schema.sql
    - added guilcera_testserver_schema.sql with level 100 characters and a gamemaster (account 1/1)
    - spells need level instead of magic level (as in 7.6)
    - fixed spellbook
    - fixed capacity bug with quests
    - AAC doesn't give first items anymore
    - added guilcera/data/creaturescripts/scripts/firstitems.lua and necessary changes at creaturescripts.xml
    - login.lua and removebless.lua manage blesses and premium features
    - added functional NPCs (many missing yet)
    - added missing monsters, corrected loot 
    - small fixes at items.xml
    - small fixes at actions
    - removed sample scripts
    - did some work at main city
    - added boats
    

  guilcera 4.01
--------------
`jun 2013, [7.6] Avesta rev94 by Ferrus - MySQL database`

[[map image](https://raw.githubusercontent.com/peonso/guilcera/master/docs/images/guilcera_401.png)]

*_bug fixes
- machete working
- locked doors now locked
- stages 1-60 10x; 60-90 8x; 90-120 6x
- discovered how to fix NPCs, but not what caused the bug
- items.otb from RME mapeditor fixed, signs marked readeable
- first try setuping houses
- server saving each 2 minutes \globalevents
- added functional guilcera_schema.sql

*_rates
- ml x5
- skills x10

*_map
- changed respaw xanadu mountain quest
- elves north of peonsville removed
- cyclops spawn nearby it removed
- taumel removed
- started new peonsville

*_know issues/to do
- add schema.sql for server test, with test characters
- guilcera_schema.sql need some tweak
- current Nicaw ACC need some tweak
- add minimap/spells/commands/serverinfo to NicawACC
- set skills/magic level balanced rate
- set correct damage for spells/melee/burstarrows
- set script to give initial items
- set script to diary server save
- capacity bug with chest quest action
- last fixes to tom.lua npc
- add boat npc
- add promotion npc
- add blessing npc
- test and fix attack/spells/damage from monsters
- add loot from guilcera 3.2.3 to monsters and also Quagmire Rod - Bonelord, Elder Bonelord, Lizard Snakecharmer; Tempest Rod - Priestess, Marid; 		Volcanic Rod - Witch, Fire Devil, Warlock, Morgaroth; Wand of Plague - Orc Shaman
- add custom pharaohs
- add custom demon boss
- add houses
- spellbook not working

guilcera 4.00
--------------
`jun 2013, [7.6] Avesta rev94 by Ferrus - MySQL database`

*_Avesta works with a much newer version of CVS, a lot of scripts not working and a lot of things to setup, unplayable.

*_actions
- removed quest_reward.lua
- added worms to fishing_rod.lua
- changed teleport.lua with nominal ids (was bugging otherwise, don't know why)
- added 7.6 objects to increment.lua, decrement.lua and \doors
- changed doors\gateofexp_closed.lua a bit, so it add special description even if the door don't open
- changed food.lua, `sound` in orange, instead of saying it in yellow
- added hota.lua (helmet of the ancients + small ruby transformation)
- added information for 7.6 in lib/action.lua
*_actions/guilcera
- money.lua (transforming gold->platinum and platinum->crystal)
- posso.lua (like sewer gate from teleport.lua, actionid 101 to draw wells)
- others actions for quests/map gates
*_creaturescripts
- stages.lua (max level 110) STAGES = {{level = 59, rate = 10}, {level = 99, rate = 6}, {level = 109, rate = 5},} DEFAULT_RATE = 0
- added freepremmium.lua, so everyone got 30 days of premmium in login if premdays < 15
*_items
- added plural to all legs and torches 2050 (to work with npc script)
*_monsters
- added 7.6 monsters from old avesta datapack
*_movements
- configured setnewtown.lua to guilcera map
- added 7.6 tiles and doors
- hota.lua/parchment.lua -> quest scripts
*_npc
- removed examples
- added tom.lua (free of bugs improved seller/buyer)
*_weapons
- added wands and rods
*_world
- added Guilcera.otbm and testserv.otbm for tests
- changed all uniqueids and actionids
- added intersections through cave systems
- revamped insane game
*_functions.lua
- added questAddReward(PLAYER_ENTITY, EFFECT_POS, QUEST_ITEM, ITEM_count, QUEST_STORAGE)
*_documentation
- added organized guilcera ids.xlsx

guilcera 3.2.3
--------------
`jun 2013, [7.6] HoTS by Rex and Dimas - XML database`

[[map image](https://raw.githubusercontent.com/peonso/guilcera/master/docs/images/guilcera_323.png)]

*_bug fixes
- fixed combat and loot from monster (A-D)
- fixed quest chests disapering
- fixed *exori*_spell

*_know issues
- levitate spell only works verticaly
- some spells are sent as private message
- some rings can work endlessly
- monsters can't use diagonals to move, and can get stuck when don't find range
- exhausted setup on config.lua is broken
- arrow, bolts and fist can strike ghosts
- utevo res ina spell doesn't work
- npcs don't stop moving to talk
- boat npcs force ends the conversation even when the player aren't sent anywehere
-drunkness does not work
- following items has no effects: Ring of Healing (2214), Dwarven Ring (2213), Bronze Amulet (2172), Dragon Necklace (2201), Elven Amulet (2198), Garlic Necklace (2199), Protection Amulet (2200), Silver Amulet (2170).
- promotion system not implemented
- houses not implemented
- wands and rods not implemented

guilcera 3.2.2b
---------------
`jun 2013, [7.6] HoTS by Rex and Dimas - XML database`

*_changes
- teleport at northern larva spawn removed
- slime is summoning more slimes
- you need to buy labels now
- sign`s descriptions added
- exevo gran mas pox spell poisons for 98 damage

*_bug fixes
- xanadu mailbox swaped
- ice rapier working
- wild warrior running on low hp
- elandriel npc moving to far from spawn
- destroy field working as intended now

guilcera 3.2.2
---------------
`jun 2012, [7.6] HoTS by Rex and Dimas - XML database`

*_changes
- drop loot chances from bosses
- tom npc now sells snoballs
- a lot of items descriptions added

guilcera 3.2.1
---------------
`jun 2012, [7.6] HoTS by Rex and Dimas - XML database`

*_changes
- death penality is now 3%
- morgaroth added
- tom npc sells crowbar, sickle and knife
- exausted raised from 0,3s to 0,6s
- full attack damage raised by 10%

*_bug fixes
- machete now properly working
- scarf bug fixed
- peonsville mailbox fixed
- poison spider immune to poison

guilcera 3.2.0
---------------
`jun 2012, [7.6] HoTS by Rex and Dimas - XML database`

guilcera 3.1.0
---------------
`jul 2006, [7.6] HoTS by Rex and Dimas - XML database`

[[map image](https://raw.githubusercontent.com/peonso/guilcera/master/docs/images/guilcera_310.png)]

guilcera 3.0.0
---------------
`feb 2006, [7.6] otserv by OpenTibia team - XML database`

*_Changed protocol, Guilcera now works with Tibia Client 7.6

guilcera 2.7.1
---------------
`jan 2006, [7.5] Neverland 2.5 by Ruly - XML database`

guilcera 2.7.0
---------------
`dec 2005, [7.5] YurOTS 0.9.1 by Yurez - XML database`

guilcera 2.6.7
---------------
`nov 2005, [7.5] YurOTS 0.9.1 by Yurez - XML database`

[[map image](https://raw.githubusercontent.com/peonso/guilcera/master/docs/images/guilcera_267.png)]

guilcera 2.6.6
---------------
`nov 2005, [7.5] YurOTS 0.9.1 by Yurez - XML database`

guilcera 2.6.5
---------------
`oct 2005, [7.5] YurOTS 0.9.1 by Yurez - XML database`

guilcera 2.6.4
---------------
`oct 2005, [7.5] YurOTS 0.9.1 by Yurez - XML database`

*_changes
- god guido monster implemented
- invasions implemented

*_bug fixes
- monsters can summon
- all quests working
- npcs fixed
- demon combat working as intended

guilcera 2.5.1
---------------
`sep 2005, [7.5] HoTS by Rex - XML database`

*_Changed protocol, Guilcera now works with Tibia Client 7.5

guilcera 2.4.5
---------------
`aug 2005, [7.4] HoTS 0.9 by Rex - XML database`

guilcera 2.4.1
---------------
`aug 2005, [7.4] HoTS 0.9 by Rex - XML database`

[[map image](https://raw.githubusercontent.com/peonso/guilcera/master/docs/images/guilcera_241.png)]

guilcera 2.3.0
---------------
`jul 2005, [7.4] HoTS 0.8 by Rex - XML database`

guilcera 2.2.0c
---------------
`jul 2005, [7.4] HoTS 0.8 by Rex - XML database`

guilcera 2.2.0
---------------
`jul 2005, [7.4] HoTS 0.8 by Rex - XML database`

guilcera 2.1.0
---------------
`jun 2005, [7.4] HoTS 0.8 by Rex - XML database`

guilcera 2.0.0
---------------
`jun 2005, [7.4] HoTS 0.8 by Rex - XML database`

guilcera 1.4.0
---------------
`jun 2005, [7.4] LostWorld v1 by Crazytoko - XML database`

guilcera 1.3.5
---------------
`jun 2005, [7.4] Revolution 1.0.9 - XML database`

guilcera 1.3.0
---------------
`jun 2005, [7.4] Revolution 1.0.9 - XML database`

guilcera 1.2.0
---------------
`may 2005, [7.4] Revolution 1.0.9 - XML database`

[[map image](https://raw.githubusercontent.com/peonso/guilcera/master/docs/images/guilcera_120.png)]
