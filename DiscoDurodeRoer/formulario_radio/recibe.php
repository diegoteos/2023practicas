<?php

session_start();


$figura = $_POST['figura'];
$resultado = 0;


switch ($figura) {
    case 'circulo':
        $radio = $_POST['radio'];
        $resultado = ($radio ** 2) * pi(); 
        break;

    case 'cuadrado':
        $lado = $_POST['lado'];
        $resultado = $lado * $lado;
        break;

    case 'triangulo':
        $base = $_POST['base'];
        $altura = $_POST['altura'];
        $resultado = ($base * $altura) / 2;
        break;
}

$_SESSION['resultado'] = $resultado;

header('Location: formulario.php');