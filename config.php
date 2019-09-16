<?php 
    require 'environment.php';

    global $config;
    $config = array();

    if(ENVIRONMENT == 'development') {
        $config['db_name'] = 'db_conta_azul';
        $config['db_host'] = 'localhost';
        $config['db_user'] = 'root';
        $config['db_pass'] = '';
    } else {
        $config['db_name'] = '';
        $config['db_host'] = '';
        $config['db_user'] = '';
        $config['db_pass'] = '';
    }

?>