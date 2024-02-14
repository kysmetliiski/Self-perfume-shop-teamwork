<?php 

class succesfulord extends controller{

    function __construct(){

        parent::__construct();
    }

    public function index(){
        $this->view->render("succesfulord.html");
    }
}
?>