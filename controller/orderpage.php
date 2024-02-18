<?php 

class orderpage extends Controller
{
    function __construct()
    {
        
        parent::__construct();
    }
    public function index()
    {
        $id = $_GET['id'];
        
        if ( isset( $_POST['submit'] ) ) {

            $adress = $_POST['adress'];
    
            $this->model->datasave("INSERT INTO perfume_orders (adress, perfume_id) VALUES (?, ?)",[$adress,$id ]);
        }

        $product = $this->model->fetch  ("SELECT * FROM perfumes WHERE id = ?", array( $id ) );
        
        $this->view->render("orderpage.html", array(
            'product' => $product,
            'cart' => $_SESSION['cart']
        ));
    }
}


?>  