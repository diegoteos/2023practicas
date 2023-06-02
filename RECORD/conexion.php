<?php
// CONEXION A LA BASE DE DATOS
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "recordatorios";

// Crea la conexión
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Verifica la conexión
if (!$conn) {
    die("Error de conexión: " . mysqli_connect_error());
}
