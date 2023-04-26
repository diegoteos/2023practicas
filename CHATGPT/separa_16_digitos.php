<?php

// Abre el archivo de texto original para leer
$file = fopen("2.csv", "r");

// Crea un nuevo archivo para escribir
$newFile = fopen("1_telefonos.csv", "a");

// Lee el archivo línea por línea
while (!feof($file)) {
  $line = fgets($file);
  
  // Verifica si la línea contiene 16 dígitos seguidos
  if (preg_match('/\d{16}/', $line)) {
    // Si la línea contiene 16 dígitos seguidos, guárdala en el nuevo archivo
    fwrite($newFile, $line);
  }
}

// Cierra ambos archivos
fclose($file);
fclose($newFile);
