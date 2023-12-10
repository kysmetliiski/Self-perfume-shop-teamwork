<?php 

class perfumes extends Controller
{
    function __construct()
    {
        
        parent::__construct();
    }
    public function index()
    {
        

        $this->view->render("perfumes.html");
    }
}


?> 