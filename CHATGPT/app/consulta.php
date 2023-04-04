<?php
// Crea la conexión
include 'conexion.php';
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Verifica la conexión
if (!$conn) {
    die("Error de conexión: " . mysqli_connect_error());
}
date_default_timezone_set('America/Guatemala');
echo date('H:i:s');
// Obtener los registros con fecha y hora 10 minutos antes de la hora actual
$sql = "SELECT * FROM actividades WHERE fecha = DATE(NOW()) AND hora = TIME(DATE_SUB(NOW(), INTERVAL 10 MINUTE))";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
    // Si hay registros, realizar los recordatorios
    while ($row = mysqli_fetch_assoc($result)) {
        echo "Recordatorio: " . $row["actividad"] . " a las " . $row["hora"] . "\n";
    }
} else {
    echo "no hay ni mierda que hacer";
}

// Cerrar la conexión
mysqli_close($conn);
?>