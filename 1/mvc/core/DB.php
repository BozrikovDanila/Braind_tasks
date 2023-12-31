<?php

    class DB
    {
        // Объект класса PDO
        private $db;

        // Соединение с БД
        public function __construct()
        {
            $dbinfo = require 'dbinfo.php';
            $this->db = new PDO('mysql:host=' . $dbinfo['host'] . ';dbname=' . $dbinfo['dbname'] . ";charset=" . $dbinfo['charset'], $dbinfo['login'], $dbinfo['password']);
        }

        // Операции над БД
        public function query($sql, $params = [])
        {
            // Подготовка запроса
            $stmt = $this->db->prepare($sql);


            // Выполняя запрос
            $stmt->execute($params);
            // Возвращаем ответ
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        }

        public function getAll($table, $sql = '', $params = [])
        {
            return $this->query("SELECT * FROM $table" . $sql, $params);
        }

        public function getRow($table, $sql = '', $params = [])
        {
            $result = $this->query("SELECT * FROM $table" . $sql, $params);
            return $result[0];
        }

    }

