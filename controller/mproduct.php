<?php 

class mproduct extends Controller
{
    function __construct()
    {
        
        parent::__construct();
    }
    public function index()
    {
        

        $this->view->render("multiple-product.html");
    }
}


?> 