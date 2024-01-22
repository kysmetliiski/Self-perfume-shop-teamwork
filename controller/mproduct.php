<?php 

class mproduct extends Controller
{
    function __construct()
    {
        
        parent::__construct();
    }
    public function index()
    {



       $data = $this->model->fetchAll("SELECT * FROM perfumes", array());

        $this->view->render("multiple-product.html", array(
            "data" => $data,
            ) );
    }
}


?> 