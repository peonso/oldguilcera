<img src="layout/images/titles/t_news.png"/>
<table>
<?php
$cache = new Cache('engine/cache/news');
if ($cache->hasExpired()) {
	$news = fetchAllNews();
	
	$cache->setContent($news);
	$cache->save();
} else {
	$news = $cache->load();
}

// Design and present the list
if ($news) {
	function TransformToBBCode($string) {
		$tags = array(
			'[center]{$1}[/center]' => '<center>$1</center>',
			'[b]{$1}[/b]' => '<b>$1</b>',
			'[size={$1}]{$2}[/size]' => '<font size="$1">$2</font>',
			'[img]{$1}[/img]'    => '<a href="$1" target="_BLANK"><img src="$1" alt="image" style="width: 100%"></a>',
			'[link]{$1}[/link]'    => '<a href="$1">$1</a>',
			'[link={$1}]{$2}[/link]'   => '<a href="$1" target="_BLANK">$2</a>',
			'[color={$1}]{$2}[/color]' => '<font color="$1">$2</font>',
			'[*]{$1}[/*]' => '<li>$1</li>',
		);

		foreach ($tags as $tag => $value) {
			$code = preg_replace('/placeholder([0-9]+)/', '(.*?)', preg_quote(preg_replace('/\{\$([0-9]+)\}/', 'placeholder$1', $tag), '/'));
			$string = preg_replace('/'.$code.'/i', $value, $string);
		}

		return $string;
	}
	echo '<div id="news">';
	foreach ($news as $n) {
		?>
<tr><td class="znewsdate"><?php echo date('l, d M Y', $n['date']); ?></td></tr>
<tr><td class="zheadline">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><?php echo TransformToBBCode($n['title']); ?></td></tr>
<tr><td class="znewsbody" colspan="2"><?php echo TransformToBBCode(nl2br($n['text'])); ?></td></tr>
<tr><td class="znewsdate">by <a href="characterprofile.php?name=<?php echo $n['name']; ?>"><?php echo $n['name']; ?></a></td><td class="znewsdate"></td></tr>
<tr><td class="znewsdate" style="border-bottom:1px solid #000000;" colspan="2"></td></tr>
<tr><td class="znewsdate" colspan="2"></td></tr>
		<?php
	}
	echo '</div>';
}
?>
</table>