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
        
// стартиране на сесия ( ще трябва по-долу )
                session_start();

              



      if ( isset( $_POST['submit'] ) ) {

        // записване на данните от полетата в променливи за по-удобно

        $email = $_POST['email'];
        $password = $_POST['password'];
        
        
        // зареждане от базата на потребител с въведените от формата име и парола
        
     
        
        $user = $this->model->fetch("SELECT * FROM registration WHERE email = ? AND password = ?",[ $email, $password ]);
    
                //$isroot =$user->authorise('schedule.php');
                
                                        }
 

                                      
                                        $params = array
                                              (
                                                    "err" => $error 
                                              );
                          
                             
                                        $this->view->render("login.html", $params);
    }
}


?> 




 