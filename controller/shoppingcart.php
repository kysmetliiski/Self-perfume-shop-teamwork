<?php 

class shoppingcart extends controller{

    function __construct(){

        parent::__construct();
    }
        public function index(){


       @     $user =$_SESSION['user']['id'];
            $string = '';
        
            foreach($_SESSION['cart'] as $p)
            {
            
                if ( $string )
                    $string .= ',';

                $string .= $p;
            }

//         print_r($_SESSION);

     @       $user =$_SESSION['user']['id'];


        $product = $this->model->fetchAll  ("SELECT * FROM perfumes WHERE id IN ( $string ) ", array() );

        $sum = $this->model->fetch  ("SELECT sum(price) as `sum` FROM perfumes WHERE id IN ( $string ) ", array() );

        @$adress = $_POST['adress'];

        if(isset($_POST['submit']))
        {
        $this->model->datasave("INSERT INTO perfume_orders
         (adress, perfume_id, user) VALUES(?,?,?)" ,[$adress, $string, $user]); 
        $this->model->datasave("UPDATE perfumes SET available = available -1 WHERE id IN ( $string ) ", array() );
        header("location:index.php?controller=succesfulord");
        } 
 

        $this->view->render("shoppingcart.html", array(
            'product' => $product, 
            'cart' => $_SESSION['cart'],
            'sum' => $sum
        )); 

    }
}
?>