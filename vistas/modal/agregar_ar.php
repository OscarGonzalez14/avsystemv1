<div class="modal fade" id="agregarAR" role="dialog">
    <div class="modal-dialog modal-lg">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title" align="center"><span class="glyphicon glyphicon-save" aria-hidden="true"></span> CREAR ANTI-REFLEJANTE</h4>
        </div>
        <div class="modal-body">

    <form class="form-horizontal" method="post" action="../ajax/reg_lentes.php">
    <div class="form-group row">
     
      <div class="col-xs-10">
        <label for="ex1">Descripción</label>
        <input class="form-control" id="modelo" name="modelo" type="text" placeholder="Descripcion del Lente" required>
      </div>
      <div class="col-xs-2">
        <label for="ex3">Precio de Venta</label>
        <input class="form-control" id="precio" type="text" name="precio" placeholder="precio">
      </div>


     </div>
    <input type="hidden" name="id_usuario" id="id_usuario" value="<?php echo $_SESSION["id_usuario"];?>"/>
    <input type="hidden" name="id_producto" id="id_producto"/>
    <input type="hidden" name="categoria" id="categoria" value="anti-reflejantes" />
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