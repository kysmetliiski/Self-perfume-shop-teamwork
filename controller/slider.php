<?php 

class Slider extends Controller
{
    function __construct()
    {
        
        parent::__construct();
    }
    public function index()
    {
        

        $this->view->render("slider.html");
    }
}


?> 