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
    
            $this->model->datasave("INSERT INTO perfume_orders (adress) VALUES (?)",[$adress]);
    
            $data= $this->model->fetchAll("SELECT * FROM perfumes WHERE id = $id" , array( $id ) );

        }

        $this->view->render("orderpage.html", array(
            'data' => $data
        ));
    }
}


?> 