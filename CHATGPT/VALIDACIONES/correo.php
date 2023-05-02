<?php
// Obtenemos y validamos una dirección de correo electrónico
$email = filter_input(INPUT_POST, 'email', FILTER_VALIDATE_EMAIL);

if ($email === false) {
    echo 'La dirección de correo electrónico ingresada no es válida.';
} else {
    echo 'La dirección de correo electrónico ingresada es: ' . $email;
}