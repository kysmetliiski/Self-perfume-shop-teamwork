<?php 
class orderconf extends Controller
{
    function __construct()
    {
        parent::__construct();
    }
    public function index()
    {
        $this->view->render("orderconf.html");
    }
}

?>