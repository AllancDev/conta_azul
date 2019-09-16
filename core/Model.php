<?php 
    class Model {
        protected $db;

        public function __construct() {
            global $config;
            $this -> db = new PDO("mysql:dbname=". $config['db_name'] . ';host='. $config['db_host'], $config['db_user'], $config['db_pass']);
        }
    }

?>