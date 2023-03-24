<?php
// Establecer el tipo de contenido
header('Content-Type: image/png');
// Crear la imagen
$im = imagecreatetruecolor(500, 100);
// Crear algunos colores
$blanco = imagecolorallocate($im, 255, 255, 255);
$gris = imagecolorallocate($im, 170, 170, 170);
$rojo = imagecolorallocate($im, 201, 101, 115);
imagefilledrectangle($im, 0, 0, 499, 99, $blanco);
// El texto a dibujar
$texto = 'Texto con sombra';
// Reemplace la ruta por la de su propia fuente
$fuente = realpath('../../fonts/Quixley.ttf');
// Añadir algo de sombra al texto
imagettftext($im, 50, 0, 43, 63, $gris, $fuente, $texto);
// Añadir el texto
imagettftext($im, 50, 0, 40, 60, $rojo, $fuente, $texto);
// Usar imagepng() resultará en un texto más claro comparado con imagejpeg()
imagepng($im);
imagedestroy($im);
?>