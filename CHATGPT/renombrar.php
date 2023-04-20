<?php

// Ruta del directorio donde se encuentran los archivos originales
$ruta_origen = 'M:/archivos/documentos';

// Ruta del directorio donde se guardarán los archivos renombrados
$ruta_destino = 'M:/archivos/3/';

// Abre el directorio de origen
$directorio_origen = opendir($ruta_origen);

// Recorre todos los archivos en el directorio de origen
while (false !== ($archivo = readdir($directorio_origen))) {
    // Verifica si el archivo tiene extensión .php
    if (pathinfo($archivo, PATHINFO_EXTENSION) == 'php') {
        // Crea el nuevo nombre de archivo con extensión .html
        $nuevo_nombre_archivo = pathinfo($archivo, PATHINFO_FILENAME) . '.html';
        
        // Renombra el archivo y mueve a la carpeta de destino
        if (rename($ruta_origen . '/' . $archivo, $ruta_destino . '/' . $nuevo_nombre_archivo)) {
            // echo "Se ha renombrado el archivo '" . $archivo . "' a '" . $nuevo_nombre_archivo . "' y se ha movido a la carpeta de destino.<br>";
        } else {
            echo "No se pudo renombrar el archivo '" . $archivo . "'.<br>";
        }
    }
}

// Cierra los directorios
closedir($directorio_origen);

?>
