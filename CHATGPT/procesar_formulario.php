<?php
// Comprobamos si se han enviado los datos del formulario
if ($_SERVER["REQUEST_METHOD"] == "POST") {
	// Capturamos los datos enviados
	$fecha = $_POST["fecha"];
	$hora = $_POST["hora"];
	$correo = $_POST["correo"];
	$nombre = $_POST["nombre"];
	$detalle = $_POST["detalle"];

	// Imprimimos los datos por pantalla
	echo "Fecha: " . $fecha . "<br>";
	echo "Hora: " . $hora . "<br>";
	echo "Correo electrónico: " . $correo . "<br>";
	echo "Nombre: " . $nombre . "<br>";
	echo "Detalle: " . $detalle . "<br>";
}
?>
