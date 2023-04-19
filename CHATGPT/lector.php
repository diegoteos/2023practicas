<?php
// Abre el archivo original en modo lectura
$filename = "archivo_original.txt";
$file = fopen($filename, "r");

// Establece el número máximo de líneas por archivo de salida
$max_lines = 1000000;

// Crea variables para contar líneas y archivos de salida
$count = 0;
$file_number = 1;

// Abre el primer archivo de salida en modo escritura
$output_file = fopen("archivo_salida_{$file_number}.txt", "w");

// Lee cada línea del archivo original y escribe en el archivo de salida
while (!feof($file)) {
  $line = fgets($file);
  
  // Escribe la línea en el archivo de salida actual
  fwrite($output_file, $line);
  
  // Incrementa el contador de líneas
  $count++;
  
  // Si el contador llega a $max_lines, cierra el archivo actual y abre uno nuevo
  if ($count == $max_lines) {
    fclose($output_file);
    $file_number++;
    $count = 0;
    $output_file = fopen("archivo_salida_{$file_number}.txt", "w");
  }
}

// Cierra los archivos
fclose($output_file);
fclose($file);
?>
