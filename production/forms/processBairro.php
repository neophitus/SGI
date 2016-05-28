<?php
    header('Content-type: application/json');
    require_once '../../includes/config.php';
    
    $crud = new crud();
    $crud->dsn = "mysql:dbname=". $db_name .";host=". $db_host ;
    $crud->username = $db_user;
    $crud->password = $db_pass;

    if(!empty($_POST)) {
        $regiao = array();
        
        if(isset($_POST['regiao'])) {
            $regiao = $_POST['regiao'];
            unset($_POST['regiao']);
        }
        
        unset($_POST['submit']);
        
        if(isset($regiao) && !empty($regiao)) {
            foreach ($regiao as $key => $value) {
                $values = array(array(
                    'id_cadastros'  => $_POST['pessoa'],
                    'id_regiao'     => $value
                ));
                $lastRegiao = $crud->dbInsert('relRegiao', $values);
            }
        }
        //header('Location: ../index.php' );
        $response_array['status'] = 'success';    
        echo json_encode($response_array);
    }
    
?>
