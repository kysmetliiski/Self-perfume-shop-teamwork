<?php 

class neword extends controller{

    function __construct(){
        
        parent::__construct();
    }

    public function index(){

        $id = $_GET['id'];

        

        foreach($_SESSION['cart'] as $key=>$value ){
            if(
                $id == $value
            )
            unset($_SESSION['cart'][$key]);
        }
       
        header("location:index.php?controller=shoppingcart");

    }
}
?>