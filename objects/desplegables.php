<?php

class Estatus{
 
    // database connection and table name
    private $conn;
    private $table_name = "cad001a1";
 
    // object properties
    public $id_estatus;
    public $nom_estatus;
 
    public function __construct($db){
        $this->conn = $db;
    }
 
    // used by select drop-down list
    function read(){
        //select all data
        $query = "SELECT
                    id_estatus, nom_estatus
                FROM
                    " . $this->table_name . "
                ORDER BY
                    nom_estatus";  
 
        $stmt = $this->conn->prepare( $query );
        $stmt->execute();
 
        return $stmt;
    }
    // used to read category name by its ID
function readName()
    {
        $query = "SELECT nom_estatus FROM " . $this->table_name . " WHERE id_estatus = ? limit 0,1";
        $stmt = $this->conn->prepare( $query );
        $stmt->bindParam(1, $this->id_estatus);
        $stmt->execute();
     
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
         
        $this->nom_estatus = $row['nom_estatus'];
        return $this->nom_estatus;
    }
}
class TipoUsuario{
    // database connection and table name
    private $conn;
    private $table_name = "cad001a2";
    // object properties
    public $id_tipou;
    public $tipou;
    public function __construct($db){
        $this->conn = $db;
    }
    // used by select drop-down list
    function read(){
        //select all data
        $query = "SELECT id_tipou, tipou FROM " . $this->table_name . " ORDER BY id_tipou";  
        $stmt = $this->conn->prepare( $query );
        $stmt->execute();
 
        return $stmt;
    }
    // used to read category name by its ID
function readName(){
     
    $query = "SELECT tipou FROM " . $this->table_name . " WHERE id_tipou = ? limit 0,1";
 
    $stmt = $this->conn->prepare( $query );
    $stmt->bindParam(1, $this->id_tipou);
    $stmt->execute();
 
    $row = $stmt->fetch(PDO::FETCH_ASSOC);
     
    $this->tipou = $row['tipou'];
}



}







?>