<?php
$nombre = "mundo cruel";
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Imprime texto y etiquetas con PHP</title>
</head>

<body>

    <?php
    echo "<b>Hola mundo, esto es una integracion de PHP con HTML</b>";
    ?>
    <br>
    <?=
    "<i>Hola mundo, esto es una integracion de PHP con HTML</i>"
    ?>

    <h1>Hola <?= $nombre ?></h1>

</body>

</html>