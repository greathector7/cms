<?php 
 		$host_db="localhost";
 		$user_db="root";
 		$pass_db="vata2014";
 		$db_name="dbcms4";

 	//conectamos al servidor y seleccionamos la base de datos
 		$link=mysql_connect("$host_db", "$user_db", "$pass_db", "$db_name") or die("Sin Conección al Servidor");
 		mysql_select_db("$db_name")or die("No se encuentra la base de datos");
 ?>