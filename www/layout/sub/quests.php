<img src="layout/images/titles/t_quests.png"/><p>
	<table> 
		<tr>
			<td>Quest</td><td width="15%">Missions</td><td>Quest</td><td width="15%">Missions</td>
		</tr>
<?php
	$missioncount = 1;
	$oddeven = 1;
	foreach ($config['Quests'] as $cquest) {
		if ($cquest[3] == 0) {
		$missioncount = $missioncount + 1;
		}
		if ($cquest[3] == 1) {
			if ($oddeven == 1) {
			echo '<tr><td>'. $cquest[2] .'</td><td>'. $missioncount .'</td>';
			$oddeven = 0;
			} else {
			echo '<td>'. $cquest[2] .'</td><td>'. $missioncount .'</td></tr>';
			$oddeven = 1;
			}
			$missioncount = 1;
		}
	}
	if ($oddeven == 0) {
	echo '<td></td><td></td></tr>';
	}
?>
	</table> 