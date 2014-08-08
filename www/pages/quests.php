<?php
/*
Scrip by zonet @OTLand
http://otland.net/threads/gesior-aac-quest-page-no-sql-query.74511/
*/ 
if(!defined('INITIALIZED'))
	exit;
		$main_content .= '<img src="layouts/guilcera_layout/img/titles/t_quests.png"/><p>';

$quests = array (  
    1 => array ( "name" => "Demon Helmet", "level" => 100, "description" => "Write your description here", "reward" => "Demon Helmet, Demon Shield, Boots of haste"), 
    2 => array ( "name" => "Annihilator", "level" => 100, "description" => "4 Peoples needed!", "reward" => "Magic Sword, Stonecutter Axe, Demon Armor, Present(choose 1)"), 
    3 => array ( "name" => "Pits of Inferno", "level" => 100, "description" => "Very hard quest. You need a big team to do this quest, the quest is long too!", "reward" => "dont know xD") 
); 

$main_content .= '<br><table border="0px" cellspacing="1px" cellpadding="4px" width="100%"> 
            <tr bgcolor="'. $config['site']['vdarkborder'] .'" style="color: white;"><th width="5%">Level</th><th width="15%">Quest Name</th><th width="40%">Description</th><th width="20%">Reward</th></tr>'; 
$row = 1; 
    foreach($quests as $quest) { 
        $bgcolor = ($row % 2 ? $config['site']['lightborder'] : $config['site']['darkborder']); 
        $row++; 
        $main_content .= '<tr bgcolor="'. $bgcolor .'"><td>'. $quest['level'] .'</td><td> '. $quest['name'] .'</td><td>'. $quest['description'] .'</td><td> '. $quest['reward'] .' </td></tr>'; 

    }     
$main_content .= '</table>'; 
?> 