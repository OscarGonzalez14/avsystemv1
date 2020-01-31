<?php
  
  //conexion de la base de datos 
  require_once("../config/conexion.php");
  //llamo al modelo Venta
  require_once("../modelos/Recibos.php");

  $recibos = new Recibos();

switch($_GET["op"]){

	case "listar_recibos_print":

	$datos=$recibos->get_recibos_print();
 	$data= Array();

    foreach($datos as $row)
	{
		$sub_array = array();
		$sub_array[] = $row["numero_recibo"];
		$sub_array[] = $row["monto"];
		$sub_array[] = '<a href="imprimir_recibo.php?numero_venta='.$row["numero_venta"].'" method="POST"><button type="button"  class="btn btn-infos btn-md"><i class="glyphicon glyphicon-edit"></i> Imprimir</button></a>';
$data[] = $sub_array;

	}

 $results = array(
 			"sEcho"=>1, //Información para el datatables
 			"iTotalRecords"=>count($data), //enviamos el total registros al datatable
 			"iTotalDisplayRecords"=>count($data), //enviamos el total registros a visualizar
 			"aaData"=>$data);
 		echo json_encode($results);
    break;
}
