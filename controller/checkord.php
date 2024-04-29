<?php 
class checkord extends controller{

    function __construct(){
        parent::__construct();
    }

    public function index(){  

      @$checkuser = $_SESSION['user']['id'];

    
     $order = $this->model->fetch("SELECT * FROM perfume_orders", array());

     if($order){

     $string = $order['perfume_id'];

     $product = $this->model->fetchAll  ("SELECT * FROM perfumes WHERE id IN ( $string ) ", array() );

     $sum = $this->model->fetch  ("SELECT sum(price) as `sum` FROM perfumes WHERE id IN ( $string ) ", array() );

     $data  =  $this->model->fetch("SELECT * FROM perfumes.perfume_orders where user = ?", array($checkuser) );

    
     } else {
        $data = array();
        $product = array();
        $sum = array();
     }

    $this->view->render("checkord.html", array(
    "data" => $data,
    "product" => $product,
    "sum" => $sum,
    "order" => $order));    
    }
}
?> 