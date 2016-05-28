<?php
    require_once '../../includes/config.php';
    
    $crud = new crud();
    $crud->dsn = "mysql:dbname=". $db_name .";host=". $db_host ;
    $crud->username = $db_user;
    $crud->password = $db_pass;

    $SQL = "SELECT regiaoAtuacao FROM pessoas2regiao WHERE idcad =" . $_GET['id'];
    $records = $crud->rawSelect($SQL);
    $rows = $records->fetchAll(PDO::FETCH_ASSOC);
    
?>
<div id="getBairros">
    <ul class="form-control-static">
        <?php foreach($rows as $row) { ?>
        <li><?=$row['regiaoAtuacao'];?></li>
        <?php } ?>
    </ul>
</div>

