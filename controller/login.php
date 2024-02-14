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




 