{if isset($breadcrumb) and is_array($breadcrumb) and count($breadcrumb)>0}
<div class="text-white">
	<div class="horizontal">
		<!--
		<table width=100%>
			<tr>
				<td>
				-->
					{if isset($next)}<div class="next"><a href="index.php?p={$next.page}">{$next.name} &raquo;</a></div>{/if}
					{if isset($prev)}<div class="prev"><a href="index.php?p={$prev.page}">&laquo; {$prev.name}</a></div>{/if}
					<ul class="horizontal" id="horizontal">
						<li>Where you are:</li>
						<li>
							<ul class="breadcrumb" id="breadcrumb">
								{foreach $breadcrumb as $idx => $bcdata}
								<li><a href='index.php?p={$bcdata.page}'>{$bcdata.name}</a></li>
								{/foreach}
							</ul>
						</li>
					</ul>
					<!--
				</td>
				<td width=1 nowrap>
					<div class="navbar navbar-expand-lg navbar-light align-left col-md-12" style="z-index: -1">
						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#parent_menu" aria-controls="parent_menu" aria-expanded="false" aria-label="Toggle navigation">
							<span class="navbar-toggler-icon bg-blue"></span>
						</button>
					</div>
				</td>
			</tr>
		</table>
	-->
	  </div>
</div>
{/if}
