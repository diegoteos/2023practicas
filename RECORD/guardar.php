<?php
// Obtener los datos del formulario
$conexion = mysqli_connect("localhost", "root", "", "recordatorios");
if(!empty($_POST)){
$actividad = $_POST['actividad'];
$detalle = $_POST['detalle'];
$fecha = $_POST['fecha'];
$hora = $_POST['hora'];

// Conectar a la base de datos

// Insertar los datos en la tabla
$query = "INSERT INTO actividades (actividad, detalle, fecha, hora) VALUES ('$actividad', '$detalle', '$fecha', '$hora')";
mysqli_query($conexion, $query);

// Conectar a la base de datos
header('location:inicio.html');
}
date_default_timezone_set('America/Guatemala');
$fecha = date('Y-m-d');

// Realizar la consulta SELECT
$query = "SELECT * FROM actividades where fecha = '$fecha'";
$resultado = mysqli_query($conexion, $query);

// Recorrer los resultados y mostrarlos
while ($fila = mysqli_fetch_assoc($resultado)) {
    echo "Actividad: " . $fila['actividad'] . "<br>";
    echo "Detalle: " . $fila['detalle'] . "<br>";
    echo "Fecha: " . $fila['fecha'] . "<br>";
    echo "Hora: " . $fila['hora'] . "<br><br>";
}

// Liberar memoria y cerrar la conexión
mysqli_free_result($resultado);

// Cerrar la conexión
mysqli_close($conexion);

// Redirigir a la página principal
// header("Location: index.php");
