<?php

$menu=new Menu();

$menu->new("About this userguide","about" );
$menu->new2("Syntax","syntax" );
$menu->new2("Privacy Policy Sample Page","privacy" );
$menu->new2("Disclaimer Sample Page","disclaimer" );
$menu->new2("Copyright Sample Page","copyright" );

$menu->new("Topic 1","topic1" );
$menu->new2("Introduction Sample Page","topic1.intro");
$menu->new2("Download Sample Page","topic1.download" );
$menu->new2("Updates Sample Page","topic1.updates" );

$menu->new("Topic 2","topic2" );
$menu->new2("Introduction Sample Page",	"topic2.intro" );
$menu->new2("Submenu Sample Page", "topic2.submenu" );
$menu->new3("Item 1 Sample page", "topic2.item1" );
$menu->new3("Item 2 Sample Page", "topic2.item2" );

$menus=$menu->get();

?>
