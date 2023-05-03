<form method="post" action="">
    <label for="numero">Ingresa un numero entero:</label>
    <input type="number" name="numero" id="url">
    <input type="submit" value="Enviar">
</form>

<?php

// Obtenemos y validamos un número entero
$numero = filter_input(INPUT_POST, 'numero', FILTER_VALIDATE_INT);

if ($numero === false) {
    echo 'El número ingresado no es válido.';
} else {
    echo 'El número ingresado es: ' . $numero;
}