<?php

require_once 'conexion.php';

$search = $_POST['search'];
if (!empty($_POST['search'])) {
    $query = "SELECT * FROM `registros` WHERE `placa` LIKE '%$search%'";
    $result = mysqli_query($connection, $query);
    if (!$result) {
        die('Error de consulta ' . mysqli_error($connection));
    }
    $json = array();
    while($row = mysqli_fetch_array($result)){
        $json[] = array(
            'id_registro' => $row['id_registro'],
            'tipo_placa' => $row['tipo_placa'],
            'placa' => $row['placa'],
            'fecha_hora' => $row['fecha_hora'],
        );
    }
    $jsonstring = json_encode($json);
    echo $jsonstring;
}
