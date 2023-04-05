<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <title>Document</title>
</head>
<body>
    
</body>
</html>
<?php
include 'conexion.php';

$sql = "SELECT * FROM actividades";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  // Imprimir los datos en una tabla
  echo "<table><tr><th>ID</th><th>Actividad</th><th>Detalle</th><th>Fecha</th><th>Hora</th></tr>";
  while($row = $result->fetch_assoc()) {
    echo "<tr><td>".$row["id"]."</td><td>".$row["actividad"]."</td><td>".$row["detalle"]."</td><td>".$row["fecha"]."</td><td>".$row["hora"]."</td></tr>";
  }
  echo "</table>";
} else {
  echo "No hay actividades registradas";
}

$conn->close();
