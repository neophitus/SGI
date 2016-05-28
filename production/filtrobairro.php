<?php
    require_once '../includes/config.php';
    
    $crud = new crud();
    $crud->dsn = "mysql:dbname=". $db_name .";host=". $db_host ;
    $crud->username = $db_user;
    $crud->password = $db_pass;

    if(!empty($_POST)) {
        
        $bairro = $_POST['filtroregiao'];
        
        $SQL = "SELECT cadview.* FROM cadview
                INNER JOIN relRegiao ON cadview.idcadastros = relRegiao.id_cadastros
                WHERE relRegiao.id_regiao = $bairro
                GROUP BY cadview.idcadastros";
    } else {
        $SQL = "SELECT cadview.* FROM cadview
                INNER JOIN relRegiao ON cadview.idcadastros = relRegiao.id_cadastros
                GROUP BY cadview.idcadastros";
    }
    
    $records = $crud->rawSelect($SQL);
    $rows = $records->fetchAll(PDO::FETCH_ASSOC);
    
    $SQL = "SELECT * FROM regiao";
    $records = $crud->rawSelect($SQL);
    $rowsRegiao = $records->fetchAll(PDO::FETCH_ASSOC);
    
    if(!empty($_POST)) {
        $bairro = $_POST['filtroregiao'];
        
        $SQL = "SELECT * FROM regiao WHERE idregiao = $bairro";
        $records = $crud->rawSelect($SQL);
        $rowsBairro = $records->fetchAll(PDO::FETCH_ASSOC);
    }
    
?>
<div class="page-title">
    <div class="title_left">
        <h3><i class="fa fa-users"></i> Cadastros de Pessoas</h3>
    </div>

    <div class="title_right text-right">
    </div>
</div>
<div class="clearfix"></div>
<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>Filtro por Bairros</h2>
                        <ul class="nav navbar-right panel_toolbox">
                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="#">Settings 1</a></li>
                                    <li><a href="#">Settings 2</a></li>
                                </ul>
                            </li>
                            <li><a class="close-link"><i class="fa fa-close"></i></a></li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content">
                        <form name="filtrobairro" id="filtrobairro" method="POST" action="index.php?action=filtrobairro">
                            <div class="input-group">
                                <select id="filtroregiao" name="filtroregiao" class="form-control">
                                    <?php
                                    foreach ($rowsRegiao as $regiao) {
                                    ?>
                                    <option value="<?=$regiao['idregiao'];?>"><?=$regiao['bairro'];?></option>
                                    <?php

                                    }
                                    ?>
                                </select>
                                <span class="input-group-btn">
                                    <button type="submit" class="btn btn-default">Filtrar...</button>
                                </span> 
                            </div>
                        </form>
                    </div>
                </div>
            </div>
    </div>
        
    <div class="x_panel">
        <div class="x_title">
            <h2><i class="fa fa-users"></i> Pessoas Cadastradas <?php if(!empty($_POST)) { echo " - " . $rowsBairro[0]['bairro']; } ?></h2>
                <ul class="nav navbar-right panel_toolbox">
                    <li><a><i class="fa fa-arrow-circle-o-up"></i></a>
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                </ul>
            <div class="clearfix"></div>
        </div>
        <div class="x_content">
            <div class="table-responsive">
                <table id="pessoasTbl" class="table table-striped table-bordered">
                    <thead>
                        <tr class="headings">
                            <th class="column-title">Nome Completo </th>
                            <th class="column-title">Tipo </th>
                            <th class="column-title">Part. </th>
                            <th class="column-title">Bairro </th>
                            <th class="column-title">E-mail </th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        foreach($rows as $row) {
                        ?>
                        <tr>
                            <td ><?=$row['nome'];?></td>
                            <td ><?=$row['tipo'];?></td>
                            <td ><?=$row['sigla_partido'];?></td>
                            <td ><?=$row['bairro'];?></td>
                            <td ><?=$row['email'];?></td>
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





