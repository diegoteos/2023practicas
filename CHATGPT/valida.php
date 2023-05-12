<?php

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $entrada = $_POST['entrada'];

    // Limpiar espacios en blanco
    $entrada = trim($entrada);

    // Verificar si la entrada es un número entero de 13 dígitos
    if (ctype_digit($entrada) && strlen($entrada) === 13) {
        // La entrada es válida, continuar con el procesamiento
        // ...
        echo "La entrada es válida: " . $entrada;
    } else {
        // La entrada es inválida, emitir un mensaje de error
        echo "La entrada es inválida, debe ser un número entero de 13 dígitos";
    }
}

?>
