<?php 

class Aboutuspage extends Controller
{
    function __construct()
    {
        
        parent::__construct();
    }
    public function index()
    {
        

        $this->view->render("aboutuspage.html");
    }
}


?> 
