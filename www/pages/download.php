<?php
/*
bu Archez @OTLand
http://otland.net/threads/gesior-aac-downloads.70478/
*/
if(!defined('INITIALIZED'))
	exit;
		$main_content .= '<img src="layouts/guilcera_layout/img/titles/t_downloads.png"/><p>';
    $downloads['on'] = true; 
     
    // DONT MOVE // 
    $c1 = $config['site']['darkborder']; 
//    $c2 = $config['site']['lightborder']; 
    $c3 = $config['site']['vdarkborder']; 

#    Server client version (i.e. 854) 
    $downloads['client_version'] = '772'; 
     
#    IP Changer from OTCHANGER.NET 
    $downloads['ip_enabled'] = true; 
     
    // DONT MOVE // 
    $downloads['windows'] = 'http://tibiaclient.com/files/tibia'.$downloads['client_version'].'.exe'; 
    $downloads['linux'] = 'http://tibiaclient.com/files/tibia'.$downloads['client_version'].'.tgz'; 

#    Tibia Loader from OTSERVLIST.ORG 
#    // ENABLE TIBIA LOADER DOWNLOAD? (yes = true / no = false) 
    $downloads['otservlist'] = true; 
#    // YOUR IPC (unique download number to get coins on otservlist) 
    $downloads['ipc'] = '387206'; 
     

    // DONT MOVE // 
    $downloads['ipchanger'] = 'http://otchanger.net/Files/IPChanger/ipchanger'; 
    $downloads['link'] = 'http://otservlist.org/ipc/'; 

    // CONFIG ENDS HERE by ARCHEZ 
    $main_content .= '<table border="0" cellspacing="1" cellpadding="4" width="100%"> 
        <tr bgcolor="'.$c3.'"><td colspan="1" class="white"><center><b>Disclaimer</b></center></td></tr> 
        <tr bgcolor="'.$c1.'"><td>When downloading the tibia client, you agree that the use of the software is at your sole risk. 
        The software and any related documentation is provided "as is" without warranty of any kind. 
        The entire risk arising out of use of the software remains with you. 
        In no event shall '.$config['site']['worlds']['0'].' be liable for any damages to your computer or loss of data.</td></tr> 
        </table><br />'; 
        if($downloads['on'] == true) 
    { 
        $main_content .= ' 
        <table border="0" cellspacing="1" cellpadding="4" width="100%"> 
        <tr bgcolor="'.$c3.'"><td colspan="2" class="white"><center><b>Clients</b></center></td></tr> 
        <tr bgcolor="'.$c1.'"><td width="50%"><center><a href="'.$downloads['windows'].'">Windows</a></center></td><td><center><a href="'.$downloads['linux'].'">Linux</a></center></td></tr> 
        </table>'; 
        if($downloads['ip_enabled'] == true) 
            $main_content .= ' 
        <br /> 
        <table border="0" cellspacing="1" cellpadding="4" width="100%"> 
        <tr bgcolor="'.$c3.'"><td colspan="2" class="white"><center><b>IP Changer</b></center></td></tr> 
        <tr bgcolor="'.$c1.'"><td width="50%"><center><a href="'.$downloads['ipchanger'].'.zip">.ZIP</a></center></td><td><center><a href="'.$downloads['ipchanger'].'.rar">.RAR</a></center></td></tr> 
        </table>'; 
         
        if($downloads['otservlist'] == true) 
                $main_content .= ' 
                <br /> 
                <table border="0" cellspacing="1" cellpadding="4" width="100%"> 
                <tr bgcolor="'.$c3.'"><td colspan="1" class="white"><center><b>Tibia Loader</b></center></td></tr> 
                <tr bgcolor="'.$c1.'"><td width="50%"><center><a href="'.$downloads['link'].''.$downloads['ipc'].'">Tibia Loader, click here!</a></center></td></tr> 
                </table>'; 
    } 
            else 
                    $main_content .= 'Downloads... plain text.'; 