<?php

require_once("config.php");

define("FOLDER_ROOT", substr($__f = str_replace("\\", "/", (__FILE__)), 0, strrpos($__f, "/")));
define("SMARTY_VERSION", "3.1.38");
define("SMARTY_DIR" , FOLDER_ROOT."/smarty/libs/");

define("lastchange",APP_LAST_CHANGE);
define("swversion",APP_VERSION);
define("smarty_website","https://www.smarty.net");
define("smarty_docs","https://www.smarty.net/docs/en/");

$defaultname=APP_NAME;

$thispage = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[PHP_SELF]";
define("thispage",$thispage);

if (isset($_GET)) {
    foreach($_GET as $field => $value) {
        $$field=$value;
    }
}

spl_autoload_register("sysbase_autoload");

function sysbase_autoload($classname){
     $file = FOLDER_ROOT."/class/$classname.class.php";
     if (file_exists($file)) {
          require_once($file);
     } elseif (file_exists(SMARTY_DIR."/Smarty.class.php")) {
          require_once(SMARTY_DIR."/Smarty.class.php");
     }
}

function breadcrumb2($breadcrumbs2) {
	$content=
		"<div class='row breadcrumb2'>".
		"<div id='breadcrumb2' class='clearfix'>".
		"<div>".
		"<ul>".
		"Feature accessible through menu: ";
	$abreadcrumbs2=explode(",",$breadcrumbs2);
	foreach($abreadcrumbs2 as $bidx => $bname)
		$content.="<li>{$bname}</li>";
	$content.=
			"</ul>".
			"</div>".
		  	"</div>".
			"</div>";
	return $content;
}

require_once("menus.php");

if (!isset($p))
	$p="index";

if ($p=="index") {
	$p=new Page("index.tpl",$defaultname);
	$p->assign("menu",$menus);
	$p->show();
} else {
	foreach($menus as $name => $mdata) {
		if (isset($mdata['page']) and $mdata['page']==$p) {
			$template="{$p}.tpl";
			if (file_exists("templates/{$template}")) {
				$p=new Page($template,$mdata['name']);
				$p->assign("referer",$_SERVER["HTTP_REFERER"]);
				if (isset($mdata['sub']) and is_array($mdata['sub']))
					$p->assign("submenu",$mdata['sub']);
				$parentmenu=$menus;
				$p->addbreadcrumb($defaultname,"index");
				$p->addbreadcrumb($mdata['name'],$mdata['page']);
				$p->assign("parentmenu",$parentmenu);
				$p->assign("parentname",$defaultname);
				$p->assign("parentpage","index");
				$p->show();
				exit;
			} else {
				echo "$template not found!";
				exit;
			}
		} else {
			foreach($mdata['sub'] as $name2 => $page2) {
				if ($page2['page']==$p) {
					$template="{$p}.tpl";
					if (file_exists("templates/{$template}")) {
						$p=new Page($template,$page2['name']);
						$p->addbreadcrumb($defaultname,"index");
						$p->addbreadcrumb($mdata['name'],$mdata['page']);
						$p->addbreadcrumb($page2['name'],$page2['page']);
						if (isset($page2['sub']) and is_array($page2['sub']))
							$p->assign("submenu",$page2['sub']);
						$p->assign("parentname",$mdata['name']);
						$p->assign("parentpage",$mdata['page']);
						$p->assign('parentmenu',$mdata['sub']);
						$p->show();
						exit;
					}
				} else if (isset($page2['sub']) and is_array($page2['sub'])) {
					foreach($page2['sub'] as $name3 => $page3) {
						if ($page3['page']==$p) {
							$template="{$p}.tpl";
							if (file_exists("templates/{$template}")) {
								$p=new Page($template,$page3['name']);
								$p->addbreadcrumb($defaultname,"index");
								$p->addbreadcrumb($mdata['name'],$mdata['page']);
								$p->addbreadcrumb($page2['name'],$page2['page']);
								$p->addbreadcrumb($page3['name'],$page3['page']);
								$p->assign("parentname",$page2['name']);
								$p->assign("parentpage",$page2['page']);
								$p->assign('parentmenu',$page2['sub']);
								$p->show();
								exit;
							}
						}
					}
				}
			}
		}
	}
	$p=new Page("notfound.tpl","Page not found");
	$p->addbreadcrumb($defaultname,"index");
	$p->show();
	exit;
}


?>
