<?php 

class Login extends Controller
{

    function __construct()
    {
        
        parent::__construct();
    }

    public function index()
    {

      
      $error = "";

      if ( isset( $_POST['submit'] ) ) {
        $email = $_POST['email'];
        $password = $_POST['password'];
		
                              if (!$email){
                                    $err= "<b style='color:red;'>Грешни данни!</b><br>";
                              $error = true;
                              }

                              if (!$password){
                                    $err= "<b style='color:red;'>Грешни данни!</b><br>";
                                    $error = true;
                              }
            else{
                  header("location:index.php?controller=mproduct");
            }
        $user = $this->model->fetch("SELECT * FROM registration WHERE email = ? AND password = ?",[ $email, $password ]);

        
                                        }                              
        $params = array
              (
                    "err" => $error 
              );
        $this->view->render("login.html", $params);
      }
}


?> 




 