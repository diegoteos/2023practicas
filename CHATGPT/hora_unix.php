<?php


$unix_time = 1655843935;

// Crea un objeto DateTime a partir de la fecha Unix
$date = new DateTime();
$date->setTimestamp($unix_time);

// Define la zona horaria de origen
$from_timezone = new DateTimeZone('UTC');

// Define la zona horaria de destino
$to_timezone = new DateTimeZone('America/Mexico_City');

// Cambia la zona horaria del objeto DateTime
$date->setTimezone($to_timezone);

// Formatea la fecha y hora
$formatted_date = $date->format('Y-m-d H:i:s');

echo $formatted_date; // Resultado: 2021-05-11 08:00:54
?>
