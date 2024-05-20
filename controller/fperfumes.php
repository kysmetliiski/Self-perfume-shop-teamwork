<?php 

class fperfumes extends Controller
{
    function __construct()
    {
        
        parent::__construct();
    } 
    public function index()
    {
        $id = $_GET['id'];

        if ( isset( $_POST['submit'] ) ) {

            $comment = $_POST['comment'];
    
            $this->model->datasave("INSERT INTO perfume_comments (perfume_id, comment) VALUES (?,?)",[$id, $comment]);
    
        }
                                

        $product = $this->model->fetch("SELECT * FROM perfumes WHERE id = ?", array( $id ) );
        $comm = $this->model->fetch("SELECT * FROM perfume_comments where id = ?", array( $id ) );
        $dataa = $this->model->fetchAll("SELECT * FROM perfume_comments where perfume_id =$id", array());
        $photos = $this->model->fetchAll("SELECT * FROM spview WHERE perfume_id = $id", array());
        $this->view->render("fperfumes.html", array( 
            'product' => $product, 
            'comm' => $comm,
            'dataa' => $dataa,
            'photos' => $photos,
           
        ) );

    }
}


?> 