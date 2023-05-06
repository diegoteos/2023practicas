<?php
// Verificar si se enviaron los parámetros mediante POST
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  $parametros = $_POST['parametros'];
  
  // Validar que se recibieron los parámetros necesarios
  if (!empty($parametros)) {
    // Validar que los números y letras sean válidos
    $validos = preg_match('/^[0-9]+,[0-9]+,[0-9]+,[b-df-hj-np-tv-z]{3}$/i', $parametros);
    
    // Verificar si se cumplieron todas las validaciones
    if ($validos) {
      // Separar los números y las letras en variables distintas
      list($num1, $num2, $num3, $letras) = explode(',', $parametros);
      
      // Hacer lo que se requiera con los parámetros
      echo "Los parámetros son válidos";
    } else {
      echo "Los parámetros no son válidos";
    }
  } else {
    echo "No se recibieron los parámetros necesarios";
  }
} else {
  echo "Este script solo acepta solicitudes POST";
}
?>
