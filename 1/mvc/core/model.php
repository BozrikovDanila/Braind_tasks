<?php
    require_once 'DB.php';
    class Model
    {
        public $db;

        function __construct()
        {
            $this->db = new DB;
        }

        public function get_data()
        {
        }
    }