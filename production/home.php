<?php
    require_once '../includes/config.php';
    
    $crud = new crud();
    $crud->dsn = "mysql:dbname=". $db_name .";host=". $db_host ;
    $crud->username = $db_user;
    $crud->password = $db_pass;

    $SQL = "SELECT * FROM cadview";
    $records = $crud->rawSelect($SQL);
    $rows = $records->fetchAll(PDO::FETCH_ASSOC);
    
    $SQL = "SELECT * FROM regiao";
    $records = $crud->rawSelect($SQL);
    $rowsRegiao = $records->fetchAll(PDO::FETCH_ASSOC);
    
    $SQL = "SELECT distinct id_regiao FROM relRegiao";
    $records = $crud->rawSelect($SQL);
    $rowsUniqueRegiao = $records->fetchAll(PDO::FETCH_ASSOC);
    
    $SQL = "SELECT distinct partido FROM cadastros";
    $records = $crud->rawSelect($SQL);
    $rowsUniquePartidos = $records->fetchAll(PDO::FETCH_ASSOC);
    
?>

<!-- top tiles -->
<div class="row tile_count">
    <div class="col-md-3 col-sm-3 col-xs-3 tile_stats_count">
        <span class="count_top"><i class="fa fa-user"></i> Total de Cadastros</span>
        <div class="count"><?=count($rows);?></div>
        <span class="count_bottom"><i class="green">4% </i> From last Week</span>
    </div>
    
    <div class="col-md-3 col-sm-3 col-xs-3 tile_stats_count">
        <span class="count_top"><i class="fa fa-clock-o"></i> Total de Bairros</span>
        <div class="count"><?=count($rowsRegiao);?></div>
        <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>3% </i> From last Week</span>
    </div>
    
    <div class="col-md-3 col-sm-3 col-xs-3 tile_stats_count">
        <span class="count_top"><i class="fa fa-user"></i> Bairros Contemplados</span>
        <div class="count green"><?=count($rowsUniqueRegiao);?></div>
        <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>34% </i> From last Week</span>
    </div>
    
    <div class="col-md-3 col-sm-3 col-xs-3 tile_stats_count">
        <span class="count_top"><i class="fa fa-user"></i> Partidos envolvidos</span>
        <div class="count"><?=count($rowsUniquePartidos);?></div>
        <span class="count_bottom"><i class="red"><i class="fa fa-sort-desc"></i>12% </i> From last Week</span>
    </div>
    
</div>
<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h2><i class="fa fa-users"></i> Pessoas Cadastradas</h2>
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
                <table id="homeTbl" class="table table-striped table-bordered">
                    <thead>
                        <tr class="headings">
                            <th class="column-title">Nome Completo </th>
                            <th class="column-title">Tipo </th>
                            <th class="column-title">Part. </th>
                            <th class="column-title">Cel. </th>
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
                            <td ><?=$row['tel_celular'];?></td>
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
<!-- /top tiles -->


