<?php

 require_once("../config/conexion.php");

     

     if(isset($_POST["enviar"]) and $_POST["enviar"]=="si"){

       require_once("../modelos/Usuarios.php");

       $usuario = new Usuarios();

       $usuario->login();

   }

?>


<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AVSystem</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="../public/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../public/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="../public/bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../public/dist/css/AdminLTE.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="../public/plugins/iCheck/square/blue.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

  <style type="text/css">

 .btn-dark,
 .btn-dark:hover{

    background: #424949;
    color: white;
  }

  .btn-navy,
  .btn-navy:hover,
  .btn-navy:active{

    background:#0A122A;
    color: white;
  }

  .body{
  background-image: url(../img/back.jpg);
  }

  #back{
  background: #1f1a1a;
  /* background-image: url(../img/back.jpg);*/
  }
  </style>
 
</head>
<body id="back">
  <div class="login-box">
  <div class="login-logo">


  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">

   <img src="../img/logooficial.png" class="img-responsive" alt="" width="350" height="200" />

 <!--INICIO MENSAJES DE ALERTA-->
   <div class="container-fluid">

      
      <div class="row">
         <div class="col-lg-12">
        
        <div class="box-body">
            
            <?php


            if(isset($_GET["m"])) {
               
           switch($_GET["m"]){


               case "1";
               ?>

               <div class="alert alert-danger alert-dismissible">
                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                      <h4><i class="icon fa fa-ban"></i> El Usuario y/o Contraseña es incorrecto o no tienes permiso!</h4>
                     
                </div>

                <?php
                break;


                case "2";
                ?>
                    <div class="alert alert-danger alert-dismissible">
                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                      <h4><i class="icon fa fa-ban"></i> Algún campo esta vacío</h4>
                     
                </div>
                <?php
                break;



             }

         }


            ?>

             
        </div>
    

        </div>
      </div>
  </div>
  <!--/container-fluid-->
<!-- FIN MENSAJES DE ALERTA-->

<!--login-box-msg-->

   <!-- <p class="text-center pad text-bold bg-primary margin-bottom">Ingrese los datos</p> -->

    <form action="" method="post">
      <div class="form-group has-feedback">
        <input type="text" name="usuario" id="usuario" class="form-control" placeholder="Usuario" required="required">
        <span class="glyphicon glyphicon-user form-control-feedback"></span>
      </div>  

      <div class="form-group has-feedback">
          <select class="form-control" id="sucursal_login" name="sucursal_login">
            <option value="">Seleccione una Sucursal...</option>
            <option value="Metrocentro">Metrocentro</option>
            <option value="Empresarial">Empresarial</option>
            <option value="Santa Ana">Santa Ana</option>
          </select>
      </div>

      <div class="form-group has-feedback">
        <input type="password" name="password" id="password" class="form-control" placeholder="Password" required>
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>

      <div class="form-group">
        <input type="hidden" name="enviar" class="form-control" value="si">       
      </div>

      <div class="row">        
        <div class="col-xs-7 col-xs-offset-3 col-sm-8 col-sm-offset-2 col-lg-8 col-lg-offset-2">
          <button type="submit" class="btn btn-navy btn-block btn-flat btn-lg"><i class="fa fa-power-off" aria-hidden="true"></i>  Iniciar Sesión</button>
        </div>
      </div>
    </form>

   

  </div>
  <!-- /.login-box-body -->

</div>
<!-- /.login-box -->


<!-- jQuery 3 -->
<script src="../public/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="../public/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="../public/plugins/iCheck/icheck.min.js"></script>
<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' // optional
    });
  });
</script>
</body>
</html>

