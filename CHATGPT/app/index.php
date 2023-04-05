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
// Conectar a la base de datos
require 'conexion.php';
// Consultar las actividades de la base de datos
$query = "SELECT * FROM actividades";
$resultado = mysqli_query($conn, $query);
?>

<!DOCTYPE html>
<html>
<head>
	<title>CRUD de Actividades</title>
</head>
<body>
	<h1>CRUD de Actividades</h1>

	<!-- Botón para agregar una nueva actividad -->
	<a href="create.php">Agregar actividad</a>

	<!-- Lista de actividades -->
	<ul>
		<?php while($fila = mysqli_fetch_assoc($resultado)) { ?>
			<li>
				<strong><?php echo $fila["actividad"]; ?></strong><br>
				<?php echo $fila["detalle"]; ?><br>
				Fecha: <?php echo $fila["fecha"]; ?><br>
				Hora: <?php echo $fila["hora"]; ?><br>
				<!-- Botones para editar y eliminar la actividad -->
				<a href="edit.php?id=<?php echo $fila["id"]; ?>">Editar</a>
				<form action="delete.php" method="post" style="display: inline;">
					<input type="hidden" name="id" value="<?php echo $fila["id"]; ?>">
					<button type="submit">Eliminar</button>
				</form>
			</li>
		<?php } ?>
	</ul>
</body>
</html>
