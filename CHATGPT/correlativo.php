<?php


$i = 197126;

$fp = fopen("PAÑALES.CSV", "r");
while (!feof($fp)) {
    $i = $i + 1;
    $linea = fgets($fp);
    $listo = "$i;" . $linea;

    // echo "'" . $linea . "',<br />";
    $fichero = fopen("A_IMPORTAR.csv", "a");
    fputs($fichero, $listo);
    fclose($fichero);
}
fclose($fp);
