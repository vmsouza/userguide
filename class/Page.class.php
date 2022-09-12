<?php
class Page {

    public $smarty;
    public $debugging=false;
    public $page;
    public $pgtitle;

    protected $templatedir=FOLDER_ROOT."/templates";
    protected $template;
    protected $breadcrumb;

    public function __construct($template = "", $pgtitle="") {

        $this->smarty=new Smarty;

        if ($template=="")
            $template="default.tpl";

        $this->page = $template;
        $this->pgtitle = $pgtitle;
        $template="{$this->templatedir}/{$template}";
        $this->template = $template;
    }

    public function assign($varname, $value) {
        $this->smarty->assign($varname, $value);
    }

    public function addmenu($menuitems) {
        $this->assign("menuitems",$menuitems);
    }

    public function show() {

        if (defined("APP_NAME"))          $this->assign("title", APP_NAME);

        $this->smarty->debugging = $this->debugging;
        $this->assign("pgtitle",$this->pgtitle);
        $this->assign("breadcrumb", $this->breadcrumb);

        $this->smarty->display($this->template);

    }

    public function addbreadcrumb($name,$page) {
        if (!is_array($this->breadcrumb))
            $this->breadcrumb=array();
        $this->breadcrumb[]=array("name"=>$name,"page"=>$page);
    }

}

?>
