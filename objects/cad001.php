<?php
class Cad001{
 
    // nombre de la tabla para la coneccion
    private $conn;
    private $table_name = "cad001";
    // propiedades del objeto
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
   // 

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
	    date_default_timezone_set('America/Caracas');
	    $this->timestamp = date('Y-m-d H:i:s');
	}


//////////////////////////////////////////  update  ///////////////////////////////////////////////////////
//con esta secuncia 
function readAll($page, $from_record_num, $records_per_page)
    {
     
        $query = "SELECT
                    login, passwd, cedula, nombre, id_estatus, observ, id_tipou, email
                FROM
                    " . $this->table_name . "
                ORDER BY
                    login ASC
                LIMIT
                    {$from_record_num}, {$records_per_page}";
     
        $stmt = $this->conn->prepare( $query );
        $stmt->execute();
     
        return $stmt;
    }


// used for paging products
public function countAll(){
 
    $query = "SELECT login FROM " . $this->table_name . "";
 
    $stmt = $this->conn->prepare( $query );
    $stmt->execute();
 
    $num = $stmt->rowCount();
 
    return $num;
}













}

?>