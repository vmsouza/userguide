<?php

class Menu {

private $menu=false;
private $container=array();

private $level1, $level2, $level3;

public function __construct() {

}

public function add(container $container) {
	$this->container[]=$container;
}

public function new($name,$page) {
	$this->level1=$page;
	$this->menu[$page]['name']=$name;
	$this->menu[$page]['page']=$page;
}

public function new2($name,$page) {
	$level1=$this->level1;
	$this->level2=$page;
	$this->menu[$level1]['sub'][$page]['name']=$name;
	$this->menu[$level1]['sub'][$page]['page']=$page;
}

public function new3($name,$page) {
	$level1=$this->level1;
	$level2=$this->level2;
	$this->level3=$page;
	$this->menu[$level1]['sub'][$level2]['sub'][$page]['name']=$name;
	$this->menu[$level1]['sub'][$level2]['sub'][$page]['page']=$page;
}

public function new4($name,$page) {
	$level1=$this->level1;
	$level2=$this->level2;
	$level3=$this->level3;
	$this->menu[$level1]['sub'][$level2]['sub'][$level3]['sub'][$page]['name']=$name;
	$this->menu[$level1]['sub'][$level2]['sub'][$level3]['sub'][$page]['page']=$page;
}

public function get() {
	return $this->menu;
}

}

?>
