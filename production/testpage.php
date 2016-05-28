<?php
    
    require_once '../includes/config.php';
    
    
    $crud = new crud();
    $crud->dsn = "mysql:dbname=". $db_name .";host=". $db_host ;
    $crud->username = $db_user;
    $crud->password = $db_pass;

    $SQL = "SELECT * FROM regiao";
    $records = $crud->rawSelect($SQL);
    $rows = $records->fetchAll(PDO::FETCH_ASSOC);
  
    if(isset($_POST)) {
        echo '<pre>';
        print_r($_POST);
        echo '</pre>';
    }    
?>