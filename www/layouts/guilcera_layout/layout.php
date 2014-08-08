<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="distribution" content="Global" />
		<meta name="author" content="peonso" />
		<meta name="robots" content="index,follow" />
		<meta name="description" content="Site Description." />
		<meta name="keywords" content="ots, open tibia server, guilcera, forgotten server" />
	<title><?PHP echo $config['server']['serverName'];?> / OpenTibia Server</title>
<link rel="stylesheet" type="text/css" href="<?PHP echo $layout_name; ?>/main.css" />
<link href="<?PHP echo $layout_name; ?>/guilcera.ico" rel="shortcut icon" />
</head>
<body>

<div class="pds">
	<div class="pds1"> 
	<div class="t1"><img src="<?PHP echo $layout_name; ?>/img/logo2.png" alt="" /></div>
	<div class="zl"><img src="<?PHP echo $layout_name; ?>/img/head.png" alt="" /></div>
	<div class="s">
		<div class="s1">
			<div class="left">
				<div class="mng2" align="center" style="font-family: martel; font-size:16px">Server Status</div>
				<div class="mngt" align="center">
					<div>
						<b>Status:  
						<?PHP
							if($config['status']['serverStatus_online'] == 1)
								echo '<font color="green"> Online</font><br>'.$config['status']['serverStatus_players'].' Players Online<br/>';
							else
								echo '<font color="#9873DA"> Offline</font>';
						?></b>
					</div>
					<br>
					</div>

				<div class="mng" style="font-family: martel; font-size:17px">Home</div>
        		<ul class="m1"> 
                	<li><a href="?subtopic=latestnews">&nbsp;&raquo; News</a></li>
                    <li><a href="?subtopic=archive">&nbsp;&raquo; News archive</a></li>
					<li><a href="?subtopic=download">&nbsp;&raquo; Downloads</a></li>
					<li><a href="?subtopic=forum">&nbsp;&raquo; Forum</a></li>
				</ul>

				<div class="mng" style="font-family: martel; font-size:17px">Account</div>
				<ul class="m1">
					<li><a href="?subtopic=accountmanagement">&nbsp;&raquo; Account Management</a></li>
					<li><a href="?subtopic=createaccount">&nbsp;&raquo; Create Account</a></li>
					<li><a href="?subtopic=lostaccount">&nbsp;&raquo; Lost Account?</a></li>
				</ul>

				<div class="mng" style="font-family: martel; font-size:17px">Community</div>
				<ul class="m1">
					<li><a href="?subtopic=characters">&nbsp;&raquo; Characters</a></li>
					<li><a href="?subtopic=whoisonline">&nbsp;&raquo; Players Online</a></li>
					<li><a href="?subtopic=highscores">&nbsp;&raquo; Highscores</a></li>
					<li><a href="?subtopic=houses">&nbsp;&raquo; Houses</a></li>
					<li><a href="?subtopic=guilds">&nbsp;&raquo; Guilds</a></li>
				</ul>
			
				<div class="mng" style="font-family: martel; font-size:17px">Library</div>
				<ul class="m1"> 
					<li><a href="?subtopic=map">&nbsp;&raquo; Map</a></li>
					<li><a href="?subtopic=monsters">&nbsp;&raquo; Monsters</a></li>
					<li><a href="?subtopic=spells">&nbsp;&raquo; Spells</a></li>
					<li><a href="?subtopic=experiencetable">&nbsp;&raquo; Experience</a></li>
					<li><a href="?subtopic=quests">&nbsp;&raquo; Quests</a></li>
				</ul>
				
				<div class="mng" style="font-family: martel; font-size:17px">Information</div>
				<ul class="m1"> 
					<li><a href="?subtopic=serverinfo">&nbsp;&raquo; Server Info</a></li>
					<li><a href="?subtopic=team">&nbsp;&raquo; Staff</a></li>
					<li><a href="?subtopic=guilcera">&nbsp;&raquo; Guilcera F.A.Q.</a></li>
				</ul>
			</div> 
			<div class="center" >
				<?PHP echo $main_content; ?> 
				<div id="vt_header">
					<div class="tekst">
					</div>
				</div>
			</div>
			<div style="clear:both;"></div>
		</div>
	</div>

	<div id="vt_footer">
		<div><img src="<?PHP echo $layout_name; ?>/img/foot.png"></div>
			<div class="column second">
			<center><p>Guilcera was developed by Peonso.<br>Tibia copyrighted by CipSoft GmbH.<br></p></center>
			</div>
		</div>
	</div>
</div>				
</body>
</html>