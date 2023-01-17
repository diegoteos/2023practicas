<?php
$se_hablo_de_bruno = true;
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Condicionales PHP</title>
</head>

<body>
    <?php
    if ($se_hablo_de_bruno) {
        echo "<b>Esta condicional es verdadera </b>";
    } else {
        echo "<b>Esta condicional NO es verdadera </b>";
    }
    ?>

    <br>

    <?php
    if ($se_hablo_de_bruno) { ?>
        <b>Si se hablo</b>
    <?php } else { ?>
        <b>No se hablo</b>
    <?php } ?>

    <br>

    <?php
    if ($se_hablo_de_bruno) : ?>
        <b>Si se hablo</b>
    <?php else : ?>
        <b>No se hablo</b>
    <?php endif; ?>

</body>

</html>