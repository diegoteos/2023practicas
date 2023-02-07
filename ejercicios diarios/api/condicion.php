<?php

include_once 'api.php';

if ($pais == 'Guatemala'){
    echo "Bienvenido por que eres de $pais <br/>";
    echo "Tu IP es: $ip <br/>";
} else {
    echo "No puedes ingresar a este sitio porque nos visitas de: $pais <br/>";
}