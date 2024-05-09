<?php

function dbConnection() {
    try {
        $pdo = new PDO("mysql:host=localhost;dbname=smi_database", "root", "");
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (PDOException $e) {
        die("Database connection failed: " . $e->getMessage());
    }

    return $pdo;
}


?>