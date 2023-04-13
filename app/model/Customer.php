<?php

namespace WorkanaTest;

require_once __DIR__ . '/../core/DatabaseConnection.php';

class Customer implements Model
{
    public $id;
    public $name;
    public $email;

    public function __construct($id, $name, $email)
    {
        $this->id = $id;
        $this->name = $name;
        $this->email = $email;
    }

    public function all(){
        return self::getAll();
    }

    public static function getAll()
    {
        $db = DatabaseConnection::getInstance()->getConnection();
        $query = 'SELECT * FROM customers';
        $result = $db->query($query);
        $customers = array();
        while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
            $customer = new Customer(
                $row['id'],
                $row['name'],
                $row['email']
            );
            array_push($customers, $customer);
        }
        return $customers;
    }

    public static function getById($id)
    {
        $db = DatabaseConnection::getInstance()->getConnection();
        $query = 'SELECT * FROM customers WHERE id = :id';
        $stmt = $db->prepare($query);
        $stmt->bindParam(':id', $id);
        $stmt->execute();
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
        if ($row) {
            $customer = new Customer(
                $row['id'],
                $row['name'],
                $row['email']
            );
            return $customer;
        } else {
            return null;
        }
    }

    public function save()
    {
        $db = DatabaseConnection::getInstance()->getConnection();
        $query = '
            INSERT INTO customers (
                id, 
                name, 
                email
            )
            VALUES (
                :id, 
                :name, 
                :email
            )';
        $stmt = $db->prepare($query);
        $stmt->bindValue(':id', $this->id, PDO::PARAM_INT);
        $stmt->bindValue(':name', $this->name, PDO::PARAM_STR);
        $stmt->bindValue(':email', $this->email, PDO::PARAM_STR);
        $stmt->execute();
    }
}