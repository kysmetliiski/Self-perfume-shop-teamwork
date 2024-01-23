<?php 

class q2 extends Controller
{
    function __construct()
    {
        
        parent::__construct();
    }
    public function index()
    {
        

        $this->view->render("q2.html");
    }

}
?> 