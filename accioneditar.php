<?php
// Conexion a la Base de Datos
require_once("conexion.php");

if (isset($_POST['update'])) {
	// Busqueda de Caracteres
	$id = mysqli_real_escape_string($mysqli, $_POST['id']);
	$name = mysqli_real_escape_string($mysqli, $_POST['name']);	
	
	// Validar Campos Vacios
	if (empty($name)) {
		if (empty($name)) {
			echo "<font color='red'>Nombre esta Vacio.</font><br/>";
		}
	} else {
		// Actualizar Base de Datos
		$result = mysqli_query($mysqli, "UPDATE users SET `name` = '$name'WHERE `id` = $id");
		
		// Mostar MEnsajes
		echo "<p><font color='green'>Datos Actualizados Correctamente!</p>";
		echo "<a href='index.php'>Ver Resultados</a>";
	}
}
?>