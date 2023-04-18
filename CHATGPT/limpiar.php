<?php
// Nombre del archivo de texto a leer
$archivo = "ejemplo.txt";

// Abrir el archivo en modo lectura
$archivo_handle = fopen($archivo, "r");

// Inicializar un array vacío
$lineas = array();

// Leer el archivo línea por línea
while (!feof($archivo_handle)) {
    $linea = fgets($archivo_handle);
    // Agregar la línea al array
    $lineas[] = trim($linea);
}

// Cerrar el archivo
fclose($archivo_handle);

// Mostrar el contenido del array
print_r($lineas);
?>