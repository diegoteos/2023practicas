<form method="post" action="">
    <label for="url">Ingresa una URL:</label>
    <input type="text" name="url" id="url">
    <input type="submit" value="Enviar">
</form>

<?php



// Obtenemos y validamos una URL
$url = filter_input(INPUT_POST, 'url', FILTER_VALIDATE_URL);

if ($url === false) {
    echo 'La URL ingresada no es válida.';
} else {
    echo 'La URL ingresada es: ' . $url;
}