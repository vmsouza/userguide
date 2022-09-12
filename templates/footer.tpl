<!--menu--->
{if isset($menu) and is_array($menu)}
<section class="menu">
	{include file="{$smarty.const.FOLDER_ROOT}/templates/manual-menu.tpl"}
</section>
{/if}
<!--menu--->
<!--submenu--->
{if isset($submenu) and is_array($submenu)}
<section class="menu">
<ul>
{foreach $submenu as $mname => $mdata}
<li><a href="index.php?p={$mdata.page}">{$mdata.name}</a></li>
{/foreach}
</ul>
</section>
{/if}
<!--submenu--->
<br>
</div>
{if isset($parentmenu)}
</div>
</div>
</section>
{/if}
<footer class="footer" id="footer">
<div class="copy-bg bg-page text-light-grey">
	<div class="row">
		<div class="col-lg-12">
			<div class="menu-footer">
				<ul>
					<li><a href='index.php?p=copyright'>Copyright © 2022 {$smarty.const.APP_SITE_NAME}</a></li>
					<li><a href='{$smarty.const.APP_WEBSITE}'>{$smarty.const.APP_WEBSITE}</a></li>
					<li><a href='index.php?p=privacy'>Privacy Policy</a></li>
				</ul>
			</div>
		</div>
		<!--
		<div class="col-lg-3">
		<ul class="social-links">
		<li>
		<a href="#" data-toggle="tooltip" data-placement="top" title="Linkedin">
		<i class="fab fa-linkedin-in"></i>
		</a>
		</li>
		</ul>
		</div>
		-->
	</div>
</div>
</footer>
<div class="bottomtotop">
	<i class="fas fa-chevron-right bg-orange"></i>
</div>
</div>
<script src="assets/js/jquery.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/plugin.js"></script>
<script src="assets/js/main.js"></script>
</body>
</html>
