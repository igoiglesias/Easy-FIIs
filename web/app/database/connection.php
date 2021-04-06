<?php

require_once( __DIR__ . "/../../app-config.php");

class Connection{

    public function connect(){
        try {
            $conn = new PDO(
                'mysql:host=' . DB_HOST . ';port=' . DB_PORT . ';dbname=' . DB_NAME . ';charset=' . DB_CHARSET,
                DB_USER,
                DB_PASSWORD
            );
            
            return $conn;
        }
        catch ( PDOException $e ){
        
            echo '<p>Erro ao conectar com o bando de dados: ' . $e->getMessage() . '</p>';
        }
    }
    
}