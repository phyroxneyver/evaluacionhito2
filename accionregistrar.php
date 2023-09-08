<html>
<head>
	<title>Registro</title>
</head>

<body>
<?php
// Conexion a la Base de Datos
require_once("conexion.php");

if (isset($_POST['submit'])) {
	// Añadir Caracteres por elemento
	$idnombre = mysqli_real_escape_string($mysqli, $_POST['idnombre']);
	$name = mysqli_real_escape_string($mysqli, $_POST['name']);

	// Verificar campos Vacios
	if (empty($idnombre) || empty($name)) {
		if (empty($idnombre)) {
			echo "<font color='red'>ID esta Vacio.</font><br/>";
		}
		if (empty($name)) {
			echo "<font color='red'>Nombre esta Vacio.</font><br/>";
		}
		
		// Mostrar el Volver al Menu
		echo "<br/><a href='javascript:self.history.back();'>Atras</a>";
	} else { 
		// Si se Valido Correctamente

		// Insertar en la Base de Datos
		$result = mysqli_query($mysqli, "INSERT INTO users (`id`, `name`) VALUES ('$idnombre', '$name')");
		
		// Mostrar Mensajes
		echo "<p><font color='green'>Datos añadidos correctamente!</p>";
		echo "<a href='index.php'>Ver Resultados</a>";
	}
}
?>
</body>
</html>
