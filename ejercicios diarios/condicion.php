
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <title>Consultas</title>
</head>

<body>


    <div class="container">
        <div class="container">
            <div class="container">
            </div>
            <form action="" method="post">
                <br>
                <h1>Consulta:</h1>
                <h3>Ingrese el numero de telefono:</h3>
                <div class="col-sm-10">
                    <br><input class="form-control" placeholder="Ingrese el numero" type="number" maxlength="8" name="consulta1" autocomplete="off">
                    <br><input class="form-control" placeholder="Ingrese el nombre" type="txt" maxlength="20" name="consulta2" autocomplete="off">
                    <br><button type="submit" class="btn btn-success"><i class="bi bi-search"></i> Consultar</button>

                </div>

            </form>
        </div>
        <br>
        <br>
</body>

</html>

<?php
if (!empty($_POST['telefono']) xor !empty($_POST['unidad'])) {
echo $_POST['telefono'];
echo $_POST['unidad'];
} else {
    echo 'fin del primer if';
}