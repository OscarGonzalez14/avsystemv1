<?php

   require_once("../config/conexion.php");

    if(isset($_SESSION["id_usuario"])){    
    require_once("../modelos/Usuarios.php");
    require_once("../modelos/Pacientes.php");
    $codigo = new Paciente();      
       
?>

<?php require_once("header.php"); ?>

<?php if($_SESSION["pacientes"]==1)
     {

     ?>

  <style>
    #tamanoModal{
      width: 75% !important;
    }
     #encabezado{
        background-color: #034f84;
        color: white;
    }

  </style>
  <!--Contenido-->
      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">        
        <!-- Main content -->
        <section class="content">
             <input type="hidden" id="sucursal_paciente" value="<?php echo $_SESSION["cedula"];?>">
             <div id="resultados_ajax"></div>

             <h3 align="center">PACIENTES <span style="text-transform: uppercase;"><?php echo $_SESSION["cedula"];?></span></h3>

            <div class="row">
              <div class="col-md-12">
                  <div class="box">
                    <div class="box-header with-border">
            <a href="consultas.php"><button class="btn btn-blue btn-lg"><i class="fa fa-address-card-o" aria-hidden="true"></i>
                              Evaluaciones Realizadas</button></h1></a>            
            <div class="box-tools pull-right"></div>
            </div>
            <div class="panel-body table-responsive">
                          
              <table id="paciente_data" class="table table-bordered table-striped">
                <thead>                              
                    <tr>                                  
                    <th>Codigo</th>
                    <th>Nombres</th>
                    <th>Teléfono</th>
                    <th>Correo</th>
                    <th>Fecha de Registro</th>
                    <th>Agregar consulta</th>
                                                  
                    </tr>
                </thead>
                <tbody></tbody>
              </table>                     
            </div> 
      </div><!-- /.box -->
    </div><!-- /.col -->
  </div><!-- /.row -->
</section><!-- /.content -->
</div><!-- /.content-wrapper -->
  <!--Fin-Contenido-->
    
 <!--FORMULARIO VENTANA MODAL CONSULTAS-->
<div class="modal fade" id="consultasModal" role="dialog">
    <div class="modal-dialog" id="tamanoModal">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" id="encabezado">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
<i class="fa fa-user-md" aria-hidden="true"></i> <strong>          NUEVA CONSULTA</strong>
        
      </div>  
        <div class="modal-body">

    <form class="form-horizontal" method="post" action="../ajax/registra_consulta.php">
    <div class="form-group row">

  <div class="col-xs-3">
        <label for="ex1">Cod.Paciente</label>
        <input class="form-control" id="codigop" name="codigop" type="text" readonly>
  </div>



      <div class="col-xs-9">
        <label for="ex3">Nombre</label>
        <input class="form-control" id="nombre_pac" type="text" name="nombre_pac" readonly>
      </div>
     
 <div class="col-xs-12">
      <label for="comment">Motivo de Consulta</label>
      <textarea cols="80" class="form-control" rows="2" id="motivo" name="motivo"></textarea>
    </div>

    <div class="col-xs-12">
      <label for="comment">Patologias</label>
      <textarea cols="80" class="form-control" rows="2" id="patologias" name="patologias"></textarea>
    </div>

<p>.</p>
<hr style="color:blue;">
    <div><center><h5 style="color:blue;"><strong>Lensometria</strong></h5></center></div>

<table class="table">

    <thead class="thead-light">
      <tr>
        <th style="text-align:center">OJO</th>
        <th style="text-align:center">ESFERAS</th>
        <th style="text-align:center">CILIDROS</th>
        <th style="text-align:center">EJE</th>
        <th style="text-align:center">PRISMA</th>
        <th style="text-align:center">ADICION</th>
      </tr>
    </thead>
    <tbody>
    <tr>
        <td>OD</td>
        <td> <input type="text" class="form-control" placeholder="---" name="odesferasl"></td>
        <td> <input type="text" class="form-control" placeholder="---" name="odcilndrosl"></td>
        <td> <input type="text" class="form-control" placeholder="---" name="odejesl"></td>
        <td> <input type="text" class="form-control" placeholder="---" name="odprismal"></td>
        <td> <input type="text" class="form-control" placeholder="---" name="odadicionl"></td>
        
      </tr>
      <tr>
        <td>OI</td>
        <td> <input type="text" class="form-control" placeholder="---" name="oiesfreasl" ></td>
        <td> <input type="text" class="form-control" placeholder="---" name="oicilindrosl" ></td>
        <td> <input type="text" class="form-control" placeholder="---" name="oiejesl" ></td>
        <td> <input type="text" class="form-control" placeholder="---" name="oiprismal" ></td>
        <td> <input type="text" class="form-control" placeholder="---" name="oiadicionl"></td>
      </tr>
      
    </tbody>
  </table>

<hr style="color:blue;">
    <div><center><h5 style="color:blue;"><strong>RX Autorefractometro</strong></h5></center></div>


<table class="table">

    <thead class="thead-light">
      <tr>
        <th style="text-align:center">OJO</th>
        <th style="text-align:center">ESFERAS</th>
        <th style="text-align:center">CILIDROS</th>
        <th style="text-align:center">EJE</th>
        <th style="text-align:center">PRISMA</th>
        <th style="text-align:center">ADICION</th>
      </tr>
    </thead>
    <tbody>
    <tr>
        <td>OD</td>
        <td> <input type="text" class="form-control" placeholder="---" name="odesferasa"></td>
        <td> <input type="text" class="form-control" placeholder="---" name="odcilindrosa"></td>
        <td> <input type="text" class="form-control" placeholder="---" name="odejesa"></td>
        <td> <input type="text" class="form-control" placeholder="---" name="dprismaa"></td>
        <td> <input type="text" class="form-control" placeholder="---" name="oddiciona"></td>        
      </tr>
      <tr>
        <td>OI</td>
        <td> <input type="text" class="form-control" placeholder="---" name="oiesferasa"></td>
        <td> <input type="text" class="form-control" placeholder="---" name="oicolindrosa"></td>
        <td> <input type="text" class="form-control" placeholder="---" name="oiejesa"></td>
        <td> <input type="text" class="form-control" placeholder="---" name="oiprismaa"></td>
        <td> <input type="text" class="form-control" placeholder="---" name="oiadiciona"></td>
      </tr>
      
    </tbody>
  </table>

  <!--==================== FIN Autoreflejado==================-->

    <!--==================== Rx Final==================-->

    <div><center><h5 style="color:blue;"><strong>RX Final</strong></h5></center></div>


<table class="table">

    <thead class="thead-light">
      <tr>
        <th style="text-align:center">OJO</th>
        <th style="text-align:center">ESFERAS</th>
        <th style="text-align:center">CILIDROS</th>
        <th style="text-align:center">EJE</th>
        <th style="text-align:center">PRISMA</th>
        <th style="text-align:center">ADICION</th>
      </tr>
    </thead>
    <tbody>
    <tr>
        <td>OD</td>
        <td> <input type="text" class="form-control" placeholder="---" name="odesferasf"></td>
        <td> <input type="text" class="form-control" placeholder="---" name="odcilindrosf"></td>
        <td> <input type="text" class="form-control" placeholder="---" name="odejesf"></td>
        <td> <input type="text" class="form-control" placeholder="---" name="dprismaf"></td>
        <td> <input type="text" class="form-control" placeholder="---" name="oddicionf"></td>        
      </tr>
      <tr>
        <td>OI</td>
        <td> <input type="text" class="form-control" placeholder="---" name="oiesferasf"></td>
        <td> <input type="text" class="form-control" placeholder="---" name="oicolindrosf"></td>
        <td> <input type="text" class="form-control" placeholder="---" name="oiejesf"></td>
        <td> <input type="text" class="form-control" placeholder="---" name="oiprismaf"></td>
        <td> <input type="text" class="form-control" placeholder="---" name="oiadicionf"></td>
      </tr>
  </tbody>
  </table>

 
    <div class="col-xs-12">
        <label for="ex3">Lentes Sugeridos</label>
        <input class="form-control" id="sugeridos" type="text" name="sugeridos" placeholder="Lentes sugeridos">
    </div>

    <div class="col-xs-12">
      <label for="comment">Diagnostico</label>
      <textarea cols="80" class="form-control" rows="2" id="diagnostico" name="diagnostico" placeholder="Diagnostico"></textarea>
    </div>

    <div class="col-xs-12">
        <label for="ex3">Medicamento</label>
        <input class="form-control" id="medicamento" type="text" name="medicamento" placeholder="Medicamento">
    </div>

        <div class="col-xs-12">
      <label for="comment">Observaciones</label>
      <textarea cols="80" class="form-control" rows="2" id="observaciones" name="observaciones" placeholder="Observaciones"></textarea>
    </div>

    <div class="col-xs-12">
      
        <input class="form-control" id="codigos" name="codigos" type="hidden" value="codigos" readonly>
  </div>
 <input type="hidden" name="id_usuario" id="id_usuario" value="<?php echo $_SESSION["id_usuario"];?>"/>
     </div>


    <button type="submit" id="agregar" name="agregar" class="btn btn-blue btn-block" id="addEmpresa"><span class="glyphicon glyphicon-save-file" aria-hidden="true"></span>
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

<script>
    $(function(){
      $('.btn[data-toggle=modal]').on('click', function(){
        var $btn = $(this);
        var currentDialog = $btn.closest('.modal-dialog'),
        targetDialog = $($btn.attr('data-target'));;
        if (!currentDialog.length)
          return;
        targetDialog.data('previous-dialog', currentDialog);
        currentDialog.addClass('aside');
        var stackedDialogCount = $('.modal.in .modal-dialog.aside').length;
        if (stackedDialogCount <= 5){
          currentDialog.addClass('aside-' + stackedDialogCount);
        }
      });

      $('.modal').on('hide.bs.modal', function(){
        var $dialog = $(this);  
        var previousDialog = $dialog.data('previous-dialog');
        if (previousDialog){
          previousDialog.removeClass('aside');
          $dialog.data('previous-dialog', undefined);
        }
      });
    })
  </script>
<script type="text/javascript" src="js/cleave.js"></script>
<script>

function mayus(e) {
    e.value = e.value.toUpperCase();
}

var medidas = new Cleave('#dui', {
    delimiter: '-',
    blocks: [8,1],
    uppercase: true
});

$(document).on('click', '#addEmpresa', function() {
        $('#myModal').modal('show');
    });

 </script>

  
  <?php  } else {

       require("noacceso.php");
  }
   
  ?><!--CIERRE DE SESSION DE PERMISO -->

<?php

  require_once("footer.php");
?>

<script type="text/javascript" src="js/paciente.js"></script>
<script type="text/javascript" src="js/empresa.js"></script>

<?php
   
  } else {

        header("Location:".Conectar::ruta()."vistas/index.php");

  }

  

?>

