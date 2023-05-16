<?php
if(isset($_GET['filename'])) {
    $filename = $_GET['filename'];
    if (file_exists($filename)) {
        unlink($filename);
        echo "El archivo $filename ha sido eliminado.";
    } else {
        echo "El archivo $filename no existe.";
    }
} else {
    echo "Se debe especificar el nombre del archivo a eliminar.";
}
?>
