<?php

    $SQL = "SELECT * FROM tipos";
    $records = $crud->rawSelect($SQL);
    $rowsTipos = $records->fetchAll(PDO::FETCH_ASSOC);
    
    $SQL = "SELECT * FROM partidos ORDER By Sigla ASC";
    $records = $crud->rawSelect($SQL);
    $rowsPartidos = $records->fetchAll(PDO::FETCH_ASSOC);
    
    $SQL = "SELECT * FROM regiao";
    $records = $crud->rawSelect($SQL);
    $rowsRegiao = $records->fetchAll(PDO::FETCH_ASSOC);
    
    $SQL = "SELECT * FROM atuacao";
    $records = $crud->rawSelect($SQL);
    $rowsatuacao = $records->fetchAll(PDO::FETCH_ASSOC);
   
?>
<form name="pessoas" id="pessoas" method="POST" action="forms/processPessoas.php">
    <div class="row">
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
                <label class="control-label" for="tipo">Tipo:</label>
            <select id="tipo" name="tipo" class="form-control">
                <option value="3">Escolha um tipo...</option>
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
                <label class="control-label" for="partido">Partido:</label>
            <select id="partido" name="partido" class="form-control">
                <option value="36">Escolha um partido...</option>
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
                <input type="text" id="data_nasc" name="data_nasc" data-inputmask="'mask': '99/99/9999'" class="form-control">
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="form-group">
                <label class="control-label" for="endereco">Endereço:</label>
                <input type="text" id="endereco" name="endereco" class="form-control">
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-4 col-md-4 col-sm-4">
            <div class="form-group">
                <label class="control-label" for="bairro">Bairro:</label>
                <input type="text" id="bairro" name="bairro" class="form-control">
            </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4">
            <div class="form-group">
                <label class="control-label" for="cidade">Cidade:</label>
                <input type="text" id="cidade" name="cidade" class="form-control">
            </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4">
            <div class="form-group">
                <label class="control-label" for="estado">Estado:</label>
                <input type="text" id="estado" name="estado" class="form-control">
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-4 col-md-4 col-sm-4">
            <div class="form-group">
                <label class="control-label" for="cep">CEP:</label>
                <input type="text" data-inputmask="'mask': '99.999-999'" id="cep" name="cep" class="form-control">
            </div>
        </div>
        <div class="col-lg-8 col-md-8 col-sm-8">
            <div class="form-group">
                <label class="control-label" for="email">E-mail:</label>
                <input type="text" id="email" name="email" class="form-control">
            </div>
        </div>
    </div>
    
    <div class="row">
        <div class="col-lg-4 col-md-4 col-sm-4">
            <div class="form-group">
                <label class="control-label" for="tel_fixo">Tel. Fixo:</label>
                <input type="text" data-inputmask="'mask': '(99)9999-9999'" id="tel_fixo" name="tel_fixo" class="form-control">
            </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4">
            <div class="form-group">
                <label class="control-label" for="tel_celular">Tel. Cel.:</label>
                <input type="text"  data-inputmask="'mask': '(99)99999-9999'" id="tel_celular" name="tel_celular" class="form-control">
            </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4">
            <div class="form-group">
                <label class="control-label" for="whatsapp">Whatsapp:</label>
                <input type="text" data-inputmask="'mask': '(99)99999-9999'" id="whatsapp" name="whatsapp" class="form-control">
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-4 col-md-4 col-sm-4">
            <div class="form-group">
                <label class="control-label" for="facebook">Facebook:</label>
                <input type="text" id="facebook" name="facebook" class="form-control">
            </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4">
            <div class="form-group">
                <label class="control-label" for="twitter">Twitter:</label>
                <input type="text" id="twitter" name="twitter" class="form-control">
            </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4">
            <div class="form-group">
                <label class="control-label" for="instagram">Instagram:</label>
                <input type="text" id="instagram" name="instagram" class="form-control">
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-6 col-md-6 col-sm-6">
            <div class="form-group">
                <label class="control-label" for="regiao[]">Selecione as regiões:</label>
                <select id="regiao[]" name="regiao[]" multiple="multiple" class="select2_multiple form-control">
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
        <div class="col-lg-6 col-md-6 col-sm-6">
            <div class="form-group">
                <label class="control-label" for="atuacao[]">Selecione as regiões:</label>
                <select id="atuacao[]" name="atuacao[]" multiple="multiple" class="select2_multiple form-control">
                    <?php
                    foreach ($rowsatuacao as $atuacao) {
                    ?>
                    <option value="<?=$atuacao['idatuacao'];?>"><?=$atuacao['atuacao'];?></option>
                    <?php

                    }
                    ?>
                </select>
                <small>Mantenha a tecla <strong><i>Ctrl</i></strong> pressionada enquanto seleciona multiplas areas de atuacao.</small>
            </div>
        </div>
    </div>       
</form>
<hr>
<div class="text-right">
    <button onclick="postForm('#pessoas','forms/processPessoas.php');" class="btn btn-success">Gravar</button>
</div> 

