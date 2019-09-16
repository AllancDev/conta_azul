<?php 
    class Controller {
        protected $db;

        public function __construct() {
            global $config;
            $this -> db = new PDO("mysql:dbname=". $config['db_name'] . ";host=" . $config['db_host'], $config['db_user'], $config['db_pass']);
        }

        public function loadView($viewName, $viewData = array()) {
            extract($viewData);
            include('views/' . $viewName . '.php');
        }

        public function loadTemplate($viewName, $viewData = array()) {
            include 'views/template.php';
        }

        public function loadViewInTemplate($viewName, $viewData) {
            extract($viewData);
            include 'views/' . $viewName . '.php';
        }
    }

