<?php 

class sections extends Controller
{
    function __construct()
    {
        
        parent::__construct();
    }
    public function index()
    {
        

        $this->view->render("sections.html");
    }
}


?> 