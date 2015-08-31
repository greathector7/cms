<?php 
session_start();
require_once("coneccion.php");
 ?>
 <!DOCTYPE html>
 <html lang="es">
 <head>
 	<meta charset="UTF-8">
 	<title>Revisión de entrada</title>
 </head>
 <body>
 	<?php 
 		$username=$_POST['login'];
 		$salt = '$bgr$/';
 		$password=sha1(md5($salt . ($_POST['password'])));
		$sql= "SELECT * FROM cad001 WHERE login = '$username' and Passwd = '$password'";
	$result=mysql_query($sql);
	// contamos resultados
	$count = mysql_num_rows($result);
	// si coincide $username y $password
	if($count == 1){
		 $_SESSION['loggedin'] = true;
		 $_SESSION['username'] = $username;
		 $_SESSION['start'] = time();
		 $_SESSION['expire'] = $_SESSION['start'] + (5 * 60) ;
		echo "<br> Bienvenido! " . $_SESSION['username'];
		 // Liberar resultados
		mysql_free_result($result);
		// Cerrar la conexión
		mysql_close($link);
		header("location:cms1902.php");
		 
		}
		 else {
 	/*	echo $_POST['login'].'</br>';
 		echo md5($_POST['password']).'</br>';
 		echo $password.'</br>';
 		echo $count.'</br>';
 		echo $sql;
	*/
		 echo "<br/>Usuario o Password estan incorrectos.<br>";		 
		 echo "<a href='../entrada.html'>Volver a Intentarlo</a>";
		 // Liberar resultados
		mysql_free_result($result);
		// Cerrar la conexión
		mysql_close($link);
		header("location:entrada.html");	
		
			}
 	 ?>
 </body>
 </html>