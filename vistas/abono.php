
<?php

   require_once("../config/conexion.php");

    if(isset($_SESSION["correo"])){



       /*Se llaman los modelos y se crean los objetos para llamar el numero de registros en el menu lateral izquierdo y en el home*/
      
      
      require_once("../modelos/Ventas.php");

      
       
       $venta = new Ventas();



        $datos_venta=$venta->get_ventas_anio_actual();  


?>


<?php require_once("header.php");?>

     
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Inicio
      </h1>
      
    </section>

    <!-- Main content -->
    <section class="content">

       <div class="row panel_modulos">

       	   <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">

              
              

               <h2>CLIENTES</h2>
             </a>

            </div>
            <div class="icon">
              <i class="fa fa-users" aria-hidden="true""></i>
            </div>
            
          </div>
        </div>
        <!-- ./col -->


         <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-green">
            <div class="inner">

          
           
              <h2>VENTAS</h2>
           </a>

            </div>
            <div class="icon">
              <i class="fa fa-shopping-cart" aria-hidden="true"></i>
            </div>
           
          </div>
        </div>
        <!-- ./col -->

        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-yellow">
            <div class="inner">
                           
              <h2>PROVEEDORES</h2>
             </a>

            </div>
            <div class="icon">
              <i class="fa fa-truck" aria-hidden="true"></i>
            </div>
            
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-red">
            <div class="inner">

             <a href="<?php echo Conectar::ruta()?>vistas/compras.php">
            
              <h2>COMPRAS</h2>
            </a>

            </div>
            <div class="icon">
              <i class="fa fa-cart-plus" aria-hidden="true"></i>
            </div>
            
          </div>
        </div>
        <!-- ./col -->
       	
       </div><!--ROW-->


   


<?php
     
     } else {

        header("Location:".Conectar::ruta()."vistas/index.php");
        exit();
     }
  ?>


