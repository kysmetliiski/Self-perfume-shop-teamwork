<?php 

class faqpage extends Controller
{
    function __construct()
    {
        
        parent::__construct();
    }
    public function index()
    {
        

        $this->view->render("faqpage.html");
    }

}
?> 