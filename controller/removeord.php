<?php 
class removeord extends controller{

    function __construct(){
        parent::__construct();
    }

    public function index(){     

        $id = $_GET['id'];

        $order = $this->model->query("delete FROM perfume_orders WHERE id = ?", array($id));


        header("location:index.php?controller=checkord");
    }
}
?> 