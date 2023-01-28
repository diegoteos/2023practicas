<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HTML con PHP</title>
</head>
<body>
    <?php
        $ruta = "https://media.istockphoto.com/id/177794699/es/foto/lobo-gris-retrato.jpg?s=612x612&w=0&k=20&c=qAiwRte1ZceIxyok1IuzX88-ppmof9Ci9Aq7LZQCZ84=";
        echo "Hola mundo";
    ?>

    <img src="<?php echo $ruta; ?>" alt="">
</body>
</html>