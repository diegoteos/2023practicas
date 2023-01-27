<?php

$fichero = fopen("ar/datos.txt", "w");


fputs($fichero, "Linea 1 \n");
fputs($fichero, "Linea 2 \n");
fputs($fichero, "Linea 3 \n");
fputs($fichero, "Linea 4 \n");
fputs($fichero, "Linea 5 \n");

fclose($fichero);

echo "Se ha escrito en el fichero de forma correcta";