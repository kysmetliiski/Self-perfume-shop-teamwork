<?php 

class Controller 
{
    protected $view ;
    protected $model ;

    function __construct()
    {
        $this->view = new View();
        $this->model =  new Model();

        session_start();
    }
    
}


?> 