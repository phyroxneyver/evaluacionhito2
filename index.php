<?php
// Conexion a la Base de Datos
require_once("conexion.php");

// Resultados Ordenados del Ultimo al Primero
$result = mysqli_query($mysqli, "SELECT * FROM users ORDER BY id DESC");
?>

<html>
<head>	
	<title>Evaluacion Hito 2</title>
</head>

<body>
	<h2>Usuarios</h2>
	<p>
		<a href="registrar.php">Añadir Nuevo</a>
	</p>
	<table width='80%' border=0>
		<tr bgcolor='#DDDDDD'>
			<td><strong>Nombre</strong></td>
			<td><strong>Acciones</strong></td>
		</tr>
		<?php
		// Linea de Acciones
		while ($res = mysqli_fetch_assoc($result)) {
			echo "<tr>";
			echo "<td>".$res['name']."</td>";
			echo "<td><a href=\"editar.php?id=$res[id]\">Editar</a> | 
			<a href=\"eliminar.php?id=$res[id]\" onClick=\"return confirm('Estas seguro que deseas Borrar?')\">Eliminar</a></td>";
		}
		?>
	</table>
</body>
</html>
