<?php

$ip = $_SERVER['REMOTE_ADDR'];

$fichero = fopen("visitas.txt", "a");

fputs($fichero, $ip . "\n");

fclose($fichero);
