<?php


  //llamo a la conexion de la base de datos 
  require_once("../config/conexion.php");
  //llamo al modelo Producto
  require_once("../modelos/Envios.php");

  $envio = new Envios();

	switch ($_GET["op"]) {

	 case "listar_en_envios":

  $datos=$envio->get_productos_envio();
  $data= Array();
    
    foreach($datos as $row)
    {
      $sub_array = array();
          $stock="";
          if($row["stock"]<=5){                      
            $stock = $row["stock"];
            $atributo = "badge bg-red-active";
                            
      } else {
          $stock = $row["stock"];
          $atributo = "badge bg-green";
      }

        $sub_array[] = $row["id_ingreso"];
        $sub_array[] = $row["id_producto"];
        $sub_array[] = $row["modelo"];
        $sub_array[] = $row["marca"];
        $sub_array[] = $row["color"];
        $sub_array[] = $row["medidas"];
        $sub_array[] = '<span class="'.$atributo.'">'.$row["stock"].'</span>';        
              $sub_array[] = $row["bodega"];
              $sub_array[] = $row["categoriaub"];
      $sub_array[] = '<button type="button" name="" id="'.$row["id_producto"].'" class="btn btn-dark btn-md " onClick="traslado_Aros('.$row["id_producto"].','.$row["id_ingreso"].')"><i class="fa fa-plus"></i> Agrega Envio</button>';              
      $data[] = $sub_array;
  }


      $results = array(
      "sEcho"=>1, //Información para el datatables
      "iTotalRecords"=>count($data), //enviamos el total registros al datatable
      "iTotalDisplayRecords"=>count($data), //enviamos el total registros a visualizar
      "aaData"=>$data);
    echo json_encode($results);


     break;

///****************LISTAR ENVIOS A SUCURSAL

  case "listar_envios_sucursal":

  $datos=$envio->get_productos_envio();
  $data= Array();
    
    foreach($datos as $row)
    {
      $sub_array = array();
          $stock="";
          if($row["stock"]<=5){                      
            $stock = $row["stock"];
            $atributo = "badge bg-red-active";
                            
      } else {
          $stock = $row["stock"];
          $atributo = "badge bg-green";
      }

        //$sub_array = array();
        $sub_array[] = $row["id_producto"];
        $sub_array[] = $row["id_ingreso"];
        $sub_array[] = $row["modelo"];
        $sub_array[] = $row["marca"];
        $sub_array[] = $row["color"];
        $sub_array[] = $row["medidas"];
        $sub_array[] = '<span class="'.$atributo.'">'.$row["stock"].'</span>';        
              $sub_array[] = $row["bodega"];
              $sub_array[] = $row["categoriaub"];
      $sub_array[] = '<button type="button" name="" id="'.$row["id_producto"].'" class="btn btn-dark btn-md " onClick="trasladosaSucursal('.$row["id_producto"].','.$row["id_ingreso"].')"><i class="fa fa-plus"></i> Agrega Envio</button>';              
      $data[] = $sub_array;
  }


      $results = array(
      "sEcho"=>1, //Información para el datatables
      "iTotalRecords"=>count($data), //enviamos el total registros al datatable
      "iTotalDisplayRecords"=>count($data), //enviamos el total registros a visualizar
      "aaData"=>$data);
    echo json_encode($results);


     break;

 case "buscar_productos_envios";        
    $datos=$envio->get_producto_por_id($_POST["id_producto"]);
			foreach($datos as $row)
				{				
					$output["id_producto"] = $row["id_producto"];
					$output["modelo"] = $row["modelo"];
					$output["marca"] = $row["marca"];
					$output["color"] = $row["color"];
					$output["stock"] = $row["stock"];     
				}
	  echo json_encode($output);

  break;

case "buscar_producto_traslados";
          
        $datos=$envio->producto_tralado_por_id($_POST["id_producto"],$_POST["id_ingreso"]);

        foreach($datos as $row)
        {
          
          $output["id_producto"] = $row["id_producto"];
          $output["modelo"] = $row["modelo"];
          $output["marca"] = $row["marca"];
          $output["color"] = $row["color"];
          $output["medidas"] = $row["medidas"];
          $output["stock"] = $row["stock"];
          $output["categoriaub"] = $row["categoriaub"];     
          
          
        }

        echo json_encode($output);

     break;

    case "registrar_ingreso";
	    $envio->agrega_detalle_ingreso();
    break;

    /////********traslados sucursal
    case "registrar_traslados_sucursal";
      $envio->traslado_a_sucursal();
    break;

    case "listar_requisiones":
      $datos = $envio->listar_requisiones();
         //declaramos el array

         $data = Array();


         foreach($datos as $row){

            
            $sub_array= array();

             //ESTADO
          $est = '';
         
           /*$atrib = "btn btn-warning btn-md estado";
          if($row["estado"] == 0){
            $est = 'PENDIENTE';
            $atrib = "btn btn-warning btn-md estado";
          }
          else{
            if($row["estado"] == 1){
              $est = 'ACTIVO';
              
            } 
          }*/


            //cargo

            /*if($row["cargo"]==1){

              $cargo="ADMINISTRADOR";

            } else{

              if($row["cargo"]==0){
                   
                   $cargo="EMPLEADO";
              }
            }*/


         $sub_array[]= $row["codigo_envio"];
         //$sub_array[] = $row["codigo_envio"];
         $sub_array[] = $row["sucursal_origen"];
         $sub_array[] = $row["sucursal_destino"];
         //$sub_array[] = $cargo;
         //$sub_array[] = $row[""];
         $sub_array[] = $row["usuario"];
         $sub_array[] = $row["modelo"];
         //$sub_array[] = date("d-m-Y",strtotime($row["fecha_ingreso"]));

              
         $sub_array[] = '<button type="button" name="estado"> Pendiente</button>';



        
       $data[]=$sub_array;
      
          
         }

         $results= array( 

         "sEcho"=>1, //Información para el datatables
      "iTotalRecords"=>count($data), //enviamos el total registros al datatable
      "iTotalDisplayRecords"=>count($data), //enviamos el total registros a visualizar
      "aaData"=>$data);
         echo json_encode($results);


         break;

  case 'select-origin':

    if ($_POST['id_tipo']=='Metrocentro') {
      $html="
    <option value='Gav#24 ECONOMICO MASCULINO'>Gav#24 ECONOMICO MASCULINO</option>
    <option value='Gav#23 ECONOMICO MASCULINO'>Gav#23 ECONOMICO MASCULINO</option>

  
    
    ";  
      echo $html;
  }

    if ($_POST['id_tipo']=='Santa Ana') {
    $html="
    <option value=''>Seleccio25ne</option>
    <option value='Gav#24 ECONOMICO MASCULINO'>Gav#24 ECONOMICO MASCULINO</option>
    ";  
    echo $html;
  }

  case 'select_gaveta_destino':

    if ($_POST['id_tipo']=='Metrocentro') {
      $html="
        <option value=''>SELECCIONE</option>
        <option value='Gav#24 ECONOMICO MASCULINO'>Gav#24 ECONOMICO MASCULINO</option>
        <option value='Gav#23 ECONOMICO MASCULINO'>Gav#23 ECONOMICO MASCULINO</option>
      ";
      echo $html;
    }
    
    if ($_POST['id_tipo']=='Santa Ana') {
    $html="
    <option value=''>Seleccio25ne</option>
    <option value='Gav#24 ECONOMICO MASCULINO'>Gav#24 ECONOMICO MASCULINO</option>
    ";  
    echo $html;
  }  

  break;


}