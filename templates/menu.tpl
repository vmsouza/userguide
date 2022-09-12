<div class="mainmenu-area col-lg-12 bg-white">
	<div class="col-lg-12">
		<div class="row navbar">
			<div class="col-lg-12">
				<nav class="navbar navbar-expand-lg navbar-light align-center">
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main_menu" aria-controls="main_menu" aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>

					<a class="menu-title" href="index.php" style="text-decoration: none">
						<h1 class="menu-title">{$smarty.const.APP_NAME}</h1>
					</a>
					<h4 class="menu-subtitle">{$smarty.const.APP_DESCRIPTION}</h4>
					<div class="collapse navbar-collapse fixed-height" id="main_menu">
						<ul class="navbar-nav ml-auto">
							<li class="nav-item">
								<a class="nav-link" href="index.php">User guide</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="{$smarty.const.APP_WEBSITE}">Website</a>
							</li>
							<li class="nav-item">
								<a class="nav-link " href="{$smarty.const.APP_CONTACT_URL}">Contact</a>
							</li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
	</div>
</div>

<div class="manual-body">
{assign var=include value=0}
{include file="{$smarty.const.FOLDER_ROOT}/templates/breadcrumb.tpl"}
{if $include==1}
{include file="{$smarty.const.FOLDER_ROOT}/templates/parentmenu.tpl"}
{/if}

<div class="{if !isset($parentmenu)}blockarea{else}blockarea2{/if}">

{if isset($parentmenu)}
<h1>{$pgtitle}</h1>
{/if}
