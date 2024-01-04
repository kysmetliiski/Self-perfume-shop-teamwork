<?php 

class perfumes extends Controller
{
    function __construct()
    {
        
        parent::__construct();
    }
    public function index()
    {
        $id = $_GET['id'];

        $product = $this->model->fetch("SELECT * FROM perfumes WHERE id = ?", array( $id ) );

        $this->view->render("perfumes.html", array( 
            'product' => $product, 
        ) );
    }
}


?> 