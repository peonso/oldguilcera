			<div class="left">
				<div class="m_status" align="center">Server Status</div>
				<div class="m_online" align="center">
					<b>Status:  
						<?php
							$status = true;
							if ($config['status']['status_check']) {
								@$sock = fsockopen ($config['status']['status_ip'], $config['status']['status_port'], $errno, $errstr, 1);
								if(!$sock) {
									echo '<font color="#9873DA"> Offline</font>';
									$status = false;
								}
								else {
									$info = chr(6).chr(0).chr(255).chr(255).'info';
									fwrite($sock, $info);
									$data='';
									while (!feof($sock))$data .= fgets($sock, 1024);
									fclose($sock);
									echo '<font color="#9873DA"> Online</font><br><a href="sub.php?page=whoisonline">';
									echo user_count_online();
									echo ' players online<br/></a>';
								}
							}
						?></b>
					<br>
				</div>

				<div class="sidebar">Home</div>
        		<ul class="inner"> 
                	<li><a href="index.php">&nbsp;&raquo; News</a></li>
                    <li><a href="downloads.php">&nbsp;&raquo; Downloads</a></li>
					<li><a href="forum.php">&nbsp;&raquo; Forum</a></li>
				</ul>

				<div class="sidebar">Account</div>
					<?php
						if (user_logged_in() === true) {
							include 'layout/widgets/loggedin.php'; 
						} else {
							include 'layout/widgets/login.php'; 
						}
						if (user_logged_in() && is_admin($user_data)) include 'layout/widgets/Wadmin.php'; 
					?>
				</ul>

				<div class="sidebar">Community</div>
				<ul class="inner">
					<li><a href="sub.php?page=charactersearch">&nbsp;&raquo; Characters</a></li>
					<li><a href="sub.php?page=whoisonline">&nbsp;&raquo; Players Online</a></li>
					<li><a href="highscores.php">&nbsp;&raquo; Highscores</a></li>
					<li><a href="houses.php">&nbsp;&raquo; Houses</a></li>
					<li><a href="guilds.php">&nbsp;&raquo; Guilds</a></li>
				</ul>
			
				<div class="sidebar">Library</div>
				<ul class="inner"> 
					<li><a href="sub.php?page=map">&nbsp;&raquo; Map</a></li>
					<li><a href="sub.php?page=monsters">&nbsp;&raquo; Monsters</a></li>
					<li><a href="spells.php">&nbsp;&raquo; Spells</a></li>
					<li><a href="sub.php?page=experiencetable">&nbsp;&raquo; Experience</a></li>
					<li><a href="sub.php?page=quests">&nbsp;&raquo; Quests</a></li>
				</ul>
				
				<div class="sidebar">Information</div>
				<ul class="inner"> 
					<li><a href="serverinfo.php">&nbsp;&raquo; Server Info</a></li>
					<li><a href="support.php">&nbsp;&raquo; Staff</a></li>
				</ul>
			</div> 