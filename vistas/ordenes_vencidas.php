
<?php

require_once("../config/conexion.php");

if(isset($_SESSION["id_usuario"])){

?>

<?php require_once("header.php");?>

  <div class="content-wrapper">
    <section class="content-header">
      <h1> Ordenes Retrasada</h1>
    
   <div id="resultados_ajax"></div>

    <div class="panel panel-default">        
        <div class="panel-body">
          <div class="btn-group text-center">
            <a class="btn btn-dark btn-lg" data-toggle="modal" data-target="#nueva_orden"><i class="fa fa-plus" aria-hidden="true"></i> Nueva Orden</a>
          </div>
       </div>
    </div>   
   
  <div class="row">
        <div class="col-xs-12">          
          <div class="box">
            <div class="box-header">
            </div>
            <!-- /.box-header -->
            <div class="box-body">
             <table id="data_ordenes_vencidas" class="table table-bordered table-striped dataTable no-footer dtr-inline collapsed">
                <thead>
                <tr>
                  <th>No. Orden</th>
                  <th>Fecha Envio</th>
                  <th>Laboratorio</th>
                  <th>Sucursal</th>
                  <th>Nombre de Paciente</th>
                  <th>Detalles</th>
                  <th>Retraso</th>
                </tr>
                </thead>                
              </table>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>

<?php require_once("footer.php");?>

    <!--AJAX VENTAS-->
<script type="text/javascript" src="js/ordenes.js"></script>

 <script>
n =  new Date();
//Año
y = n.getFullYear();
//Mes
m = n.getMonth() + 1;
//Día
d = n.getDate();

h=n.getHours()+":"+n.getMinutes()+":"+n.getSeconds();

//Lo ordenas a gusto.
document.getElementById("fecha").value = d + "/" + m + "/" + y+" - "+h;
 </script>
<?php
   
 } else {

         header("Location:".Conectar::ruta()."vistas/index.php");

     }

?>







