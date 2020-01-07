
<?php

   require_once("../config/conexion.php");

    if(isset($_SESSION["id_usuario"])){
        

?>


<!-- INICIO DEL HEADER - LIBRERIAS -->
<?php require_once("header.php");?>

<!-- FIN DEL HEADER - LIBRERIAS -->


  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    
   
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       Consulta de Ventas
       
      </h1>
      
    </section>

    <!-- Main content -->
    <section class="content">
    
   <div id="resultados_ajax"></div>

     <div class="panel panel-default">
        
        <div class="panel-body">

         <div class="btn-group text-center">
          <a href="ventas.php" id="add_button" class="btn btn-dark btn-lg" ><i class="fa fa-plus" aria-hidden="true"></i> Nueva Venta</a>
         </div>

       </div>
      </div>


       <!--VISTA MODAL PARA VER DETALLE VENTA EN VISTA MODAL-->
     <?php require_once("modal/detalle_venta_modal.php");?>
    
   
      <div class="row">
        <div class="col-xs-12">
          
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Lista de Ventas</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
             <table id="ventas_data" class="table table-bordered table-striped dataTable no-footer dtr-inline collapsed">
                <thead>
                <tr>
                  <th>Ver Detalle</th>
                  <th>Fecha Venta</th>
                  <th>Número Venta</th>
                  <th>paciente</th>
                  <th>Vendedor</th>
                  <th>Tipo de Pago</th>
                  <th>Monto</th>
                  <th>Estado</th>
                  <th>Fecha</th>
                  <th>Dif</th>                
                </tr>
                <tr>
                <th style="visibility: hidden;">Ver Detalle</th>
                  <th style="visibility: hidden;">Fecha Venta</th>
                  <th style="visibility: hidden;">Número Venta</th>
                  <th >paciente</th>
                  <th style="visibility: hidden;">Vendedor</th>
                  <th style="visibility: hidden;">Tipo de Pago</th>
                  <th
                  style="visibility: hidden;">Monto</th>
                  <th>Estado</th>  
                  <th>Fecha</th>
                  <th>Dif</th>               
                </tr>
                </thead>
                
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->


   <?php require_once("footer.php");?>

    <!--AJAX VENTAS-->
<script type="text/javascript" src="js/ventas.js"></script>


<?php
   
 } else {

         header("Location:".Conectar::ruta()."vistas/index.php");

     }

?>