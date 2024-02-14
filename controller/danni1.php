<?php 

class Danni1 extends Controller
{
    function __construct()
    {
        
        parent::__construct();
    }
    public function index()
    {

        
        // if( isset( $_SESSION['user'] ) ){
        //     header("location: scart.html");
        // }
        // else(){
        //     header("location: login.html");
        // }


        $this->view->render("danni1.html");
    }

}
?> 