<?php
// Colocar Nombre de Cabecera
$page_title = "Crear Usuario";
include_once "header.php";

   $fecha = date('Y-m-d H:i:s');
   echo $fecha;
?>

<?php 
echo "<div class='right-button-margin'>";
    echo "<a href='cms1902.php' class='btn btn-default pull-right'>Ver Usuarios</a>";
echo "</div>";

// get database connection
include_once 'config/database.php';
 
$database = new Database();
$db = $database->getConnection();
?>

<?php 
// if the form was submitted

if($_POST){
   $salt = '$bgr$/';
   $_POST['passwd']=sha1(md5($salt . ($_POST['passwd'])));
    // instantiate product object
    include_once 'objects/cad001.php';
    $usuario = new Cad001($db);
     // valores para agregar usuario
    
    $usuario->login = $_POST['login'];
    $usuario->passwd = $_POST['passwd'];
    $usuario->cedula = $_POST['cedula'];
    $usuario->nombre = $_POST['nombre'];
    $usuario->fecinc = $fecha;
    $usuario->id_estatus = $_POST['id_estatus'];
    $usuario->observ = $_POST['observ'];
    $usuario->id_tipou = $_POST['id_tipou'];
    $usuario->email = $_POST['email'];

 
    // Crear el Usuario
    if($usuario->create()){
        echo "<div class=\"alert alert-success alert-dismissable\">";
            echo "<button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-hidden=\"true\">&times;</button>";
            echo "Usuario Agregado.";   

        echo "</div>";
    }
    // aviso si no es posible crear el usuario
    else{
        echo "<div class=\"alert alert-danger alert-dismissable\">";
            echo "<button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-hidden=\"true\">&times;</button>";
            echo "No se pudo Crear el  Usuario.";


        echo "</div>";
    }
}
?>





<!-- HTML form for creating a product -->
<form action='crear_cms1902.php' method='post'>
 
    <table class='table table-hover table-responsive table-bordered'>
 
        <tr>
            <td>Login</td>
            <td><input type='text' name='login' class='form-control' /></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><input type='password' name='passwd' class='form-control' /></td>
        </tr>

        <tr>
            <td>cedula</td>
            <td><input type='text' name='cedula' class='form-control' /></td>
        </tr>
 		<tr>
            <td>Nombre</td>
            <td><input type='text' name='nombre' class='form-control' /><input type='hidden'  name='fecinc' value="<?php echo $fecha; ?>" class='form-control' /></td>
        </tr>
                
                <tr>
                <td>Estatus</td>
                <td>
                <?php
                // read the product categories from the database
                include_once 'objects/desplegables.php';
             
                $estatus = new Estatus($db);
                $stmt = $estatus->read();
             
                // put them in a select drop-down
                echo "<select class='form-control' name='id_estatus'>";
                    echo "<option>Selecciona estatus...</option>";
             
                    while ($row_estatus = $stmt->fetch(PDO::FETCH_ASSOC))
                    {
                        extract($row_estatus);
                        echo "<option value='{$id_estatus}'>{$nom_estatus}</option>";
                    }
             
                echo "</select>";
                ?>
                </td>
        </tr>
        <tr>
            <td>Observacion</td>
            <td><input type='text' name='observ' class='form-control' /></td>
        </tr>

    <tr>
        <td>Tipo de Usuario</td>
        <td>
        <?php
        // read the product categories from the database
        include_once 'objects/desplegables.php';
     
        $tipousuario = new tipousuario($db);
        $stmt = $tipousuario->read();
     
        // put them in a select drop-down	
        echo "<select class='form-control' name='id_tipou'>";
            echo "<option>Seleccione Tipo de Usuarios...</option>";
     
            while ($row_tipou = $stmt->fetch(PDO::FETCH_ASSOC)){
                extract($row_tipou);
                echo "<option value='{$id_tipou}'>{$tipou}</option>";
            }
     
        echo "</select>";
        ?>
    </td>
    </tr>
        <tr>
            <td>Email</td>
            <td><input type='email' name='email' class='form-control' /></td>
        </tr>



        <tr>
            <td></td>
            <td>
                <button type="submit" class="btn btn-primary">Crear</button>
            </td>
        </tr>
 
    </table>
</form>







<?php
include_once "footer.php";
?>