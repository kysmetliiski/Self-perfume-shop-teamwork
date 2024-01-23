<?php 

class q1 extends Controller
{
    function __construct()
    {
        
        parent::__construct();
    }
    public function index()
    {
        

        $this->view->render("q1.html");
    }

}
?> 