<?php 
require_once 'engine/init.php';
// To direct users here, add: protect_page(); Here before loading header.
include 'layout/overall/header.php'; 
?>
<img src="layout/images/titles/t_error.png"/><p>
<?php
if (user_logged_in() === true) {
?>

<h1>STOP!</h1>
<p>Ummh... Why are you sniffing around here?</p>

<?php
} else {
?>

<p><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sorry, you need to be logged in to do that!</b></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Please <a href='register.php'>register</a> or <a href='sub.php?page=login'>log in</a>.</p>

<?php 
}
include 'layout/overall/footer.php'; ?>