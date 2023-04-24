<?php
// Leer archivo HTML
$html = file_get_contents('archivo.html');

// Crear objeto DOM
$dom = new DOMDocument();

// Cargar HTML en objeto DOM
$dom->loadHTML($html);

// Obtener elementos <li> del HTML
$li_elements = $dom->getElementsByTagName('li');

// Calcular número de elementos <li>
$num_elements = $li_elements->length;

// Calcular número de elementos por arreglo
$num_per_array = ceil($num_elements / 5);

// Crear arreglo vacío con 5 arreglos
$arrays = array_fill(0, 5, array());

// Iterar sobre elementos <li> y asignarlos a los arreglos correspondientes
$i = 0;
foreach ($li_elements as $element) {
    $array_index = floor($i / $num_per_array);
    $arrays[$array_index][] = $element->nodeValue;
    $i++;
}

// Rellenar arreglos vacíos con valores nulos si es necesario
foreach ($arrays as &$array) {
    while (count($array) < $num_per_array) {
        $array[] = null;
    }
}

// Imprimir arreglo resultante
print_r($arrays);
