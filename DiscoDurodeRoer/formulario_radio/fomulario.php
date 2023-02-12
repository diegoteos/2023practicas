<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Radio</title>
</head>
<body>
    <form action="recibe.php" method="post">
        <input type="radio" name="figura" value="circulo" id="" checked>Circulo<br/>
        <input type="radio" name="figura" value="cuadrado" id="">Cuadrado<br/>
        <input type="radio" name="figura" value="tirangulo" id="">Triangulo<br/>
<br><br>
        <label for="radio">Radio</label>
        <input type="number" name="radio" id="radio">
<br><br>
        <label for="lado">Lado</label>
        <input type="number" name="radio" id="radio">
        <br><br>
        <label for="altura">Altura</label>
        <input type="number" name="radio" id="radio">
<br><br>
        <input type="submit" value="Enviar">

    </form>
</body>
</html>


<?php

if (isset($_SESSION['resultado'])){
    echo "El resultado " . $_SESSION['resultado'];
}