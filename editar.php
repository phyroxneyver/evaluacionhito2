<?php
// Conexion a la Base de Datos
require_once("conexion.php");

// Obtener el ID
$id = $_GET['id'];

// Seleccionar Usuario
$result = mysqli_query($mysqli, "SELECT * FROM users WHERE id = $id");

// Asociar Resultados
$resultData = mysqli_fetch_assoc($result);

$name = $resultData['name'];
?>
<html>
<head>	
	<title>Editar</title>
</head>

<body>
    <h2>Editar</h2>
    <p>
	    <a href="index.php">Ir al Inicio</a>
    </p>
	
	<form name="edit" method="post" action="accioneditar.php">
		<table border="0">
			<tr> 
				<td>Nombre</td>
				<td><input type="text" name="name" value="<?php echo $name; ?>"></td>
			</tr>
			<tr>
				<td><input type="hidden" name="id" value=<?php echo $id; ?>></td>
				<td><input type="submit" name="update" value="Actualizar"></td>
			</tr>
		</table>
	</form>
</body>
</html>
