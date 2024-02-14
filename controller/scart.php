<?php 

class scart extends controller{

    function __construct(){

        parent::__construct();
    }

    public function index(){
        
        $id = $_GET['id'];

        if( !isset($_SESSION['cart']) ) { 

            $_SESSION['cart'] = array();
        }
        
        $_SESSION['cart'][] = $id;


            $this->view->render("danni1.html", array(
                'cart' => $_SESSION['cart']
            ));
    }
}
?>