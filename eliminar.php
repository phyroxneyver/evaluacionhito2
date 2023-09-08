<?php
// Conexion a la Base de Datos
require_once("conexion.php");

// Obtener el ID
$id = $_GET['id'];

// Eliminar de la Base de Datos
$result = mysqli_query($mysqli, "DELETE FROM users WHERE id = $id");

// Actualizar Menu Principal
header("Location:index.php");
