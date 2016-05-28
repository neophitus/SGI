<?php
    header('Content-type: application/json');
    require_once '../../includes/config.php';
    
    $crud = new crud();
    $crud->dsn = "mysql:dbname=". $db_name .";host=". $db_host ;
    $crud->username = $db_user;
    $crud->password = $db_pass;

    if(!empty($_POST)) {
        $regiao = array();
        $atuacao = array();
        
        if(isset($_POST['regiao'])) {
            $regiao = $_POST['regiao'];
            unset($_POST['regiao']);
        }
        
        if(isset($_POST['atuacao'])) {
            $atuacao = $_POST['atuacao'];
            unset($_POST['atuacao']);
        }
        
        unset($_POST['submit']);
        
        $values = array($_POST);
        $lastItemID = $crud->dbInsert('cadastros', $values);
    
        if ($lastItemID) {
            //header('Location: index.php?action=pessoas' );
            if(isset($regiao) && !empty($regiao)) {
                foreach ($regiao as $key => $value) {
                    $values = array(array(
                        'id_cadastros'  => $lastItemID,
                        'id_regiao'     => $value
                    ));
                    $lastRegiao = $crud->dbInsert('relRegiao', $values);
                }
            }
            if(isset($atuacao) && !empty($atuacao)) {
                foreach ($atuacao as $key => $value) {
                    $values = array(array(
                        'id_cadastros'  => $lastItemID,
                        'id_atuacao'     => $value
                    ));
                    $lastRegiao = $crud->dbInsert('relAtuacao', $values);
                }
            }
            //header('Location: index.php?action=pessoas' );
            $response_array['status'] = 'success';    
            echo json_encode($response_array);
        } else {
            
        }
    }
    
?>
