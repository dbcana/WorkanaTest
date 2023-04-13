<?php 
namespace WorkanaTest;
use PDO;

class DatabaseConnection {
    private static $instance = null;
    private $pdo;

    private function __construct() {
        $host = '172.18.0.3';
        $port = '5432';
        $dbname = 'WorkanaTest';
        $user = 'admin';
        $pass = 'admin12345';
    
        $dsn = "pgsql:host=$host;port=$port;dbname=$dbname;user=$user;password=$pass";
        $this->pdo = new PDO($dsn);
    }

    public static function getInstance() {
        if (self::$instance == null) {
            self::$instance = new DatabaseConnection();
        }
        return self::$instance;
    }

    public function getConnection() {
        return $this->pdo;
    }
}
