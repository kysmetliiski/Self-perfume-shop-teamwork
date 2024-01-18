<?php 

class misho extends Controller
{
    function __construct()
    {
        
        parent::__construct();
    }
    public function index()
    {
        

        $this->view->render("misho.html");
    }
}


?> 