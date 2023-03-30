<?php
$url = 'https://legal.dca.gob.gt//Scripts/pdfjs2/web/viewer.html?file=%2FContent%2FPDF%2FDocumentoDelDiaPdf.pdf';
$archivo = 'documento.pdf';

// Descargar el archivo
file_put_contents($archivo, file_get_contents($url));

// Descargar el archivo con un nombre diferente
// file_put_contents('nuevo_nombre.pdf', file_get_contents($url));

// Descargar el archivo en una carpeta específica
// file_put_contents('ruta/carpeta/documento.pdf', file_get_contents($url));
?>