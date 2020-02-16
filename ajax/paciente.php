<?php

	  //llamo a la conexion de la base de datos 
      require_once("../config/conexion.php");
     //llamo al modelo pacientes
      require_once("../modelos/Pacientes.php");

      //llamo al modelo Ventas
     require_once("../modelos/Ventas.php");

  
   $pacientes = new Paciente();

    switch($_GET["op"]){

    case "guardar_paciente":
		$pacientes->registrar_paciente($_POST["codigo_paciente"],$_POST["nombres"],$_POST["telefono"],$_POST["edad"],$_POST["ocupacion"],$_POST["sucursal"],$_POST["dui"],$_POST["correo"],$_POST["id_usuario"],$_POST["cod_empresa_pac"]);	  
    break;

    case 'agregaConsulta':
     	$datos=$pacientes->get_pacientes();

     	foreach ($datos as $row) {
     		$output["id_paciente"]=$row["id_paciente"];
     		$output["nombres"]=$row["nombres"];
     	}
    echo json_encode($output);
    break;

     case 'mostrar':
    
	$datos=$pacientes->get_paciente_por_id($_POST["id_paciente"]);

    	foreach($datos as $row)
    	{
    		$output["id_paciente"] = $row["id_paciente"];
			$output["nombres"] = $row["nombres"];
			$output["codigo"] = $row["codigo"];						
    	}
    echo json_encode($output);


	 break;


	case 'editarp':
    
	$datos=$pacientes->get_paciente_por_id($_POST["id_paciente"]);

    				foreach($datos as $row)
    				{
    					$output["id_paciente"] = $row["id_paciente"];
						$output["nombres"] = $row["nombres"];
						$output["telefono"] = $row["telefono"];
						$output["ocupacion"] = $row["ocupacion"];
						$output["empresa"] = $row["empresa"];
						$output["correo"] = $row["correo"];
						$output["codigo"] = $row["codigo"];
						$output["edad"] = $row["edad"];
						$output["dui"] = $row["dui"];						
    				}
        
    echo json_encode($output);
	break;

      case "activarydesactivar":
     
     //los parametros id_paciente y est vienen por via ajax
     $datos=$pacientes->get_paciente_por_id($_POST["id_paciente"]);

          // si existe el id del paciente entonces recorre el array
	      if(is_array($datos)==true and count($datos)>0){

              //edita el estado del paciente
		      $pacientes->editar_estado($_POST["id_paciente"],$_POST["est"]);
		     
	        } 

     break;

     case "listar":

     $datos=$pacientes->get_pacientes($_POST["sucursal_paciente"]);

     //Vamos a declarar un array
 	 $data= Array();

     foreach($datos as $row)

			{
				$sub_array = array();


				
			
	             $sub_array[] = $row["codigo"];
				 $sub_array[] = $row["nombres"];
				 $sub_array[] = $row["telefono"];
				 $sub_array[] = $row["correo"];
				 $sub_array[] = date("d-m-Y",strtotime($row["fecha_reg"]));
            
               $sub_array[] = '<button type="button" onClick="mostrarc('.$row["id_paciente"].');" id="'.$row["id_paciente"].'" class="btn btn-infos btn-md"><i class="fa fa-hospital-o" aria-hidden="true"></i> Agregar Consulta</button>';              
                                                
				$data[] = $sub_array;
			}

      $results = array(
 			"sEcho"=>1, //Información para el datatables
 			"iTotalRecords"=>count($data), //enviamos el total registros al datatable
 			"iTotalDisplayRecords"=>count($data), //enviamos el total registros a visualizar
 			"aaData"=>$data);
 		echo json_encode($results);


     break;

      /*se muestran en ventana modal el datatable de los pacientes en ventas para seleccionar luego los pacientes activos y luego se autocomplementa los campos de un formulario*/
     case "listar_en_ventas":

     $datos=$pacientes->get_pacientes($_POST["sucursal_paciente"]);

     //Vamos a declarar un array
 	 $data= Array();

     foreach($datos as $row){
					
				 $sub_array = array();

	             $sub_array[] = $row["codigo"];
				 $sub_array[] = $row["nombres"];		
				

                 $sub_array[] = '<button type="button" onClick="agregar_registro('.$row["id_paciente"].');" id="'.$row["id_paciente"].'" class="btn btn-edit btn-md"><i class="fa fa-plus" aria-hidden="true"></i> Agregar</button>';
                
				$data[] = $sub_array;
			}

      $results = array(
 			"sEcho"=>1, //Información para el datatables
 			"iTotalRecords"=>count($data), //enviamos el total registros al datatable
 			"iTotalDisplayRecords"=>count($data), //enviamos el total registros a visualizar
 			"aaData"=>$data);
 		echo json_encode($results);


     break;


     /*valida los pacientes activos y se muestran en un formulario*/
     case "buscar_paciente":


	$datos=$pacientes->get_paciente_por_id($_POST["id_paciente"]);


          
	      if(is_array($datos)==true and count($datos)>0){

				foreach($datos as $row)
				{
					$output["codigo"] = $row["codigo"];
					$output["nombres"] = $row["nombres"];
				
					
				}

			

	        }

	        echo json_encode($output);

     break;

     case "eliminar_paciente":

            $datos= $pacientes->get_paciente_por_id($_POST["id_paciente"]);


		       if(is_array($datos)==true and count($datos)>0){

		            $pacientes->eliminar_paciente($_POST["id_paciente"]);

		            $messages[]="El paciente se eliminó exitosamente";

		       
		       }
		      
   	 // }




	//prueba mensaje de success

     if (isset($messages)){
				
				?>
				<div class="alert alert-success" role="alert">
						<button type="button" class="close" data-dismiss="alert">&times;</button>
						<strong>¡Bien hecho!</strong>
						<?php
							foreach ($messages as $message) {
									echo $message;
								}
							?>
				</div>
				<?php
			}


	//fin mensaje success


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


	 	
	 }
  


   ?>
   