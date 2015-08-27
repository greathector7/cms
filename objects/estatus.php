<?php
class Estatus{
 
    // database connection and table name
    private $conn;
    private $table_name = "cad001a1";
 
    // object properties
    public $id;
    public $name;
 
    public function __construct($db){
        $this->conn = $db;
    }
 
    // used by select drop-down list
    function read(){
        //select all data
        $query = "SELECT
                    id, nom_estatus
                FROM
                    " . $this->table_name . "
                ORDER BY
                    nom_estatus";  
 
        $stmt = $this->conn->prepare( $query );
        $stmt->execute();
 
        return $stmt;
    }
}
?>