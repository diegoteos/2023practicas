<?php

$fp = fopen("texto.txt", "r");
while (!feof($fp)){
    $linea = fgets($fp);
    echo "'" . $linea . "',<br />";
}
fclose($fp);