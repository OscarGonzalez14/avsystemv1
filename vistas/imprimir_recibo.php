
<?php
/*IMPORTANTE:ESTE ARCHIVO DE PDF NO ACEPTA LOS ESTILOS DE LIBRERIAS EXTERNAS NI BOOTSTRAP, HAY QUE USAR STYLE COMO ATRIBUTO Y LA ETIQUETA STYLE DEBAJO DE HEAD*/

  require_once("../config/conexion.php"); 

   if(isset($_SESSION["nombre"]) and isset($_SESSION["correo"])){

require_once("../modelos/Recibos.php");

$recibos=new Recibos();


$datos=$recibos->get_recibo_id($_GET["numero_venta"]);
$venta=$recibos->get_detalle_venta($_GET["numero_venta"]);

//$total_productos=$vent->get_cant_productos_por_fecha($_POST["cedula"],$_POST["datepicker"],$_POST["datepicker2"]);
//$datos_empresa=$informacion_empresa->get_empresa();



ob_start(); 

   
?>
<body style="margin:0px">
<link type="text/css" rel="stylesheet" href="dompdf/css/print_static.css"/>
<table style="width: 100%;" class="header">
<tr>
<td width="24%" height="111"><h1 style="text-align: left; margin-right:20px;"><img src="../public/images/logooficial.jpg" width="150" height="100"  /></h1></td>

<td width="56%" height="111">
<table style="width: 100%; font-size: 10pt;">

  <tr>
    <td><strong>OPTICA AVPLUS S.A de C.V.</strong></td>
  </tr>

  <tr>
    <td><strong>GIRO: </strong>OTROS SERVICIO RELACIONADOS CON LA SALUD</td>
  </tr>
  <tr>
    <td><strong>Centro Comercial Metrocentro</td>
  </tr>
  
  <tr>
    <td><strong>FECHA-HORA IMPRESO: </strong>
      <?php echo $fecha=date("d-m-Y h:i:s A"); ?></td>
  </tr>
   <tr></tr>
</table><!--fin segunda tabla-->
</td>
<td width="20%" height="111">
<table style="width: 100%; font-size: 10pt;">

  <tr>
    <td><strong>No. Recibo</strong></td>
  </tr>
  <tr><td><strong>005</strong></td></tr>
</table><!--fin segunda tabla-->
</td> <!--fin segunda columna--> 
</tr>
</table>

<div style="border: 2px solid black; height:200px; margin: margin: 1pt 1pt;">
<?php
  
  for($i=0;$i<sizeof($datos);$i++){

?>
<table>
<tr style="font-size:10pt" class="even_row">
<td><div align="center"><span class=""><?php echo $datos[$i]["numero_recibo"];?></span></div></td>
<td style="text-align: center"><div align="center"><span class=""><?php echo $datos[$i]["monto"];?></span></div></td>
</tr>

 
</table>
<?php
  }
?>
 
<?php
  
  for($i=0;$i<sizeof($venta);$i++){

?>
<table>
<tr style="font-size:10pt" class="even_row">
<td><div align="center"><span class=""><?php echo $venta[$i]["numero_venta"];?></span></div></td>
<td style="text-align: center"><div align="center"><span class=""><?php echo $venta[$i]["paciente"];?></span></div></td>
</tr>
</table>
<?php
  }
?>
</div>

<div style="border: 2px solid black; max-height:200px">
<?php
  
  for($i=0;$i<sizeof($datos);$i++){

?>
<table>
<tr style="font-size:10pt" class="even_row">
<td><div align="center"><span class=""><?php echo $datos[$i]["numero_recibo"];?></span></div></td>
<td style="text-align: center"><div align="center"><span class=""><?php echo $datos[$i]["monto"];?></span></div></td>
</tr>
</table>
<?php
  }
?>
 
<?php
  
  for($i=0;$i<sizeof($venta);$i++){

?>
<table>
<tr style="font-size:10pt" class="even_row">
<td><div align="center"><span class=""><?php echo $venta[$i]["numero_venta"];?></span></div></td>
<td style="text-align: center"><div align="center"><span class=""><?php echo $venta[$i]["paciente"];?></span></div></td>
</tr>
</table>
<?php
  }
?>
</div>
</body>
</td>
</tr>
</table>
</td>
  <?php
  
  $salida_html = ob_get_contents();
  ob_end_clean(); 

    require_once("dompdf/dompdf_config.inc.php");       
    $dompdf = new DOMPDF();
    $dompdf->load_html($salida_html);
    $dompdf->render();
    $dompdf->stream("Listado de Productos.pdf", array('Attachment'=>'0'));


  } else{

     header("Location:".Conectar::ruta()."vistas/index.php");
  }
    
?>