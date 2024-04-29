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

      if ( isset( $_POST['submit'] ) ) 
            {
                  $email = $_POST['email'];
                  $password = $_POST['password'];
		
      $user = $this->model->fetch("SELECT * FROM registration WHERE email = ? AND password = ?",[ $email, $password ]);
                       
                        if ( $user ) 
                        {
                   $_SESSION['user'] = $user;

                  header("location: index.php?controller=mproduct");
                  
                  exit; 
                        }

                        else{
                              $error= "<b style='color:red;'>Грешни данни!</b><br>";
                        }

                       

        
                                        }                              
                  $params = array
                        (
                              "err" => $error 
                        );

        $this->view->render("login.html", @$params);
      }
}


?> 




 