<?php

include_once 'api.php';

if ($pais == 'Guatemala'){
    echo "Bienvenido por que eres de $pais <br/>";
    echo "Tu IP es: $ip <br/>";
} else {
    echo "Que haces aca? no eres bienvenido por no estar en la lista de invitados...";
}