	<div class="inner" id="login">
		&nbsp;&nbsp;&nbsp;&raquo; Login
		<form action="login.php" method="post">
				&nbsp;<i style="font-size:11px">Account number:</i> <br>
			<input type="text" name="username">
				&nbsp;<i style="font-size:11px">Password:</i> <br>
			<input type="password" name="password">
			<br><br><center><input type="submit" value="Log in"></center>
			<?php
				/* Form file */
				Token::create();
			?>
		</form>
	</div>
	<ul class="inner">
		<li><a href='register.php'>&nbsp;&raquo; Create Account</a></li>
		<li><a href='sub.php?page=recover'>&nbsp;&raquo; Lost Account</a></li>
