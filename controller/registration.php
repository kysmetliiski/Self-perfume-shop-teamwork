<?php 

class Registration extends Controller
{
	function __construct()
    {
        
        parent::__construct();
    }
    public function index()
    {
		$err = "";
		
		$servername = "127.0.0.1";
		$username = "root";
		$password = "veselin7";
		$database = "perfumes";

		try {
			$connection = new PDO("mysql:host=$servername;dbname=$database", $username, $password);
			$connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			
		} catch(PDOException $e) {
			echo "Connection failed: " . $e->getMessage();
		}

		if ( isset( $_POST['submit'] ) ) {

			// записване на данните от полетата в променливи за по-удобно

			$name = $_POST['name'];
			$lname = $_POST['lname'];
			$email = $_POST['email'];
			$password = $_POST['password'];

			if (empty($name)) {
				echo "<b style='color:red;'>Внимание! Полето име е задължително!</br>";
			}
			
			if (empty($lname)) {
				echo "<b style='color:red;'>Внимание! Полето фамилия е задължително!</br>";
			}
			
			if (empty($email)) {
				echo "<b style='color:red;'>Внимание! Полето имейл е задължително!</br>";
			} elseif (!preg_match('/@/', $email) || !preg_match('/[A-Za-z]/',$email)) {
				echo "<b style='color:red;'>Имейлът задължително трябва да съдържа '@' и да бъде на латиница,за да бъде приет като валиден.</br> ";
			}
			
			if (empty($password)) {
				echo "<b style='color:red;'>Внимание! Полето парола е задължително!</br>";
			} elseif (strlen($password)< 6 ) {
				echo "<b style='color:red;'>Паролата трябва да бъде не по-малко от 6 символа</b>";
			}
				elseif (!preg_match('/[A-Za-z0-9А-Яа-я]/u', $password) || !preg_match('/[0-9]/', $password)) {
					echo "<b style='color:red;'>Паролата трябва да бъде комбинация от букви и цифри.</b>";
				}
			
			
			
			$error = false;
			if (!$name){
				$err=  "<b style='color:red;'>Грешни данни!</b><br>";
			$error = true;
			}
			if (!$lname){
				$err= "<b style='color:red;'>Грешни данни!</b><br>";
				$error = true;
			}
			if (!$email){
				$err= "<b style='color:red;'>Грешни данни!</b><br>";
			$error = true;
			}

			if (!$password){
				$err= "<b style='color:red;'>Грешни данни!</b><br>";
				$error = true;
			}

	// INSERT заявка към базата, с която се записват полетата

			
			$this->model->datasave("INSERT INTO registration ( name,lname, email, password) VALUES (?,?,?,?)",[$name,$lname, $email, $password]);
		}


			

		$params = array
		(
			  "error" => $err
		);

    
		$this->view->render("registration.html", $params);
	}
}


?> 