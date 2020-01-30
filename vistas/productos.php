<?php

   require_once("../config/conexion.php");

    if(isset($_SESSION["id_usuario"])){

       require_once("../modelos/Categorias.php");

       $categoria = new Categoria();

       $cat = $categoria->get_categorias();
       
       
?>



<?php 
  require_once("header.php");
?>

<?php require_once("modal/agregar_lentes.php");?>
    <?php if($_SESSION["productos"]==1)
     {

     ?>
<script type="text/javascript">
    $(document).ready(function() {
        $('#agregar').click(function() {
            // Recargo la página
            location.reload();
        });
    });
</script>


  <!--Contenido-->
      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">        
    <section class="content">            
    <div id="resultados_ajax"></div>

    <?php require_once("modal/agregar_accesorios.php");?>

             <h2 align="center">INVENTARIO</h2>

            <div class="row">
              <div class="col-md-12">
                  <div class="box">
                    <div class="box-header with-border">
              <div class="col-sm-1">
                
              </div>
              <h3 class="box-title">
              <button class="btn btn-dark btn-md" id="add_button" data-toggle="modal" data-target="#productoModal"><span class="glyphicon glyphicon-sunglasses" aria-hidden="true"></span> Crear Aros</button></h3>
              <!--Boton Agregar Lentes-->
              <h3 class="box-title">
              <button class="btn btn-blue btn-md" data-toggle="modal" data-target="#agregarLentes"><span class="glyphicon glyphicon-sunglasses" aria-hidden="true"></span> Crear Lentes</button></h3>
              <!--Boton Agregar Accesorios-->
              <h3 class="box-title">
            <button class="btn btn-dark btn-md" data-toggle="modal" data-target="#agregarAccesorio"><span class="glyphicon glyphicon-tasks" aria-hidden="true"></span> Crear Accesorios</button></h3>
            
            <h3 class="box-title">
            <button class="btn btn-blue btn-md" data-toggle="modal" data-target="#agregarAR"><span class="glyphicon glyphicon-tasks" aria-hidden="true"></span> Crear AR</button></h3>

            <button class="btn btn-dark btn-md" data-toggle="modal" data-target="#agregar_photo"><span class="glyphicon glyphicon-tasks" aria-hidden="true"></span> Crear Photosensible</button></h3>

            <a href="bodegas.php"><button class="btn btn-edit btn-md" id="add_button" onclick="limpiar()"<span class="glyphicon glyphicon-import" aria-hidden="true"></span> Bodegas</button></h1></a>

           <a href="envios.php"><button class="btn btn-dark btn-md" id="add_button" id="add_button" data-toggle="modal" data-target="#orden_envio"><span class="glyphicon glyphicon-share-alt"></span> Envios</button></h1></a>              

                        <div class="box-tools pull-right">

                        </div>
                    </div>
                    <!-- /.box-header -->
                    <!-- centro -->
                    <div class="panel-body table-responsive">
                          
                          <table id="producto_data" class="table table-bordered table-striped">

                            <thead>
                              
                                <tr>
                                <th width="10%">Cod.</th>
                                <th width="10%">Modelo</th>
                                <th width="12%">Marca</th>
                                <th width="10%">Color</th>
                                <th width="5%">Precio de Venta</th>
                                <th width="10%">Stock</th>
                                <th width="10%">Medidas</th>
                                
                               
                                <th width="10%">Editar</th>
                                <th width="10%">Eliminar</th>
                                



                                </tr>
                            </thead>

                            <tbody>
                              

                            </tbody>


                          </table>
                     
                    </div>
                  
                    <!--Fin centro -->
                  </div><!-- /.box -->
              </div><!-- /.col -->
          </div><!-- /.row -->
      </section><!-- /.content -->

    </div><!-- /.content-wrapper -->
  <!--Fin-Contenido-->
    
 <!--FORMULARIO VENTANA MODAL-->
<div class="modal fade" id="productoModal" role="dialog">
    <div class="modal-dialog modal-lg">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title"><span class="glyphicon glyphicon-search" aria-hidden="true"></span>Agregar Aros</h4>
        </div>
        <div class="modal-body">

    <form class="form-horizontal" method="post" id="producto_form" enctype="multipart/form-data">
    <div class="form-group row">
     
      <div class="col-xs-4">
        <label for="ex1">Marca</label>
        <input class="form-control" id="marca" name="marca" type="text" placeholder="marca" onkeyup="mayus(this);" required>
      </div>
      <div class="col-xs-4">
        <label for="ex3">Modelo</label>
        <input class="form-control" id="modelo" type="text" name="modelo" placeholder="modelo" onkeyup="mayus(this);" required>
      </div>

      <div class="col-xs-4">
        <label for="ex2">Color</label>
        <input class="form-control" id="color" type="text" name="color" placeholder="Color" onkeyup="mayus(this);" required>
      </div>

      <div class="col-xs-4">
        <label for="ex3">Medidas</label>
        <input class="form-control" id="medidas" type="text" name="medidas" placeholder="medidas" required>
      </div>

      <div class="col-xs-4">
        <label for="ex3">Precio</label>
        <input class="form-control" id="precio_venta" type="text" name="precio_venta" placeholder="Precio">
      </div>
      
     <div class="col-xs-4">
        <label>Categoría</label>
    <select class="form-control" id="categoria-u" name="categoriau">
    <option value="null">-- categoría --</option>
    <option value="ME#28 ANDVAS ACETATO #15">ME#28 ANDVAS ACETATO #15</option>
    <option value="ME#28 ANDVAS ACETATO #14">ME#28 ANDVAS ACETATO #14</option>
    <option value="ME#28 ANDVAS ACETATO #13">ME#28 ANDVAS ACETATO #13</option>
    <option value="ME#27 MARCAS #12">ME#27 MARCAS #12</option>
    <option value="ME#27 CONVERSE #11">ME#27 CONVERSE #11</option>
    <option value="ME#27 CONVERSE #10">ME#27 CONVERSE #10</option>
    <option value="ME#27 METAL #9">ME#27 METAL #9</option>
    <option value="ME#27 METAL #8">ME#27 METAL #8</option>
    <option value="ME#27 METAL #7">ME#27 METAL #7</option>
    <option value="ME#27 METAL #6">ME#27 METAL #6</option>
    <option value="ME#27 ANDVAS #5">ME#27 ANDVAS #5</option>
    <option value="ME#27 ANDVAS #4">ME#27 ANDVAS #4</option>
    <option value="ME#27 ANDVAS #3">ME#27 ANDVAS #3</option>
    <option value="ME#27 ANDVAS #2">ME#27 ANDVAS #2</option>
    <option value="ME#27 ANDVAS #1">ME#27 ANDVAS #1</option>
    <option value="Gav#25 Marca y sin marca, Natación/Industrial">Gav#25 Marca y sin marca, Natación/Industrial</option>
    <option value="Gav#24 Economico Masculino, Todo tamaño, Metalico Completo">Gav#24 Economico Masculino, Todo tamaño, Metalico Completo</option>
    <option value="Gav#23 Economico Masculino">Gav#23 Economico Masculino</option>
    <option value="Gav#22 Economico Femenino/Masculino, Todo Tamaño, Aereo y SemiAereo">Gav#22 Economico Femenino/Masculino, Todo Tamaño, Aereo y SemiAereo</option>
    <option value="Gav#21 Economico Femenino, Todo Tamaño, Metalico completo">Gav#21 Economico Femenino, Todo Tamaño, Metalico completo</option>    
    <option value="Gav#20 Marcas, Masculino, Todo tamaño Metalico Completo">Gav#20 Marcas, Masculino, Todo tamaño Metalico Completo</option>
    <option value="Gav#19 Marcas, Masculino, Todo tamaño Metalico Semi-Aereo">Gav#19 Marcas, Masculino, Metalico Semi-Aereo</option>
    <option value="Gav#18 Lentes de sol">Gav#18 Lentes de sol"</option>
    <option value="Gav#17 Economicos">Gav#17 Economicos"</option>
    <option value="Gav#16 AndVas todo color, Fem/Masc, Acetato Completo">Gav#16 AndVas todo color, Fem/Masc, Acetato Completo"</option>
    <option value="Gav#15 AndVas todo color, Fem/Masc, Acetato Completo">Gav#15 AndVas todo color, Fem/Masc, Acetato Completo"</option>
    <option value="Gav#14 AndVas todo color, Fem/Masc, Acetato Completo">Gav#14 AndVas todo color, Fem/Masc, Acetato Completo"</option>
    <option value="Gav#13 RayBan, Masculino, Mediano/pequeño, Acetato/Completo">Gav#13 RayBan, Masculino, Mediano/pequeño, Acetato/Completo"</option>
    <option value="Gav#12 RayBan, Masculino, Mediano/pequeño, Acetato/Completo">Gav#12 RayBan, Masculino, Mediano/pequeño, Acetato/Completo"</option>
    <option value="Gav#11 Marcas,Deportivos, Maculino, med/grande, Ace/termopla">Gav#11 Marcas,Deportivos, Maculino, med/grande, Ace/termopla</option>
    <option value="Gav#10 Marcas, masculino, mediano/pequeño Acetato">Gav#10 Marcas, masculino, grande Acetato</option>
    <option value="Gav#9 Marcas, masculino, grande Acetato">Gav#9 Marcas, masculino, grande Acetato</option>
    <option value="Gav#8 Marcas Femenino, mediano/Pequeño">Gav#8 Marcas Masculino, ov/semiov, acet/metal</option>
	   <option value="Gav#7 Marcas Masculino, mediano/Pequeño">Gav#7 Marcas, Masc/Fem, med/Peq, Ov/semiov</option>
    <option value="Gav#6 Marcas Femenino, mediano/Pequeño">Gav#6 Marcas Fem, med/grande, acetato</option>
    <option value="Gav#5 Marcas Femenino, mediano/grande">Gav#5 Marcas Femenino, mediano/grande</option>
    <option value="Gav#4 Marcas Femenino, Todo Tamaño">Gav#4 Marcas Femenino, Todo Tamaño</option>
    <option value="Gav#3, Marcas Femenino, Todo Tamaño">Gav#3, Marcas Femenino, Todo Tamaño</option>
	<option value="Gav#2 Marcas Niño">Gav#2 Marcas Niño</option>
	<option value="AndVas niño #1">AndVas niño #1</option>


            </select>
      </div>

<div class="col-xs-12">
        <label for="descripcion">Descripcion</label>
          <input type="text" id="descripcion" name="descripcion" class="form-control" placeholder="Agregue una descripcion">
      </div>   
      <div class="col-xs-4">
        <label for="ex3">Imagen</label>
          <input type="file" id="producto_imagen" name="producto_imagen"><span id="producto_uploaded_image"></span>
      </div>      

</div>
    <input type="hidden" name="id_usuario" id="id_usuario" value="<?php echo $_SESSION["id_usuario"];?>"/>
    <input type="hidden" name="id_producto" id="id_producto"/>
    <input type="hidden" name="categoria" id="categoria" value="aros"/>
    <input type="hidden" name="categoriaacc" id="categoriacc" value="null"/>
    <input type="hidden" name="stock" id="stock" value="0"/>


    <button type="submit" id="agregar" name="agregar" class="btn btn-blue btn-block"><span class="glyphicon glyphicon-save-file" aria-hidden="true"></span>
Guardar</button>
  </form>

  </div>
        <div class="modal-footer">
          <button class="btn btn-dark" data-dismiss="modal">Cerrar</button>
        </div>
      </div>
      
    </div>
  </div>
 <!--FIN FORMULARIO VENTANA MODAL-->
 <script type="text/javascript" src="js/cleave.js"></script>
<script>

function mayus(e) {
       e.value = e.value.toUpperCase();
       var marca = document.getElementById('marca').value;

    if(marca =='ANDVAS'){
      document.getElementById("precio_venta").value="60";
    }else{
   document.getElementById("precio_venta").value="";
 
    }
}

var medidas = new Cleave('#medidas', {
    delimiter: '-',
    blocks: [2,2,3],
    uppercase: true
});
 </script>


  
  <?php  } else {

       require_once("noacceso.php");
  }
   
  ?><!--CIERRE DE SESSION DE PERMISO -->


<?php

  require_once("footer.php");
?>

<script type="text/javascript" src="js/productos.js"></script>
 <script type="text/javascript" src="js/cleave.js"></script>




<?php
   
  } else {

        header("Location:".Conectar::ruta()."vistas/index.php");

  }

  

?>








