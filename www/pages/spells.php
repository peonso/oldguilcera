<?php
if(!defined('INITIALIZED'))
	exit;
		$main_content .= '<img src="layouts/guilcera_layout/img/titles/t_spells.png"/><p>';
	
		$main_content .= 
		'Here you can see the list of all available spells in Guilcera. For general information about spells and magic in Guilcera please see the <b>manual</b>.
		<br>
		<br>
		<table border=0 cellspacing=1 cellpadding=4 width=100%>
  <tr bgcolor=' .$config['site']['vdarkborder']. ' class=white><b>
    <th width=52% >Name</th>
    <th>Category</th>
    <th>Type</th>
    <th>Exp Lvl</th>
    <th>Mana</th>
    <th>Premium</th></b>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Animate Dead </b>(adana mort)</td>
    <td>Summon</td>
    <td>Rune</td>
    <td>27</td>
    <td>600</td>
    <td>yes</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Antidote </b>(exana pox)</td>
    <td>Healing</td>
    <td>Instant</td>
    <td>10</td>
    <td>30</td>
    <td>no</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Antidote Rune </b>(adana pox)</td>
    <td>Healing</td>
    <td>Rune</td>
    <td>15</td>
    <td>200</td>
    <td>no</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Berserk </b>(exori)</td>
    <td>Attack</td>
    <td>Instant</td>
    <td>35</td>
    <td>var.</td>
    <td>yes</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Cancel Invisibility </b>(exana ina)</td>
    <td>Support</td>
    <td>Instant</td>
    <td>26</td>
    <td>200</td>
    <td>yes</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Challenge </b>(exeta res)</td>
    <td>Support</td>
    <td>Instant</td>
    <td>20</td>
    <td>30</td>
    <td>yes</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Chameleon </b>(adevo ina)</td>
    <td>Support</td>
    <td>Rune</td>
    <td>27</td>
    <td>600</td>
    <td>no</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Conjure Arrow </b>(exevo con)</td>
    <td>Supply</td>
    <td>Instant</td>
    <td>13</td>
    <td>100</td>
    <td>no</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Conjure Bolt </b>(exevo con mort)</td>
    <td>Supply</td>
    <td>Instant</td>
    <td>17</td>
    <td>140</td>
    <td>yes</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Convince Creature </b>(adeta sio)</td>
    <td>Summon</td>
    <td>Rune</td>
    <td>16</td>
    <td>200</td>
    <td>no</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Creature Illusion </b>(utevo res ina "creature")</td>
    <td>Support</td>
    <td>Instant</td>
    <td>23</td>
    <td>100</td>
    <td>no</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Desintegrate </b>(adito tera)</td>
    <td>Support</td>
    <td>Rune</td>
    <td>21</td>
    <td>200</td>
    <td>yes</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Destroy Field </b>(adito grav)</td>
    <td>Support</td>
    <td>Rune</td>
    <td>17</td>
    <td>120</td>
    <td>no</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Enchant Staff </b>(exeta vis)</td>
    <td>Support</td>
    <td>Instant</td>
    <td>41</td>
    <td>80</td>
    <td>yes</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Energy Beam </b>(exevo vis lux)</td>
    <td>Attack</td>
    <td>Instant</td>
    <td>23</td>
    <td>100</td>
    <td>no</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Energy Field </b>(adevo grav vis)</td>
    <td>Attack</td>
    <td>Rune</td>
    <td>18</td>
    <td>320</td>
    <td>no</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Energy Strike </b>(exori vis)</td>
    <td>Attack</td>
    <td>Instant</td>
    <td>12</td>
    <td>20</td>
    <td>yes</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Energy Wall </b>(adevo mas grav vis)</td>
    <td>Attack</td>
    <td>Rune</td>
    <td>41</td>
    <td>1000</td>
    <td>no</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Energy Wave </b>(exevo mort hur)</td>
    <td>Attack</td>
    <td>Instant</td>
    <td>38</td>
    <td>250</td>
    <td>no</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Energybomb </b>(adevo mas vis)</td>
    <td>Attack</td>
    <td>Rune</td>
    <td>37</td>
    <td>880</td>
    <td>yes</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Envenom </b>(adevo res pox)</td>
    <td>Attack</td>
    <td>Rune</td>
    <td>21</td>
    <td>400</td>
    <td>yes</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Explosion </b>(adevo mas hur)</td>
    <td>Attack</td>
    <td>Rune</td>
    <td>31</td>
    <td>720</td>
    <td>no</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Explosive Arrow </b>(exevo con flam)</td>
    <td>Supply</td>
    <td>Instant</td>
    <td>25</td>
    <td>290</td>
    <td>no</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Find Person </b>(exiva "name")</td>
    <td>Support</td>
    <td>Instant</td>
    <td>8</td>
    <td>20</td>
    <td>no</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Fire Field </b>(adevo grav flam)</td>
    <td>Attack</td>
    <td>Rune</td>
    <td>15</td>
    <td>240</td>
    <td>no</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Fire Wall </b>(adevo mas grav flam)</td>
    <td>Attack</td>
    <td>Rune</td>
    <td>33</td>
    <td>780</td>
    <td>no</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Fire Wave </b>(exevo flam hur)</td>
    <td>Attack</td>
    <td>Instant</td>
    <td>18</td>
    <td>80</td>
    <td>no</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Fireball </b>(adori flam)</td>
    <td>Attack</td>
    <td>Rune</td>
    <td>17</td>
    <td>160</td>
    <td>no</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Firebomb </b>(adevo mas flam)</td>
    <td>Attack</td>
    <td>Rune</td>
    <td>27</td>
    <td>600</td>
    <td>no</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Flame Strike </b>(exori flam)</td>
    <td>Attack</td>
    <td>Instant</td>
    <td>12</td>
    <td>20</td>
    <td>yes</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Food </b>(exevo pan)</td>
    <td>Supply</td>
    <td>Instant</td>
    <td>14</td>
    <td>120</td>
    <td>no</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Force Strike </b>(exori mort)</td>
    <td>Attack</td>
    <td>Instant</td>
    <td>11</td>
    <td>20</td>
    <td>yes</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Great Energy Beam </b>(exevo gran vis lux)</td>
    <td>Attack</td>
    <td>Instant</td>
    <td>29</td>
    <td>200</td>
    <td>no</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Great Fireball </b>(adori gran flam)</td>
    <td>Attack</td>
    <td>Rune</td>
    <td>23</td>
    <td>480</td>
    <td>no</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Great Light </b>(utevo gran lux)</td>
    <td>Support</td>
    <td>Instant</td>
    <td>13</td>
    <td>60</td>
    <td>no</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Haste </b>(utani hur)</td>
    <td>Support</td>
    <td>Instant</td>
    <td>14</td>
    <td>60</td>
    <td>yes</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Heal Friend </b>(exura sio "name")</td>
    <td>Healing</td>
    <td>Instant</td>
    <td>18</td>
    <td>70</td>
    <td>yes</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Heavy Magic Missile </b>(adori gran)</td>
    <td>Attack</td>
    <td>Rune</td>
    <td>25</td>
    <td>280</td>
    <td>no</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Intense Healing </b>(exura gran)</td>
    <td>Healing</td>
    <td>Instant</td>
    <td>11</td>
    <td>40</td>
    <td>no</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Intense Healing Rune </b>(adura gran)</td>
    <td>Healing</td>
    <td>Rune</td>
    <td>15</td>
    <td>240</td>
    <td>no</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Invisible </b>(utana vid)</td>
    <td>Support</td>
    <td>Instant</td>
    <td>35</td>
    <td>440</td>
    <td>no</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Levitate </b>(exani hur "up|down")</td>
    <td>Support</td>
    <td>Instant</td>
    <td>12</td>
    <td>50</td>
    <td>yes</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Light </b>(utevo lux)</td>
    <td>Support</td>
    <td>Instant</td>
    <td>8</td>
    <td>20</td>
    <td>no</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Light Healing </b>(exura)</td>
    <td>Healing</td>
    <td>Instant</td>
    <td>9</td>
    <td>25</td>
    <td>no</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Light Magic Missile </b>(adori)</td>
    <td>Attack</td>
    <td>Rune</td>
    <td>15</td>
    <td>120</td>
    <td>no</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Magic Rope </b>(exani tera)</td>
    <td>Support</td>
    <td>Instant</td>
    <td>9</td>
    <td>20</td>
    <td>yes</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Magic Shield </b>(utamo vita)</td>
    <td>Support</td>
    <td>Instant</td>
    <td>14</td>
    <td>50</td>
    <td>no</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Magic Wall </b>(adevo grav tera)</td>
    <td>Support</td>
    <td>Rune</td>
    <td>32</td>
    <td>750</td>
    <td>yes</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Mass Healing </b>(exura gran mas res)</td>
    <td>Healing</td>
    <td>Instant</td>
    <td>36</td>
    <td>150</td>
    <td>yes</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Paralyze </b>(adana ani)</td>
    <td>Support</td>
    <td>Rune</td>
    <td>54</td>
    <td>1400</td>
    <td>yes</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Poison Bomb </b>(adevo mas pox)</td>
    <td>Attack</td>
    <td>Rune</td>
    <td>25</td>
    <td>520</td>
    <td>yes</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Poison Field </b>(adevo grav pox)</td>
    <td>Attack</td>
    <td>Rune</td>
    <td>14</td>
    <td>200</td>
    <td>no</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Poison Storm </b>(exevo gran mas pox)</td>
    <td>Attack</td>
    <td>Instant</td>
    <td>50</td>
    <td>600</td>
    <td>yes</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Poison Wall </b>(adevo mas grav pox)</td>
    <td>Attack</td>
    <td>Rune</td>
    <td>29</td>
    <td>640</td>
    <td>no</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Poisoned Arrow </b>(exevo con pox)</td>
    <td>Supply</td>
    <td>Instant</td>
    <td>16</td>
    <td>130</td>
    <td>no</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Power Bolt </b>(exevo con vis)</td>
    <td>Supply</td>
    <td>Instant</td>
    <td>59</td>
    <td>800</td>
    <td>yes</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Soulfire </b>(adevo res flam)</td>
    <td>Attack</td>
    <td>Rune</td>
    <td>27</td>
    <td>600</td>
    <td>yes</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Strong Haste </b>(utani gran hur)</td>
    <td>Support</td>
    <td>Instant</td>
    <td>20</td>
    <td>100</td>
    <td>yes</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Sudden Death </b>(adori vita vis)</td>
    <td>Attack</td>
    <td>Rune</td>
    <td>45</td>
    <td>880</td>
    <td>no</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Summon Creature </b>(utevo res "creature")</td>
    <td>Summon</td>
    <td>Instant</td>
    <td>25</td>
    <td>var.</td>
    <td>no</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Ultimate Explosion </b>(exevo gran mas vis)</td>
    <td>Attack</td>
    <td>Instant</td>
    <td>60</td>
    <td>1200</td>
    <td>yes</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Ultimate Healing </b>(exura vita)</td>
    <td>Healing</td>
    <td>Instant</td>
    <td>20</td>
    <td>160</td>
    <td>no</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Ultimate Healing Rune </b>(adura vita)</td>
    <td>Healing</td>
    <td>Rune</td>
    <td>24</td>
    <td>400</td>
    <td>no</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Ultimate Light </b>(utevo vis lux)</td>
    <td>Support</td>
    <td>Instant</td>
    <td>26</td>
    <td>140</td>
    <td>yes</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Undead Legion </b>(exana mas mort)</td>
    <td>Summon</td>
    <td>Instant</td>
    <td>30</td>
    <td>500</td>
    <td>yes</td>
  </tr>
  <tr bgcolor=' .(($number_of_rows++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']). '>
    <td><b>Wild Growth </b>(exevo grav vita)</td>
    <td>Support</td>
    <td>Instant</td>
    <td>27</td>
    <td>220</td>
    <td>yes</td>
  </tr>
</table>
';