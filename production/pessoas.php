<?php
    require_once '../includes/config.php';
    
    $crud = new crud();
    $crud->dsn = "mysql:dbname=". $db_name .";host=". $db_host ;
    $crud->username = $db_user;
    $crud->password = $db_pass;

    $SQL = "SELECT * FROM cadview";
    $records = $crud->rawSelect($SQL);
    $rows = $records->fetchAll(PDO::FETCH_ASSOC);
    
?>
<div class="page-title">
    <div class="title_left">
        <h3>
            Cadastro de Pessoas
        </h3>
    </div>

    <div class="title_right">
        
    </div>
</div>
<div class="clearfix"></div>
<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h2>Pessoas Cadastradas <small>Custom design</small></h2>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">
                <div class="table-responsive">
                    <table class="table table-striped jambo_table bulk_action">
                        <thead>
                            <tr class="headings">
                                <th class="column-title">Nome Político </th>
                                <th class="column-title">Tipo </th>
                                <th class="column-title">Partido </th>
                                <th class="column-title">Telefone </th>
                                <th class="column-title">Celular </th>
                                <th class="column-title">E-mail </th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            foreach($rows as $row) {
                            ?>
                            <tr>
                                <td><strong><?=$row['apelido'];?></strong></td>
                                <td><?=$row['tipo'];?></td>
                                <td><?=$row['sigla_partido'];?></td>
                                <td><?=$row['tel_fixo'];?></td>
                                <td><?=$row['tel_celular'];?></td>
                                <td><?=$row['email'];?></td>
                            </tr>
                            <?php
                            }
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>


