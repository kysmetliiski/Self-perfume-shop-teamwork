<?php 

class shoppingcart extends controller{

    function __construct(){

        parent::__construct();
    }

    public function index(){


        $string = '';
        foreach($_SESSION['cart'] as $p){
            
            if ( $string )
                $string .= ',';

            $string .= $p;
        }
        

        $product = $this->model->fetchAll  ("SELECT * FROM perfumes WHERE id IN ( $string ) ", array() );
        
        $adress = $_POST['adress'];

     if(isset($_POST['submit'])){

        $this->model->datasave("INSERT INTO perfume_orders (adress, perfume_id) VALUES(?,?)" ,[$adress, $string]); 
     }


        $this->view->render("shoppingcart.html", array(
            'product' => $product, 
            'cart' => $_SESSION['cart']
        ));
    }
}
?>