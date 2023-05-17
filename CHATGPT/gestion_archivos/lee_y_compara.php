<?php
$archivo1 = "archivo1.txt";
$archivo2 = "archivo2.txt";
$archivo3 = "archivo3.txt";

// Leer contenido del archivo1
$lineasArchivo1 = file($archivo1, FILE_IGNORE_NEW_LINES);

// Leer contenido del archivo2 y guardar líneas no contenidas en archivo1
$lineasArchivo2 = file($archivo2, FILE_IGNORE_NEW_LINES);
$lineasNoRepetidas = array_diff($lineasArchivo2, $lineasArchivo1);

// Guardar líneas no repetidas en archivo3
if (!empty($lineasNoRepetidas)) {
    file_put_contents($archivo3, implode("\n", $lineasNoRepetidas));
    echo "Se han guardado las líneas no repetidas en el archivo3.";
} else {
    echo "No se encontraron líneas no repetidas.";
}
?>
