<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="" method="post">
        <input type="text" name="valor" id="">
        <input type="submit" value="Enviar">
    </form>
</body>
</html>

<?php
if (!$_POST){

    $permitted_chars = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';

    $codigo =  substr(str_shuffle($permitted_chars), 0, 5);
    
    session_start();
    $captcha = $_SESSION['valor'] = $codigo;
    echo $captcha;
}




if (!empty($_POST['valor'])){
    session_start();
    $valor = $_POST['valor'];
    echo "<br>El valor recibido es: " . $valor;
    if ($valor == $_SESSION['valor']) {
        echo "<br>Si son iguales";
        session_destroy();
    } else{
        echo "<br>Nada que ver";
        session_destroy();
    }
}
// if (!isset($_SESSION['id'])) {
//     $_SESSION['id'] = $row['id'];
//     header('Location: index.php');
// }
?>