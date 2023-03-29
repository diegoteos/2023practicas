<?php
set_time_limit(0); // Establecer tiempo de espera ilimitado
$file_url = 'https://legal.dca.gob.gt//Scripts/pdfjs2/web/viewer.html?file=%2FContent%2FPDF%2FDocumentoDelDiaPdf.pdf';
$file_name = date('d-m-Y');
$file_name = $file_name . '.pdf';

$file_path = "pdf/$file_name";
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $file_url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 0); curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/pdf','Content-Disposition: attachment; filename="'.basename($file_url).'"'));
curl_setopt($ch, CURLOPT_TIMEOUT, 300); // 5 minutos de tiempo de espera
$file_data = curl_exec($ch);
curl_close($ch);
if (file_put_contents($file_path, $file_data)) { 
    echo "El archivo PDF tiene un tamaño de " . filesize($file_path) . " bytes.";
    echo "El archivo PDF se ha descargado correctamente.";
} else {
echo "No se pudo descargar el archivo PDF.";
}


// $url = 'https://legal.dca.gob.gt//Scripts/pdfjs2/web/viewer.html?file=%2FContent%2FPDF%2FDocumentoDelDiaPdf.pdf'; 
    
// // Use basename() function to 
// return the file  
// echo $file_name = basename($url); 
     
// // Use file_get_contents() function 
// // to get the file from url and use 
// // file_put_contents() function to 
// // save the file by using base name 
// if(file_put_contents( $file_name, 
//       file_get_contents($url))) { 
//     echo "File downloaded successfully"; 
// } 
// else { 
//     echo "File downloading failed."; 
// }

// $nombre = basename('https://legal.dca.gob.gt//Scripts/pdfjs2/web/viewer.html?file=%2FContent%2FPDF%2FDocumentoDelDiaPdf.pdf');
// $file_path = "pdf/$nombre";
// header('Cache-Control: public');
// header('Content-description: File Transfer');
// header("Content-Disposition: attachment; filename=$nombre");
// header("Content-Type: application/zip");
// header("Content-Transfer-Encoding: binary");

// readfile($file_path);
// exit();
// 
