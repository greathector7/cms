<?php
class Cad001{
 
    // nombre de la tabla para la coneccion
    private $conn;
    private $table_name = "cad001";
 
    // object properties
    public $login;
    public $passwd;
    public $cedula;
    public $nombre;
    public $fecinc;
    public $id_estatus;
    public $fecest;
    public $observ;
    public $tipou;
   // public $codigo2;
    public $email;

    public function __construct($db){
        $this->conn = $db;
    }
 
    // crear usuario
    function create(){
 
        // to get time-stamp for 'created' field
        $this->getTimestamp();
 
        //write query
        $query = "INSERT INTO
                    " . $this->table_name . "
                SET
                    login = ?, passwd = ?, cedula = ?, nombre = ?, fecinc = ?, id_estatus = ?, fecest = ?, observ = ?, id_tipou = ?, email = ?";
 
        $stmt = $this->conn->prepare($query);
 
        $stmt->bindParam(1, $this->login);
        $stmt->bindParam(2, $this->passwd);
        $stmt->bindParam(3, $this->cedula);
        $stmt->bindParam(4, $this->nombre);
        $stmt->bindParam(5, $this->fecinc);
 		$stmt->bindParam(6, $this->id_estatus);
 		$stmt->bindParam(7, $this->fecest);
 		$stmt->bindParam(8, $this->observ);
 		$stmt->bindParam(9, $this->id_tipou);
 		//$stmt->bindParam(10, $this->codigo2);
 		$stmt->bindParam(10, $this->email);
        if($stmt->execute()){
            return true;
        }else{
            return false;
        }
 
    }
    // used for the 'created' field when creating a product
	function getTimestamp()
	{
	    date_default_timezone_set('Asia/Manila');
	    $this->timestamp = date('Y-m-d H:i:s');
	}
}
?>