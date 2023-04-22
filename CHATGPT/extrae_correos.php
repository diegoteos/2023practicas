<?php
// Abrimos el archivo de texto
$file = fopen("co.txt", "r");

// Leemos el contenido del archivo
$content = fread($file, filesize("co.txt"));

// Buscamos todos los correos electrónicos usando una expresión regular
preg_match_all('/[\w.-]+@[\w.-]+\.[a-zA-Z]{2,6}/', $content, $matches);

// Cerramos el archivo
fclose($file);

// Creamos un nuevo archivo txt para guardar los correos electrónicos encontrados
$newfile = fopen("correos.txt", "w");

// Recorremos los correos electrónicos encontrados y los escribimos en el nuevo archivo
foreach($matches[0] as $email){
    fwrite($newfile, $email."\n");
}

// Cerramos el archivo
fclose($newfile);

// Mensaje de confirmación
echo "Se han extraído y guardado los correos electrónicos en el archivo correos.txt";
?>
