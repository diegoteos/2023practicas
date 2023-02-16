<?php include_once "includes/header.php";
include "../conexion.php";
$id_user = $_SESSION['idUser'];
$permiso = "clientes";
$sql = mysqli_query($conexion, "SELECT p.*, d.* FROM permisos p INNER JOIN detalle_permisos d ON p.id = d.id_permiso WHERE d.id_usuario = $id_user AND p.nombre = '$permiso'");
$existe = mysqli_fetch_all($sql);
if (empty($existe) && $id_user != 1) {
    header("Location: permisos.php");
}


//////


if (!empty($_POST)) {
    $alert = "";
  
        $id_cliente = $_GET['idcliente'];
        //$fecha = $_GET['fecha'];
        $fecha = $_POST['fecha'];
        $nombrevendedor = $_POST['nombrevendedor'];
        $fecharequisicion = $_POST['fecharequisicion'];
        $numeroorden = $_POST['numeroorden'];
        $tiempoentregarequisicion = $_POST['tiempoentregarequisicion'];
        $personaquesolicita = $_POST['personaquesolicita'];
        $personaqueautoriza = $_POST['personaqueautoriza'];
        $numerorequisicion = $_POST['numerorequisicion'];

        $query_insert = mysqli_query($conexion, "INSERT INTO remision(id_cliente,fecha,nombrevendedor,fecharequisicion,numeroorden,tiempoentregarequisicion,personaquesolicita,personaqueautoriza,numerorequisicion) values ($id_cliente,'$fecha','$nombrevendedor','$fecharequisicion','$numeroorden','$tiempoentregarequisicion','$personaquesolicita','$personaqueautoriza',$numerorequisicion)");

        
        
            if ($query_insert) {
                $alert = '<div class="alert alert-success" role="alert">
                                    Requisicion ingresada con exito
                                </div>';
            } else {
                $alert = '<div class="alert alert-danger" role="alert">
                                    Error al registrar
                            </div>';
            }

}


//////

// Mostrar Datos

if (empty($_REQUEST['id'])) {
    header("Location: lista_ventas.php");
}
$id = $_REQUEST['id'];
$orden = $_GET['orden'];
$sDatos = "SELECT v.id,v.fecha,v.numeroorden, v.nombrevendedor, c.nombre, c.NIT, c.idcliente
  FROM ventas v
 INNER JOIN cliente c 
 ON v.id_cliente = c.idcliente
 WHERE v.numeroorden = $orden";
 //die($sDatos);
$sql = mysqli_query($conexion, $sDatos);
$result_sql = mysqli_num_rows($sql);
if ($result_sql == 0) {
    header("Location: lista_ventas.php");
} else {
    if ($data = mysqli_fetch_assoc($sql)) {
        //echo "<pre>";
        //print_r($data);
        //echo "</pre>";
        //die();
        //$id = $data['id'];
    
       // $estadoorden = $data['estadoorden'];
       // $numerofactura = $data['numerofactura'];
       $fecha = $data['fecha'];
       $nombrevendedor = $data['nombrevendedor'];
       $numeroorden = $data['numeroorden'];
       $NIT = $data['NIT'];
       $nombre = $data['nombre'];

    }
}
?>
<!-- Begin Page Content -->
<div class="container-fluid">

    <div class="row">
        <div class="col-lg-6 m-auto">
            <div class="card">
                <div class="card-header bg-primary text-white">
                    Generar Requisicion
                </div>
                <div class="card-body">
                    <form class="" action="" method="post">
                        <?php echo isset($alert) ? $alert : ''; ?>
                        <input type="hidden" name="id" value="<?php echo $id; ?>">
                        <?php /* Si esto es el ID de la venta, necesitas mandar el de orden, no el ID que estabas recibiendo */ ?>
                    
              
                        <div class="form-group">
                            <label for="numeroorden">NUMERO OP</label>
                            <input type="text" placeholder=" " name="numeroorden" class="form-control" id="numeroorden" value="<?php echo $numeroorden; ?>">
                        </div>


                          <div class="form-group">
                            <label for="nombrevendedor">NOMBRE VENDEDOR</label>
                            <input type="text" placeholder=" " name="nombrevendedor" class="form-control" id="nombrevendedor" value="<?php echo $nombrevendedor; ?>">
                        </div>

                        <div class="form-group">
                            <label for="fecha">FECHA OP</label>
                            <input type="text" placeholder=" " name="fecha" class="form-control" id="fecha" value="<?php echo $fecha; ?>">
                        </div>


                        <div class="form-group">
                            <label for="NIT">NIT CLIENTE</label>
                            <input type="text" placeholder=" " name="NIT" class="form-control" id="NIT" value="<?php echo $NIT; ?>">
                        </div>


                        <div class="form-group">
                            <label for="nombre">NOMBRE CLIENTE</label>
                            <input type="text" placeholder=" " name="nombre" class="form-control" id="nombre" value="<?php echo $nombre; ?>">
                        </div>

                        <div class="form-group">
                            <label for="numerorequisicion">NUMERO REQUISICION</label>
                            <input type="text" placeholder=" " name="numerorequisicion" class="form-control" id="numerorequisicion" value="<?php echo $numeroorden; ?>">
                        </div>


                        <div class="form-group">
                            <label for="fecharequisicion">FECHA REQUISICION</label>
                             <input type="date" name="fecharequisicion" id="fecharequisicion" class="form-control" required >
                        </div>


                        <div class="form-group">
                            <label for="personaquesolicita">PERSONA QUE SOLICITA</label>
                             <input type="text" name="personaquesolicita" id="personaquesolicita" class="form-control" value="YERALDIN SANCHEZ" required >
                        </div>
 
                        <div class="form-group">
                            <label for="personaqueautoriza">PERSONA QUE AUTORIZA</label>
                             <input type="text" name="personaqueautoriza" id="personaqueautoriza" class="form-control" value="JOHN GIRALDO"required >
                        </div>


                        <div class="form-group">
                            <label for="numeroorden">TIEMPO ENTREGA EQUIPOS REQUESICION</label>
                             <input type="date" name="tiempoentregarequisicion" id="tiempoentregarequisicion" class="form-control"  >
                        </div>

                        <div class="form-group">
                            <button type="button" class="btn btn-default hidden-lg btnAgregarProducto">Agregar producto</button>
                        </div>

                        <div class="form-group row nuevoProducto">
                        </div>

                        <div class="form-group">
                            <label for="item">ITEM PRODUCTOS</label>
                             <input type="text" name="item" id="item" class="form-control" value="N°:   DESCRIPCION:    CANTIDAD:    PRECIO: "  required >
                        </div>

                        <button type="submit" class="btn btn-primary"><i class="fas fa-user-edit"></i>Guardar Requisicion</button>
                        <a href="lista_ventas.php" class="btn btn-danger">Atras</a>
                    </form>
                </div>
            </div>
        </div>
    </div>


</div>

<script type="text/javascript">
    $(".btnAgregarProducto").click(function(){

        let numProducto = 55;
            
                $(".nuevoProducto").append(

            '<div class="row" style="padding:5px 15px">'+

              '<!-- Descripción del producto -->'+
              
              '<div class="col-xs-6" style="padding-right:0px">'+
              
                '<div class="input-group">'+
                  
                  '<span class="input-group-addon"><button type="button" class="btn btn-danger btn-xs quitarProducto" idProducto><i class="fa fa-times"></i></button></span>'+

                  '<input  class="form-control nuevaDescripcionProducto" name="nuevaDescripcionProducto" required>'+ 

                '</div>'+

              '</div>'+

              '<!-- Cantidad del producto -->'+

              '<div class="col-xs-3 ingresoCantidad">'+
                
                 '<input type="number" class="form-control nuevaCantidadProducto" name="nuevaCantidadProducto" min="1" value="0" stock nuevoStock required>'+

              '</div>' +

              '<!-- Precio del producto -->'+

              '<div class="col-xs-3 ingresoPrecio" style="padding-left:0px">'+

                '<div class="input-group">'+

                  '<span class="input-group-addon">S/ </span>'+
                     
                  '<input type="text" class="form-control nuevoPrecioProducto" precioReal="" name="nuevoPrecioProducto" required>'+
     
                '</div>'+
                 
              '</div>'+

            '</div>');


    })
</script>