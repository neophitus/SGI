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
                        <h2>Novo Cadastro</h2>
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
                        <?php
                        include 'forms/pessoas.php';
                        ?>
                    </div>
                </div>
            </div>
    </div>
        
    <div class="x_panel">
        <div class="x_title">
            <h2><i class="fa fa-users"></i> Pessoas Cadastradas</h2>
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
</div>





