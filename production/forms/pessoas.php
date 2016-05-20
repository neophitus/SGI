<?php
    
    require_once '../../includes/config.php';
    
    
    $crud = new crud();
    $crud->dsn = "mysql:dbname=". $db_name .";host=". $db_host ;
    $crud->username = $db_user;
    $crud->password = $db_pass;

    $SQL = "SELECT * FROM tipos";
    $records = $crud->rawSelect($SQL);
    $rowsTipos = $records->fetchAll(PDO::FETCH_ASSOC);
    
    $SQL = "SELECT * FROM partidos ORDER By Sigla ASC";
    $records = $crud->rawSelect($SQL);
    $rowsPartidos = $records->fetchAll(PDO::FETCH_ASSOC);
    
   
?>




<div id="step-1">
    <form name="pessoas" id="pessoas" method="POST" action="#">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <h4>Dados Pessoais</h4>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="form-group">
                    <label class="control-label" for="nome">Nome Completo:</label>
                    <input type="text" id="nome" name="nome" class="form-control">
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="form-group">
                    <label class="control-label" for="apelido">Nome Politico:</label>
                    <input type="text" id="apelido" name="apelido" class="form-control">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-4">
                <div class="form-group">
                <label class="control-label">Tipo:</label>
                <select id="tipo" name="tipo" class="form-control">
                    <option>Escolha um tipo...</option>
                    <?php
                    foreach ($rowsTipos as $tipo) {
                    ?>
                    <option value="<?=$tipo['idtipos'];?>"><?=$tipo['tipo'];?></option>
                    <?php

                    }
                    ?>
                </select>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4">
                <div class="form-group">
                <label class="control-label">Partido:</label>
                <select id="partido" name="partido" class="form-control">
                    <option>Escolha um partido...</option>
                    <?php
                    foreach ($rowsPartidos as $partido) {
                    ?>
                    <option value="<?=$partido['idpartidos'];?>"><?=$partido['Sigla'];?></option>
                    <?php

                    }
                    ?>
                </select>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4">
                <div class="form-group">
                    <label class="control-label" for="data_nasc">Data Nasc.:</label>
                    <input type="text" id="data_nasc" name="data_nasc" required="required" class="form-control">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <h4>Endereço Residencial:</h4>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="form-group">
                    <label class="control-label" for="data_nasc">Endereço:</label>
                    <input type="text" id="data_nasc" name="data_nasc" required="required" class="form-control">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-4">
                <div class="form-group">
                    <label class="control-label" for="data_nasc">Bairro:</label>
                    <input type="text" id="data_nasc" name="data_nasc" required="required" class="form-control">
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4">
                <div class="form-group">
                    <label class="control-label" for="data_nasc">Cidade:</label>
                    <input type="text" id="data_nasc" name="data_nasc" required="required" class="form-control">
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4">
                <div class="form-group">
                    <label class="control-label" for="data_nasc">Estado:</label>
                    <input type="text" id="data_nasc" name="data_nasc" required="required" class="form-control">
                </div>
            </div>
        </div>
    </form>
</div>
<div id="step-2">
    Passo 2
</div>
<div id="step-3">
    Passo 3
</div>
<div id="step-4">
    Passo 4
</div>


