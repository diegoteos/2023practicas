<?php


// Abre los archivos en modo de lectura
$archivo1 = fopen('SIN_LINEAS_REPETIDAS.csv', 'r');
$archivo2 = fopen('renap.csv', 'r');

// Abre un nuevo archivo en modo de escritura
$archivo_nuevo = fopen('PAÑALES.CSV', 'w');

// Crea un arreglo para almacenar las líneas del archivo2
$lineas_archivo2 = array();

// Lee las líneas del archivo2 y las almacena en el arreglo
while (!feof($archivo2)) {
  $linea = fgets($archivo2);
  $lineas_archivo2[] = trim($linea);
}

// Recorre el archivo1 línea por línea
while (!feof($archivo1)) {
  $linea = fgets($archivo1); // Lee la línea actual del archivo1

  // Si la línea actual no se encuentra en el arreglo de líneas del archivo2, se escribe en el archivo nuevo
  if (!in_array(trim($linea), $lineas_archivo2)) {
    fwrite($archivo_nuevo, $linea);
  }
}

// Cierra los archivos
fclose($archivo1);
fclose($archivo2);
fclose($archivo_nuevo);
?>
