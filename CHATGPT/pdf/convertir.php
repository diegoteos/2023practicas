<?php
require 'vendor/autoload.php';

use \setasign\Fpdi\Tcpdf\Fpdi;

// Ruta al archivo PDF
$pdfFilePath = 'archivo.pdf';

// Crear una instancia de la clase Fpdi
$pdf = new Fpdi();

// Agregar una página del archivo PDF
$pdf->setSourceFile($pdfFilePath);
$page = $pdf->importPage(1);
$pdf->addPage();
$pdf->useImportedPage($page);

// Obtener el texto de la página
$text = $pdf->getText();

// Guardar el texto en un archivo de texto
$txtFilePath = 'ruta/de/salida.txt';
file_put_contents($txtFilePath, $text);

echo 'El texto se ha extraído del archivo PDF y se ha guardado en ' . $txtFilePath;
?>
