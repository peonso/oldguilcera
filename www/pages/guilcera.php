<?php
if(!defined('INITIALIZED'))
	exit;
		$main_content .= '<a name="headlinks"><img src="layouts/guilcera_layout/img/titles/t_guilcera.png"/></a><p>';
$main_content .= '
<a href="#features">- Guilcera Features</a><br>
<a href="#monsters">- Monsters Attributes</a><br>
<a href="#regeneration">- Regeneration</a><br>
<a href="#speed">- Speed</a><br>
<b href="#speed">- Melee</b><br>
<b href="#speed">- Distance</b><br>
<a href="#armor">- Armor and Shielding</a><br>
<a href="#spells">- Spells</a><br>
<b href="#speed">- Skills</b><br>
<a href="#sources">- Sources</a><br>

<table width="100%">
	<tr><td><b><font style="font-size:9px"></font></b></td></tr>
	<tr><td class="t_g"><a name="features">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a><b>Guilcera Features</b></td></tr>
	<tr><td style="padding:15px 20px 10px 10px;text-align:justify;" colspan="2"><p><b>Notable implemented features that did not exist at version 7.72</b></p>(7.4) Stack of items with height block movement (config.lua tileHeightBlock = true)<br>
(8.0) Spears automatically return to your hand when they haven\'t broke. (items.xml)<br>
(8.1) Shared Experience (config.lua/talkactions.xml	-- Party System)<br>
(8.41) 2-second-delay for fighting after changing floor level or teleporting. (config.lua stairhopDelay = 2 * 1000) <br>
(8.41) Stairhopping without getting hit is no longer possible. <br>
(8.6) Autostack items at inventory. (config.lua autoStack = true)<br>
(9.52) Characters can now always log out in a protection zone regardless of whether or not the logout block is active.</td></tr>
	<tr><td><b><font style="font-size:9px"><a href="#headlinks">To top</a></font></td><td style="text-align:right; font-size:9px; vertical-align:bottoms;padding:0px 10px 0px 0px"><b>by Peonso</b></td></tr>
	<tr><td><br></td></tr>
	<tr><td><br></td></tr>
	</table>
		
<table width="100%">
            <tr><td><b><font style="font-size:9px"></font></b></td></tr>
            <tr><td class="t_g"><a name="monsters">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a><b>Monsters Attributes</b></td></tr>
            <tr><td style="padding:15px 20px 10px 10px;text-align:justify;" colspan="2">For monsters attributes at 7.72 (namely speed and armor) we got 3 sources. OTLand <a target="new" href="http://otland.net/threads/monster-speed-research.91671/">Monster Speed Research</a> forum thread, that unfortunately is not complete, but also contains data about monsters haste and paralyze spells. And about armor we got: #1 <a target="new" href="http://forum.tibianews.net/archive/index.php/t-12959.html">the post</a> from gebba darkrose, at Tibianews "Let the spears fly" article by Gorak, that has some imprecise info; and #2 tibia-stats.com <a target="new" href="http://www.tibia-stats.com/index.php?akcja=2&ctg=37">creature page</a>, that give us armor values of monsters, and I assumed those values were the same as they are now.<p> With the data I built <a target="new" href="https://docs.google.com/spreadsheets/d/1ivpK2h34001YgSorcn_EpdWIRL91m2TevF2zK8LEbGM/edit?usp=sharing">this spreadsheet</a>.
</td></tr>
	<tr><td><b><font style="font-size:9px"><a href="#headlinks">To top</a></font></td><td style="text-align:right; font-size:9px; vertical-align:bottoms;padding:0px 10px 0px 0px"><b>by Peonso</b></td></tr>
	<tr><td><br></td></tr>
	<tr><td><br></td></tr>
</table>
		
<table width="100%">
            <tr><td><b><font style="font-size:9px"></font></b></td></tr>
            <tr><td class="t_g"><a name="regeneration">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a><b>Regeneration</b></td></tr>
            <tr><td style="padding:15px 20px 10px 10px;text-align:justify;" colspan="2">7.72 use actual regeneration values. They were implemented at update 7.6. Important to note that there was no flasks/potions, and the mana resource was manafluid, for 55gps.<br>
<br><b>* Vocations</b>
<br>- Druid (1hp/12sec, 2mana/3sec)
<br>- Elder Druid (1hp/12sec, 2mana/2sec)
<br>- Sorcerer (1hp/12sec, 2mana/3sec)
<br>- Master Sorcerer (1hp/12sec, 2mana/2sec)
<br>- Paladin (1hp/8sec, 2mana/4sec)
<br>- Royal Paladin (1hp/6sec, 2mana/3sec)
<br>- Knight (1hp/6sec, 2mana/6sec)
<br>- Elite Knight (1hp/4sec, 2mana/6sec)
<br><br>
<b>* Manafluids</b><br>
Before 7.6 - Manafluid restored between 20-75 mana, costed 100gp<br>
Update 7.6 - Manafluid restored between 50-150 mana, costed 55gp<br>
Update 8.1 - Manafluids are discontinued, they added Mana Potions<br>
<br>
<b>* Life Ring</b><br>
Before 7.6 - 20 minutes - 400 mana (1mana/3sec) - 400 hp (1hp/3sec)<br>
Update 7.6 - 20 minutes - 1600 mana (8mana/6sec) - 400 hp (2hp/6sec)<br>
<br>
<b>* Ring of Healing</b><br>
Before 7.6 - 7,5 minutes - 800? mana - 450 hp<br>
Update 7.6 - 7,5 minutes - 1800 mana (24mana/6sec) - 450 hp (6hp/6sec)
			</td></tr>
	<tr><td><b><font style="font-size:9px"><a href="#headlinks">To top</a></font></td><td style="text-align:right; font-size:9px; vertical-align:bottoms;padding:0px 10px 0px 0px"><b>by Peonso</b></td></tr>
	<tr><td><br></td></tr>
	<tr><td><br></td></tr>
</table>
		
<table width="100%">
            <tr><td><b><font style="font-size:9px"></font></b></td></tr>
            <tr><td class="t_g"><a name="speed">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a><b>Speed</b></td></tr>
            <tr><td style="padding:15px 20px 10px 10px;text-align:justify;" colspan="2">Base speed is 220 (level 1), each level you gain 2 speed.
Haste (utani hur) is a spell that will raise your speed. Your speed will change to your unmodified speed (not including Boots of Haste or Time Ring) * 1.3 - 24 for about 30 seconds.
Strong Haste (utani gran hur) is a spell that will also raise your speed, but it will raise it more so than the regular haste spell. Your speed will change to your unmodified speed (not including Boots of Haste or Time Ring) * 1.7 - 56 for about 20 seconds.
Items (+2 speed = +1 level), which means that an item that give you 40 speed (boots of haste) will actually increase your speed as if you are 20 levels higher.<br><br><b>Paralyze</b><br><br>
Paralysis is a special condition. When you are paralyzed, your speed will be greatly decreased, also any haste spells will be worn off, and will not return when paralysis is removed. You can stop the paralysis by healing yourself, \'exura\' would be enough. By information obtained in the Flash Client (in the character profile page while online and fighting monsters than can cause paralysis) is possible to know how many speed levels are temporarily lost. The effect of paralysis is not stackable (for example, a mummy can reduce your speed from 106 to 226 speed, if in its first cast you lose 180 speed, a second cast by the same or a other mummy can make it change from -180 to -210 or -120, meaning that if the spell is casted upon you a second time you can actually lose or recover few speed levels).
</td></tr>
	<tr><td><b><font style="font-size:9px"><a href="#headlinks">To top</a></font></td><td style="text-align:right; font-size:9px; vertical-align:bottoms;padding:0px 10px 0px 0px"><b>by Peonso</b></td></tr>
	<tr><td><br></td></tr>
	<tr><td><br></td></tr>
</table>

<table width="100%">
            <tr><td><b><font style="font-size:9px"></font></b></td></tr>
            <tr><td class="t_g"><a name="spells">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a><b>Spells</b></td></tr>
            <tr><td style="padding:15px 20px 10px 10px;text-align:justify;" colspan="2">If found to main sources os informations regarding spell values, <a target="new" href="http://web.archive.org/web/20070519160904/http://www.tibiacity.org/library/calculators/damage.php">tibiacity old calculator</a> (access page code) and <a target="new" href="http://web.archive.org/web/20070629143909/http://tibia.wikia.com/wiki/Formula">old formula page</a> from tibia.wikia, the last with with like none useful information about spells.
			<p>With this data I built <a target="new" href="https://docs.google.com/spreadsheets/d/1293KCxxpovzlJk6QAnrZ52Hgr9LA_H5YlMPhgEhGS8s/edit?usp=sharing">this spreadsheet</a>. Note that at every physical damage spell tibiacity does reduce 30 at minimum spell damage, I\'m sure that\'s accounting armor reduction.
			<p>Not many conclusive data, so I did a research by myself using old tibiacam files. Got <a target="new" href="https://docs.google.com/spreadsheets/d/158U3_sBdG6r6DkK9UFvmyl1zd8cmeTnh_4hVwlRjtpQ/edit?usp=sharing">this spreadsheet</a> as result.
			<p>Merging all the info, I decided to use the formulas at this third and <a target="new" href="https://docs.google.com/spreadsheets/d/1wpoZkGwOd_EMA_k3JsqpJzOKgd6VigCpQjMfqFnWiSU/edit?usp=sharing">final spreadsheet</a>.
						</td></tr>
	<tr><td><b><font style="font-size:9px"><a href="#headlinks">To top</a></font></td><td style="text-align:right; font-size:9px; vertical-align:bottoms;padding:0px 10px 0px 0px"><b>by Peonso</b></td></tr>
	<tr><td><br></td></tr>
	<tr><td><br></td></tr>
</table>

<table width="100%">
            <tr><td><b><font style="font-size:9px"></font></b></td></tr>
            <tr><td class="t_g"><a name="armor">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a><b>Armor and Shielding</b></td></tr>
            <tr><td style="padding:15px 20px 10px 10px;text-align:justify;" colspan="2">All the information available, old and new (and no indications on updates notes that it ever changed), give same formulas for both armor and shield, they are regularly added in otservs. Armor reduction for armor 0 is 0, for armor 1 is 1, and for 2 and afterwards:<p>
			<i>Min = TotalArmor*0.475<br>
			Max = (TotalArmor*0.95)-1</i><br><br>
			For blocking, the formula is:<p>
			<i>Max = (Skill*Defense*d)/100</i><p>
			Where <i>d</i> is your damage factor; <i>full attack = 5, balanced = 7, full defence = 10</i>. If you are wearing a shield, the skill used is shielding, if you are not wearing a shield, the skill used is based on your weapon, if you aren\'t wearing something, the skill used is fisting. Your defense is the one from your shield, if your are not using a shield, it\'s the defense from your weapon, if you aren\'t wearing something, your defense is 7. A random number is picked between 0 and you max.<p>
			Note that you can\'t block distance nor spell damage, both, when physical, will be reduced only by armor. The total damage reduction will be:<p>
			<i>TotalDamageSource - BlockedDamage - ArmorReduction = DamageDone</i><p>
			So first, blocking reduction is checked, if damage reach 0 in this phase you got a "poff" animation, if not, then it\'s reduced by armor, if it\'s reach 0 now you got a "spark" animation, if some damage remained, it\'s applied.
			</td></tr>
	<tr><td><b><font style="font-size:9px"><a href="#headlinks">To top</a></font></td><td style="text-align:right; font-size:9px; vertical-align:bottoms;padding:0px 10px 0px 0px"><b>by Peonso</b></td></tr>
	<tr><td><br></td></tr>
	<tr><td><br></td></tr>
</table>

<table width="100%">
            <tr><td><b><font style="font-size:9px"></font></b></td></tr>
            <tr><td class="t_g"><a name="sources">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a><b>Sources</b></td></tr>
            <tr><td style="padding:15px 20px 10px 10px" colspan="2"><i>13/06/2014 - <a target="new" href="http://tibia.wikia.com/wiki/Updates">Updates - tibia.wikia</a><br>
12/06/2014 - <a target="new" href="http://www.tibia-stats.com/index.php?akcja=2&ctg=37">Monster Armor - tibia-stats</a><br>
12/06/2014 - <a target="new" href="http://otland.net/threads/monster-speed-research.91671/">Monster Speed - otland</a><br>
06/06/2014 - <a target="new" href="http://forum.tibianews.net/archive/index.php/t-12959.html">Monsters Armor - tibianews</a><br>
04/06/2014 - <a target="new" href="http://www.tibianews.net/component/content/article/87-old-articles/581-secrets-of-tibia-issue-i-speed.html">Speed - tibianews</a><br>
04/06/2014 - <a target="new" href="http://tibia.wikia.com/wiki/Speed">Speed - tibia.wikia</a><br>
04/06/2014 - <a target="new" href="http://tibia.wikia.com/wiki/Paralisis">Paralyze - tibia.wikia</a><br>
04/06/2014 - <a target="new" href="http://tibia.wikia.com/wiki/Formula">Formulas - tibia.wikia</a><br>
04/06/2014 - <a target="new" href="http://web.archive.org/web/20070629143909/http://tibia.wikia.com/wiki/Defense">Defenses - tibia.wikia</a><br>
13/06/2014 - <a target="new" href="http://web.archive.org/web/20070629143909/http://tibia.wikia.com/wiki/Formula">Old Formulas - tibia.wikia</a><br>
16/06/2014 - <a target="new" href="http://tibianic.org/forum/thread/14/1/">Formulas - tibianic</a><br>
06/06/2014 - <a target="new" href="http://www.tibia-stats.com/index.php?akcja=6003&research=distance">Distance - tibia-stats</a><br>
06/06/2014 - <a target="new" href="http://web.archive.org/web/20080919170655/tibianews.net/article.asp?Id=429">Distance - tibianews</a><br>
06/06/2014 - <a target="new" href="http://www.tibia-stats.com/forum/viewtopic.php?f=10&t=97">Armor - tibia-stats</a><br>
16/06/2014 - <a target="new" href="http://www.tibia-stats.com/index.php?akcja=6003&research=shieldingSkilling">Shielding - tibia-stats</a><br>
04/06/2014 - <a target="new" href="http://www.blackdtools.com/forum/showthread.php?26574-Formulas-Given-Armor-and-Defense-Values-How-do-they-work">Armor and Defense Values - blackdtools</a><br>
04/06/2014 - <a target="new" href="http://web.archive.org/web/20070519160904/http://www.tibiacity.org/library/calculators/damage.php">Spell damage - tibiacity</a><br>
04/06/2014 - <a target="new" href="http://z6.invisionfree.com/classic_tibia/ar/t824.htm">Spell Damage - classic tibia</a><br>
05/06/2014 - <a target="new" href="http://web.archive.org/web/20071226005110/http://tibia.wikia.com/wiki/Envenom">Envenon - tibia.wikia</a><br>
05/06/2014 - <a target="new" href="http://web.archive.org/web/20071226005110/http://tibia.wikia.com/wiki/Soulfire">Soulfire - tibia.wikia</a><br>
05/06/2014 - <a target="new" href="http://tibia.wikia.com/wiki/Poison_Storm">Poison Storm - tibia.wikia</a><br>
06/06/2014 - <a target="new" href="http://web.archive.org/web/20090313014731/http://www.tibianews.net/article.asp?Id=220">Skills - tibianews</a><br>
04/06/2014 - <a target="new" href="http://www.tibianews.net/component/content/article/87-old-articles/579-secrets-of-tibia-ii-fishing.html">Fishing - tibianews</a><br>
</i></td></tr>
	<tr><td><b><font style="font-size:9px"><a href="#headlinks">To top</a></font></td><td style="text-align:right; font-size:9px; vertical-align:bottoms;padding:0px 10px 0px 0px"><b>by Peonso</b></td></tr>
	<tr><td><br></td></tr>
	<tr><td><br></td></tr>
</table>





';
		
/* TEMPLATE
<table width="100%">
            <tr><td><b><font style="font-size:9px"></font></b></td></tr>
            <tr><td class="t_g"><a name="template">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a><b>Template</b></td></tr>
            <tr><td style="padding:15px 20px 10px 10px;text-align:justify;" colspan="2">template</td></tr>
	<tr><td><b><font style="font-size:9px"><a href="#headlinks">To top</a></font></td><td style="text-align:right; font-size:9px; vertical-align:bottoms;padding:0px 10px 0px 0px"><b>by Peonso</b></td></tr>
	<tr><td><br></td></tr>
	<tr><td><br></td></tr>
</table>
*/