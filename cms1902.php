<?php
$page_title = "Usuarios";
include_once "header.php";
?>
<?php 
echo "<div class='right-button-margin'>";
    echo "<a href='crear_cms1902.php' class='btn btn-default pull-right'>Crear Usuario</a>";
echo "</div>";
// paginas obtenidas mediante url, por defecto 1
$page = isset($_GET['page']) ? $_GET['page'] : 1;
 
// configurar registros por paginas
$records_per_page = 3;
 
// Calculando el limite de la consulta
$from_record_num = ($records_per_page * $page) - $records_per_page;
/////////////////////// recuperar los registros de la base de datos////////////////////////////////////
// include database and object files
include_once 'config/database.php';
include_once 'objects/cad001.php';
include_once 'objects/desplegables.php';
 
// instancializar la base de datos y el objeto del usuario
$database = new Database();
$db = $database->getConnection();
 
$usuario = new Cad001($db);
 
// query products
$stmt = $usuario->readAll($page, $from_record_num, $records_per_page);
$num = $stmt->rowCount();
 
// display the products if there are any
if($num>0){
 
    $estatus = new Estatus($db);
    $tipousuario = new TipoUsuario($db);
 
    echo "<table class='table table-hover table-responsive table-bordered'>";
        echo "<tr>";
            echo "<th>Login</th>";
            echo "<th>Password</th>";
            echo "<th>Cedula</th>";
            echo "<th>Nombre</th>";
            echo "<th>Estatus</th>";
            echo "<th>Observacion</th>";
            echo "<th>Tipo de Usuario</th>";
            echo "<th>Email</th>";
                    
        echo "</tr>";
 
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
 
            extract($row);
 
            echo "<tr>";
                echo "<td>{$login}</td>";
                echo "<td>{$passwd}</td>";
                echo "<td>{$cedula}</td>";
                echo "<td>{$nombre}</td>";
                echo "<td>";
                    $estatus->id_estatus = $id_estatus;
                    $estatus->readName();
                    echo $estatus->nom_estatus;
                echo "</td>";
                echo "<td>{$observ}</td>";
                echo "<td>";
                    $tipousuario->id_tipou = $id_estatus;
                    $tipousuario->readName();
                    echo $tipousuario->tipou;
                echo "</td>";
 
                echo "<td>";
                    // botones para borrar y editar
                   //cho "<a href='update_cad001.php?id={$id}' class='btn btn-default left-margin'>Editar</a>";
                   //cho "<a delete-id='{$id}' class='btn btn-default delete-object'>Borrar</a>";
                echo "</td>";
 
            echo "</tr>";
 
        }
 
    echo "</table>";
     // paging buttons here
 //include_once 'paging_product.php';
}
 
// decirle al usuario que no hay nada en la busqueda
else{
    echo "<div>Usuario no Encontrado.</div>";
}

 ?>





<?php
include_once "footer.php";
?>