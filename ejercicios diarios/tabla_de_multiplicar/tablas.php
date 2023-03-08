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
        <input type="number" name="tabla" id="">
        <input type="submit" value="multi">
    </form>
</body>

</html>
<?php


if (isset($_POST['tabla'])) {
    $tabla = $_POST['tabla'];
    echo "Usted escogio la tabla del: " . $_POST['tabla']   . "<br>";
    for ($i = 0; $i <= 10; $i++) {
        $resultado = $tabla * $i;
        echo $tabla . " * " . $i . " " . $resultado . "<br>";
    }
}
