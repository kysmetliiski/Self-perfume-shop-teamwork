<?php 

class mproductf extends Controller
{
    function __construct()
    {
        
        parent::__construct();
    }
    public function index()
    {
        $data = $this->model->fetchAll("SELECT * FROM perfumes WHERE type='f'", array());

        $this->view->render("multiple-product-female.html", array(
            "data" => $data,
        ));
    }
}


?> 