<?php
    require_once '../includes/config.php';
    
    $crud = new crud();
    $crud->dsn = "mysql:dbname=". $db_name .";host=". $db_host ;
    $crud->username = $db_user;
    $crud->password = $db_pass;

    $SQL = "SELECT * FROM cadview ORDER BY nome ASC";
    $records = $crud->rawSelect($SQL);
    $rows = $records->fetchAll(PDO::FETCH_ASSOC);
    
    $SQL = "SELECT * FROM regiao ORDER BY bairro";
    $records = $crud->rawSelect($SQL);
    $rowsRegiao = $records->fetchAll(PDO::FETCH_ASSOC);
    
?>
<div class="page-title">
    <div class="title_left">
        <h3><i class="fa fa-code-fork"></i> Pessoas -> Bairros</h3>
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
                        <h2>Atribuir Pessoas à bairros...</h2>
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
                    <form name="pessoa2bairro" id="pessoa2bairro" method="POST" action="forms/processBairro.php">
                        <div class="x_content">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label">Selecione a pessoa:</label>
                                        <select id="pessoa" name="pessoa" onchange="selectPessoa(this.value);" class="form-control">
                                            <option>Selecione uma pessoa...</option>
                                            <?php
                                            foreach ($rows as $pessoa) { 
                                            ?>
                                            <option value="<?=$pessoa['idcadastros'];?>"><?=strtoupper($pessoa['nome']);?></option>
                                            <?php
                                            }
                                            ?>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label">Pessoa Selecionada:</label>
                                        <div id="getName">
                                            <p class="form-control-static">-- NENHUM --</p>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label">Bairros de atuação atual:</label>
                                        <div id="getBairros">
                                            <ul class="form-control-static">

                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label" for="regiao[]">Selecione as regiões:</label>
                                        <select size="12" id="regiao[]" name="regiao[]" multiple="multiple" class="select2_multiple form-control">
                                            <?php
                                            foreach ($rowsRegiao as $regiao) {
                                            ?>
                                            <option value="<?=$regiao['idregiao'];?>"><?=$regiao['bairro'];?></option>
                                            <?php

                                            }
                                            ?>
                                        </select>
                                        <small>Mantenha a tecla <strong><i>Ctrl</i></strong> pressionada enquanto seleciona multiplos bairros.</small>
                                    </div>
                                </div>
                            </div>
                            
                            
                        </div>
                    </form>
                    <hr>
                    <div class="text-right">
                        <button  onclick="postForm('#pessoa2bairro','forms/processBairro.php');" class="btn btn-default btn-primary">Atribuir os selecionados</button>
                    </div>
                </div>
            </div>
    </div>
</div>





