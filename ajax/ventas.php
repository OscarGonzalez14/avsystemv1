 <?php
  
  //llamo a la conexion de la base de datos 
  require_once("../config/conexion.php");

  //llamo al modelo Venta
  require_once("../modelos/Ventas.php");

  $ventas = new Ventas();

 
 

  switch($_GET["op"]){

    case "buscar_ventas":

     $datos=$ventas->get_ventas();

     //Vamos a declarar un array
 	 $data= Array();

     	foreach($datos as $row)
			{
				$sub_array = array();
				$est = '';
				$atrib = '';
				 
				if($row["subtotal"] > 150){
					$est = 'Imprimir';
					$icon=" ";
					$event = "registrarVenta()";
					$atrib = "btn btn-blue btn-md glyphicon estado";
				 

				}
				else{
					if($row["subtotal"] < 150){
						$est = 'Pendiente';
						$icon=" ";
						$atrib = "btn btn-danger btn-md glyphicon estado";
					}	
				}
			
			$fecha=date("d-m-Y");
			$diferencia = $fecha - date("d-m-Y",strtotime($row["fecha_venta"]));

				 $sub_array[] = '<button class="btn btn-blue detalle" id="'.$row["numero_venta"].'"  data-toggle="modal" data-target="#detalle_venta"><i class="fa fa-eye"></i></button>';
	             $sub_array[] = date("d-m-Y",strtotime($row["fecha_venta"]));
				 $sub_array[] = $row["numero_venta"];
				 $sub_array[] = $row["paciente"];
				 $sub_array[] = $row["vendedor"];
				 $sub_array[] = $row["tipo_pago"];
				 $sub_array[] = $row["subtotal"];

				$sub_array[] = '<button type="button" name="estado" onClick="'.$event.'" class="'.$atrib.'">'.$icon.$est.'</button>';

				$sub_array[]=$fecha;
                $sub_array[]=$diferencia;

				$data[] = $sub_array;

			}



      $results = array(
 			"sEcho"=>1, //Información para el datatables
 			"iTotalRecords"=>count($data), //enviamos el total registros al datatable
 			"iTotalDisplayRecords"=>count($data), //enviamos el total registros a visualizar
 			"aaData"=>$data);
 		echo json_encode($results);


     break;

   case "ver_detalle_paciente_venta":


   $datos= $ventas->get_detalle_paciente($_POST["numero_venta"]);	

      if(is_array($datos)==true and count($datos)>0){

				foreach($datos as $row)
				{
					
					$output["nombres"] = $row["nombres"];
					$output["numero_venta"] = $row["numero_venta"];
					$output["telefono"] = $row["telefono"];
					$output["fecha_venta"] = date("d-m-Y", strtotime($row["fecha_venta"]));
					$output["usuario"] = $row["usuario"];
					$output["sucursal"] = $row["sucursal"];

									
				}
		
		      
		          echo json_encode($output);


	        } else {
                 
                 //si no existe el registro entonces no recorre el array
                $errors[]="no existe";

	        }


	         //inicio de mensaje de error

				if (isset($errors)){
			
					?>
					<div class="alert alert-danger" role="alert">
						<button type="button" class="close" data-dismiss="alert">&times;</button>
							<strong>Error!</strong> 
							<?php
								foreach ($errors as $error) {
										echo $error;
									}
								?>
					</div>
					<?php
			      }

	        //fin de mensaje de error	    


  	break;

  	

  	case 'tipo_pago';

	if ($_POST['id_tipo']=='Contado-Metrocentro') {
		$html="
			<option value=''>Seleccione</option>
			<option value='Efectivo'>Efectivo</option>
			<option value='Tarjeta de Credito'>Tarjeta de Crédito</option>			
			<option value='Cheque'>Cheque</option>";
	
		echo $html;

	}elseif($_POST['id_tipo']=='Credito'){
	
	$html= "
		<option value=''>Selecione</option>
		<option value='Descuento en Planilla'> Descuento en Planilla</option>
	 	<option value='Cargo Automatico'>Cargo Automático</option>
	 	<option value='Creditos Personales'>Créditos Personales</option>
	 	<option value='Tarjeta de Credito'>Tarjeta de Crédito</option>
	 	<option value='Cheque'>Cheque</option>";
	
		echo $html;
		}else{

	$html= "<option value=''>Seleccione</option>
	";
	
		echo $html;
		}

  	break;

  	case "monto_cuotas":

  		if($_POST['m_cuotas']=='Descuento en Planilla'){

  		$html="

			<option value=''>Seleccione</>
			<option value='2'> 2 Meses</>
			<option value='3'> 3 Meses</>
			<option value='4'> 4 Meses</>
			<option value='5'> 5 Meses</>
			<option value='6'> 6 Meses</>
			<option value='7'> 7 Meses</>
			<option value='8'> 8 Meses</>
			<option value='9'> 9 Meses</>
			<option value='10'> 10 Meses</>
			<option value='11'> 11 Meses</>
			<option value='12'> 12 Meses</>
			
  		";

  		echo $html;

  		}else if($_POST['m_cuotas']=='Cargo Automatico'){

  		$html="

			<option value=''>Seleccione</>
			<option value='3'> 3 Meses</>
			<option value='6'> 6 Meses</>
			<option value='9'> 9 Meses</>
			<option value='12'> 12 Meses</>
			
  		";

  		echo $html;

  		}else if($_POST['m_cuotas']=='Creditos Personales'){

  			$html="
			<option value=''>Seleccione</>
			<option value='1'> 1 Meses</>
			<option value='2'> 2 Meses</>
			<option value='3'> 3 Meses</>
			<option value='4'> 4 Meses</>
			<option value='5'> 5 Meses</>
			<option value='6'> 6 Meses</>
			
  		";

  		echo $html;
  		}

  	break;

  	case "ver_ultima_venta":


   $datos= $ventas->get_det_ultima_venta();	

      if(is_array($datos)==true and count($datos)>0){

				foreach($datos as $row)
				{
					
					$output["monto"] = $row["monto"];
					$output["telefono"] = $row["telefono"];
					$output["nombres"] = $row["nombres"];
					$output["empresa"] = $row["empresa"];
					$output["saldo"] = $row["saldo"];
					$output["tipo_pago"] = $row["tipo_pago"];
					$output["id_paciente"] = $row["id_paciente"];
					$output["id_credito"] = $row["id_credito"];
														
				}
		
		      
		          echo json_encode($output);


	        } else {
                 
                 //si no existe el registro entonces no recorre el array
                $errors[]="no existe";

	        }


	         //inicio de mensaje de error

				if (isset($errors)){
			
					?>
					<div class="alert alert-danger" role="alert">
						<button type="button" class="close" data-dismiss="alert">&times;</button>
							<strong>Error!</strong> 
							<?php
								foreach ($errors as $error) {
										echo $error;
									}
								?>
					</div>
					<?php
			      }

	        //fin de mensaje de error	    


  	break;

  	case "ver_ultima_venta_aros":

  	   $datos= $ventas->get_det_ultima_venta_aros();	

      if(is_array($datos)==true and count($datos)>0){

				foreach($datos as $row)
				{
					
					$output["marca"] = $row["marca"];
					$output["modelo"] = $row["modelo"];
					$output["color"] = $row["color"];
													
				}
		
		      
		          echo json_encode($output);


	        } else {
                 
                 //si no existe el registro entonces no recorre el array
                $errors[]="no existe";

	        }


	         //inicio de mensaje de error

				if (isset($errors)){
			
					?>
					<div class="alert alert-danger" role="alert">
						<button type="button" class="close" data-dismiss="alert">&times;</button>
							<strong>Error!</strong> 
							<?php
								foreach ($errors as $error) {
										echo $error;
									}
								?>
					</div>
					<?php
			      }

  	break;


case "ver_ultima_venta_lentes":

  	   $datos= $ventas->get_det_ultima_venta_lentes();	

      if(is_array($datos)==true and count($datos)>0){

				foreach($datos as $row)
				{
									
					$output["modelo"] = $row["modelo"];

													
				}
		
		      
		          echo json_encode($output);


	        } else {
                 
                 //si no existe el registro entonces no recorre el array
                $errors[]="no existe";

	        }


	         //inicio de mensaje de error

				if (isset($errors)){
			
					?>
					<div class="alert alert-danger" role="alert">
						<button type="button" class="close" data-dismiss="alert">&times;</button>
							<strong>Error!</strong> 
							<?php
								foreach ($errors as $error) {
										echo $error;
									}
								?>
					</div>
					<?php
			      }

  	break;

  	 case "ver_detalle_venta":

  	   $datos= $ventas->get_detalle_ventas_paciente($_POST["numero_venta"]);	


  	 break;

  	case "registrar_abono";


	$ventas->agrega_detalle_abono();

     break;


 case "consulta_cantidad_venta":

         //selecciona el id del registro

    require_once("../modelos/Productos.php");

	$producto= new Producto();

	$datos=$producto->get_producto_por_id($_POST["id_producto"]);

          // si existe el id del producto entonces recorre el array
	      if(is_array($datos)==true and count($datos)>0){

				foreach($datos as $row)
				{
					
					$stock = $s["stock"] = $row["stock"];
                 
                 //consultamos si la cantidad que se va a querer vender es mayor a la cantidad de stock entonces que solo se refleje la cantidad maxima que se encuentre en el stock y que me devuelva ese valor en el campo

					$result = null;

					$stock_vender=$_POST["cantidad_vender"];

					//importante:tuve que poner esta condicional para que me funcionara la condicional
					if($stock_vender>$stock and $stock_vender!=0){


                        $result="<h4 class='text-danger'>La cantidad seleccionada es mayor al stock</h4>";
					
					}  

					else {

						if($stock_vender==0){

						$result="<h4 class='text-danger'>El campo está vacío</h4>";

						 }

				      }
					
					}//cierre del foreach
		
		      
		          echo json_encode($result);


	        } else {
                 
                 //si no existe el registro entonces no recorre el array
                $errors[]="El producto no existe";

	        }


	         //inicio de mensaje de error

				if (isset($errors)){
			
					?>
					<div class="alert alert-danger" role="alert">
						<button type="button" class="close" data-dismiss="alert">&times;</button>
							<strong>Error!</strong> 
							<?php
								foreach ($errors as $error) {
										echo $error;
									}
								?>
					</div>
					<?php
			      }

	        //fin de mensaje de error



     break;


      case "cambiar_estado_venta":


          $datos=$ventas->get_ventas_por_id($_POST["id_ventas"]);

          // si existe el id de la venta entonces se edita el estado del detalle de la venta
	      if(is_array($datos)==true and count($datos)>0){

                  //cambia el estado de la compra
				  $ventas->cambiar_estado($_POST["id_ventas"], $_POST["numero_venta"], $_POST["est"]);
		
		     
	        } 


     break;

      case "buscar_ventas_fecha":
          
     $datos=$ventas->lista_busca_registros_fecha($_POST["fecha_inicial"], $_POST["fecha_final"]);

     //Vamos a declarar un array
 	 $data= Array();

    foreach($datos as $row)
      {
        $sub_array = array();

        $est = '';
        
         $atrib = "btn btn-danger btn-md estado";
        if($row["estado"] == 1){
          $est = 'PAGADO';
          $atrib = "btn btn-success btn-md estado";
        }
        else{
          if($row["estado"] == 0){
            $est = 'ANULADO';
           
          } 
        }

        
         $sub_array[] = '<button class="btn btn-warning detalle" id="'.$row["numero_venta"].'"  data-toggle="modal" data-target="#detalle_venta"><i class="fa fa-eye"></i></button>';
               $sub_array[] = date("d-m-Y",strtotime($row["fecha_venta"]));
         $sub_array[] = $row["numero_venta"];
         $sub_array[] = $row["paciente"];
         $sub_array[] = $row["cedula_paciente"];
         $sub_array[] = $row["vendedor"];
         $sub_array[] = $row["tipo_pago"];
         $sub_array[] = $row["moneda"]." ".$row["total"];

        
           /*IMPORTANTE: poner \' cuando no sea numero, sino no imprime*/
                 $sub_array[] = '<button type="button" onClick="cambiarEstado('.$row["id_ventas"].',\''.$row["numero_venta"].'\','.$row["estado"].');" name="estado" id="'.$row["id_ventas"].'" class="'.$atrib.'">'.$est.'</button>';
                
        $data[] = $sub_array;
      }




      $results = array(
 			"sEcho"=>1, //Información para el datatables
 			"iTotalRecords"=>count($data), //enviamos el total registros al datatable
 			"iTotalDisplayRecords"=>count($data), //enviamos el total registros a visualizar
 			"aaData"=>$data);
 		echo json_encode($results);


     break;

     case "buscar_ventas_fecha_mes":

      
      $datos= $ventas->lista_busca_registros_fecha_mes($_POST["mes"],$_POST["ano"]);


        //Vamos a declarar un array
 	    $data= Array();

	      foreach($datos as $row)
	      {
		        $sub_array = array();

		        $est = '';
		        
		         $atrib = "btn btn-danger btn-md estado";
		        if($row["estado"] == 1){
		          $est = 'PAGADO';
		          $atrib = "btn btn-success btn-md estado";
		        }
		        else{
		          if($row["estado"] == 0){
		            $est = 'ANULADO';
		           
		          } 
	        }

        
       
      $sub_array[] = '<button class="btn btn-warning detalle" id="'.$row["numero_venta"].'"  data-toggle="modal" data-target="#detalle_venta"><i class="fa fa-eye"></i></button>';
         $sub_array[] = date("d-m-Y", strtotime($row["fecha_venta"]));
         $sub_array[] = $row["numero_venta"];
         $sub_array[] = $row["paciente"];
         $sub_array[] = $row["cedula_paciente"];
         $sub_array[] = $row["vendedor"];
         $sub_array[] = $row["tipo_pago"];
         $sub_array[] = $row["total"];

        
           /*IMPORTANTE: poner \' cuando no sea numero, sino no imprime*/
                 $sub_array[] = '<button type="button" onClick="cambiarEstado('.$row["id_ventas"].',\''.$row["numero_venta"].'\','.$row["estado"].');" name="estado" id="'.$row["id_ventas"].'" class="'.$atrib.'">'.$est.'</button>';
                
        $data[] = $sub_array;
        
        }


      $results = array(
 			"sEcho"=>1, //Información para el datatables
 			"iTotalRecords"=>count($data), //enviamos el total registros al datatable
 			"iTotalDisplayRecords"=>count($data), //enviamos el total registros a visualizar
 			"aaData"=>$data);
 		echo json_encode($results);


     break;



    case "corte_caja":


     $datos=$ventas->reporte_diario_ventas();
 	 $data= Array();

     	foreach($datos as $row)
			{
				$sub_array = array();

	             
				 $sub_array[] = $row["numero_venta"];
				 $sub_array[] = $row["n_recibo"];
				 $sub_array[] = $row["nombres"];
				 $sub_array[] = $row["usuario"];
				 $sub_array[] = $row["monto"];
				 $sub_array[] = $row["ant"];
				 $sub_array[] = $row["abono"];
				 $sub_array[] = $row["tipo_venta"];
				 $sub_array[] = $row["forma_pago"];
				 $sub_array[] = $row["saldo"];
				 $sub_array[] = date("d-m-Y",strtotime($row["fecha_abono"]));



				$data[] = $sub_array;

			}



      $results = array(
 			"sEcho"=>1, //Información para el datatables
 			"iTotalRecords"=>count($data), //enviamos el total registros al datatable
 			"iTotalDisplayRecords"=>count($data), //enviamos el total registros a visualizar
 			"aaData"=>$data);
 		echo json_encode($results);


     break;

     
     case "corte_recuperado":
     $datos=$ventas->reporte_diario_recuperado();
 	 $data= Array();

     	foreach($datos as $row)
			{
				$sub_array = array();

	             
				 $sub_array[] = $row["numero_venta"];
				 $sub_array[] = $row["n_recibo"];
				 $sub_array[] = $row["nombres"];
				 $sub_array[] = $row["usuario"];
				 $sub_array[] = $row["monto"];
				 $sub_array[] = $row["abono"];
				 $sub_array[] = $row["abono"];
				 $sub_array[] = $row["tipo_venta"];
				 $sub_array[] = $row["forma_pago"];
				 $sub_array[] = $row["saldo"];
				 $sub_array[] = date("d-m-Y",strtotime($row["fecha_abono"]));



				$data[] = $sub_array;

			}



      $results = array(
 			"sEcho"=>1, //Información para el datatables
 			"iTotalRecords"=>count($data), //enviamos el total registros al datatable
 			"iTotalDisplayRecords"=>count($data), //enviamos el total registros a visualizar
 			"aaData"=>$data);
 		echo json_encode($results);


     break;
     
 case "buscar_ventas_sucursal":
          
     $datos=$ventas->lista_busca_ventas_suc($_POST["sucursal"]);

  $data= Array();

    foreach($datos as $row)
			{
				$sub_array = array();




				  //STOCK, si es mejor de 10 se pone rojo sino se pone verde
				  $stock=""; 

				  if($row["stock"]<=5){
                      
                     $stock = $row["stock"];
                     $atributo = "badge bg-red-active";
                            
				 
				  } else {

				     $stock = $row["stock"];
                     $atributo = "badge bg-green";
                 
                 }            
            	$sub_array[] = $row["id_producto"];
				$sub_array[] = $row["modelo"];
				$sub_array[] = $row["marca"];
				$sub_array[] = $row["color"];
				$sub_array[] = $row["medidas"];
	      		$sub_array[] = $row["precio_venta"];
				$sub_array[] = $row["bodega"];
				$sub_array[] = '<span class="'.$atributo.'">'.$row["stock"].'
                  </span>';
                $sub_array[] = $row["categoriaub"];
      

			$sub_array[] = '<button type="button" name="hola" id="'.$row["id_producto"].'" class="btn btn-primary btn-md " onClick="agregarDetalleVenta('.$row["id_producto"].')"><i class="fa fa-plus"></i> Agregar</button>';
        
			
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