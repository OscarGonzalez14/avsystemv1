<?php    

//llamo a la conexion de la base de datos 
  require_once("../config/conexion.php");
  //llamo al modelo Categorías
  require_once("../modelos/Ordenes.php");

 
  $ordenes = new Ordenes();

 switch($_GET["op"]){
     case "listar_ordenes":

     $datos=$ordenes->get_detalle_ordenes();

     //Vamos a declarar un array
 	 $data= Array();

     foreach($datos as $row)

			{
				$sub_array = array();

				$estado = "";

				if ($row["estado"]==0) {
					$estado ='Enviado a Laboratorio';
				}elseif ($row['estado']==1) {
					$estado='Descargado en Lab.';
				}elseif ($row['estado']==2) {
					$estado='Despachado de Laboratorio';
				}elseif ($row['estado']==3) {
					$estado='ORDEN RECIBIDA';
				}
				
			
	             $sub_array[] = $row["numero_orden"];
	             $sub_array[] = $row["fecha"];
				 $sub_array[] = $row["optica"];
				 $sub_array[] = $row["paciente"];
				 $sub_array[] = $row["lentes"];
				 $sub_array[] = $row["aro"];
            
                 $sub_array[] = '<button type="button" class="btn btn-infos btn-md" data-toggle="modal" data-target="#show_orden" onClick="show_orden_data('.$row["id_orden"].')"><i class="fa fa-eye" aria-hidden="true"></i> Ver</button>';
                 $sub_array[]=$estado;
                 $sub_array[] = '<button type="button" class="btn btn-edit btn-md"  onClick="recibir_orden('.$row["id_orden"].')" ><i class="fa fa-arrow-circle-o-right"></i> Recibir</button>';
                 $sub_array[] = $row["usuario"];
				 $data[] = $sub_array;
			}

      $results = array(
 			"sEcho"=>1, //Información para el datatables
 			"iTotalRecords"=>count($data), //enviamos el total registros al datatable
 			"iTotalDisplayRecords"=>count($data), //enviamos el total registros a visualizar
 			"aaData"=>$data);
 		echo json_encode($results);


break;
     
case 'recibe_orden':
    
      $actualiza=$ordenes->recibir_orden($_POST["id_orden"]);
break;
     
     
}
?>
