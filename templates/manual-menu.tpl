{foreach $menu as $mname => $mdata}
<ul class="menu">
<li><a href="index.php?p={$mdata.page}">{$mdata.name}</a>
{if isset($mdata.sub)}
<ul class="menu">
	{foreach $mdata.sub as $mname2 => $mdata2}
	<li><a href="index.php?p={$mdata2.page}">{$mdata2.name}</a></li>
	{/foreach}
</ul>
{/if}
</li>
</ul>
{/foreach}
