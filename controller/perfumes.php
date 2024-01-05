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
        $comm = $this->model->fetch("SELECT * FROM perfume_comments where id = ?", array( $id ) );

        $this->view->render("perfumes.html", array( 
            'product' => $product, 
            'comm' => $comm
        ) );

        if ( isset( $_POST['submit'] ) ) {

        $comment = $_POST['comment'];

        $this->model->datasave("INSERT INTO perfume_comments (perfume_id, comment) VALUES (?,?)",[$id, $comment]);


        $data = $this->model->fetchAll("
        SELECT p.name
        FROM perfumes p
        LEFT JOIN perfume_comments pc ON pc.perfume_id = p.id
        WHERE p.id= ?
    ", [$id]);

                                        }
    }
}


?> 