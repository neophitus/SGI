<?php
    session_start();
    // Configuração de raiz.
    define('__ROOT__', dirname(dirname(__FILE__)));
    require_once(__ROOT__.'/includes/crud.php');
    
    if($_SERVER["SERVER_NAME"] == "localhost" || $_SERVER["SERVER_NAME"] == "192.168.1.253" ) {
        date_default_timezone_set('America/Sao_Paulo');
        $db_user = "root";
        $db_pass = "m0r31r4";
        $db_host = "localhost";
        $db_name = "SGI";
    } else {
        $db_user = "hexac324_geomap";
        $db_pass = "m0r31r4";
        $db_host = "localhost";
        $db_name = "hexac324_geomap";
    }
?>