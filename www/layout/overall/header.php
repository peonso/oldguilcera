<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<?php
$time = microtime();
$time = explode(' ', $time);
$time = $time[1] + $time[0];
$start = $time;
?>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="distribution" content="Global" />
		<meta name="author" content="peonso" />
		<meta name="robots" content="index,follow" />
		<meta name="description" content="Site Description." />
		<meta name="keywords" content="ots, open tibia server, guilcera, forgotten server, opentibia, othire, tibia" />
	<title><?PHP echo $config['site_title'];?> - <?PHP echo $config['site_title_context'];?></title>
<link rel="stylesheet" type="text/css" href="layout/main.css" />
<link href="layout/favicon.ico" rel="shortcut icon" />
</head>
<body>
<div class="m_position"> 
	<img src="layout/images/logo.png" alt="<?PHP echo $config['site_title'];?> logo"/>
	<img src="layout/images/head.png"/>
		<div class="m_center">
			<?php include('layout/left_menu.php'); ?>
			<div class="m_content">
