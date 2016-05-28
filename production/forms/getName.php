<?php
    require_once '../../includes/config.php';
    
    $crud = new crud();
    $crud->dsn = "mysql:dbname=". $db_name .";host=". $db_host ;
    $crud->username = $db_user;
    $crud->password = $db_pass;

    $SQL = "SELECT * FROM cadview WHERE idcadastros = " . $_GET['id'];
    $records = $crud->rawSelect($SQL);
    $rows = $records->fetchAll(PDO::FETCH_ASSOC);
    
?>

<div id="getName">
    <p class="form-control-static"><?=  strtoupper($rows[0]['nome']);?></p>
</div>

