<?php


require_once("../config/conexion.php");

require_once("../modelos/Productos.php");
$productos = new Producto();

switch ($_GET["op"]) {
      case "listar_en_bodegas":

     $datos=$productos->get_productos_aros();

     //Vamos a declarar un array
 	 $data= Array();

    foreach($datos as $row)
			{
				$sub_array = array();
				  
				$sub_array[] = $row["id_producto"];
				$sub_array[] = $row["marca"];
				$sub_array[] = $row["modelo"]." ".$row["color"]." ".$row["medidas"]." ".$row["categoriau"];
				//$sub_array[] = $row["stock"];
				$sub_array[] = '<button type="button" class="btn btn-dark name="" id="'.$row["id_producto"].'" onClick="agregarDetalleBodega('.$row["id_producto"].')"><i class="fa fa-plus"></i> Agregar</button>';  
			

				$data[] = $sub_array;
			 
			 }


      $results = array(
 			"sEcho"=>1, //Información para el datatables
 			"iTotalRecords"=>count($data), //enviamos el total registros al datatable
 			"iTotalDisplayRecords"=>count($data), //enviamos el total registros a visualizar
 			"aaData"=>$data);
 		echo json_encode($results);


     break;

    case "buscar_producto_bodega":
          
    $datos=$productos->get_producto_por_id($_POST["id_producto"]);
        /*comprobamos que el producto esté activo, de lo contrario no lo agrega*/
	    if(is_array($datos)==true) {

			foreach($datos as $row)
			{
				$output["id_producto"] = $row["id_producto"];
				$output["modelo"] = $row["modelo"];
				$output["color"] = $row["color"];
				$output["medidas"] = $row["medidas"];
				$output["stock"] = $row["stock"];
				$output["categoriau"] = $row["categoriau"];
			}
		
		     
	        } else {
                 
                 //si no existe el registro entonces no recorre el array
                 $output["error"]="El producto seleccionado está inactivo, intenta con otro";

	        }

	        echo json_encode($output);

     break;

case "listar_acc_en_bodegas":

    $datos=$productos->get_accesorios();
    $data= Array();

    foreach($datos as $row)
	{
		$sub_array = array();
				  
		$sub_array[] = $row["id_producto"];
		$sub_array[] = $row["marca"];
		$sub_array[] = $row["modelo"];
				//$sub_array[] = $row["stock"];
		$sub_array[] = '<button type="button" class="btn btn-dark name="" id="'.$row["id_producto"].'" onClick="agregarDetalle_accBodega('.$row["id_producto"].')"><i class="fa fa-plus"></i> Agregar</button>';  
			

		$data[] = $sub_array;
			 
	}


      $results = array(
 			"sEcho"=>1, //Información para el datatables
 			"iTotalRecords"=>count($data), //enviamos el total registros al datatable
 			"iTotalDisplayRecords"=>count($data), //enviamos el total registros a visualizar
 			"aaData"=>$data);
 		echo json_encode($results);


     break;


    case "buscar_acces_bodega":
          
    $datos=$productos->get_producto_por_id($_POST["id_producto"]);
        /*comprobamos que el producto esté activo, de lo contrario no lo agrega*/
	    if(is_array($datos)==true) {

			foreach($datos as $row)
			{
				$output["id_producto"] = $row["id_producto"];
				$output["modelo"] = $row["modelo"];
				$output["marca"] = $row["marca"];
			}
		
		     
	        } else {
                 
                 //si no existe el registro entonces no recorre el array
                 $output["error"]="El producto seleccionado está inactivo, intenta con otro";

	        }

	        echo json_encode($output);

     break;

     case 'select-sucursal':

		if ($_POST['id_tipo']=='Metrocentro') {
			$html="
		<option value='Gav#24 ECONOMICO MASCULINO'>Gav#24 ECONOMICO MASCULINO</option>
    	<option value='Gav#23 ECONOMICO MASCULINO'>Gav#23 ECONOMICO MASCULINO</option>";	
			echo $html;
	}

		if ($_POST['id_tipo']=='Santa Ana') {
		$html="
		<option value=''>Seleccione</option>
		<option value='MAS#7 MARCAS FEMENINO ACETATO #2'>MAS#7 MARCAS FEMENINO ACETATO #2</option>
		<option value='MAS#7 MARCAS FEMENINO METAL #1'>MAS#7 MARCAS FEMENINO METAL #1</option>
		<option value='ME#6 RAYBAN MARCAS MIX #12'>ME#6 RAYBAN MARCAS MIX #12</option>
		<option value='ME#6 RAYBAN MARCAS MIX #12'>ME#6 RAYBAN MARCAS MIX #12</option>
		<option value='ME#6 MARCAS VARIAS MUJER #11'>ME#6 MARCAS VARIAS MUJER #11</option>
		<option value='ME#6 PULL&BEAR #10'>ME#6 PULL&BEAR #10</option>
		<option value='ME#6 AND VAS MUJER ACETATO #9'>ME#6 AND VAS MUJER ACETATO #9</option>
		<option value='ME#6 MARCAS VARIAS HOMBRE #8'>ME#6 MARCAS VARIAS HOMBRE #8</option>
		<option value='ME#6 RAY BAN MIX ACETATO #7'>ME#6 RAY NAB MIX ACETATO #7</option>
		<option value='ME#6 ANDVAS HOMBRE ACETATO #6'>ME#6 ANDVAS HOMBRE ACETATO #6</option>
		<option value='ME#6 CONVERSE ACETATO MIX #5'>CONVERSE ACETATO MIX #5</option>
		<option value='ME#6 METAL BAS-HOMBRE #4'>ME#6 METAL BAS-HOMBRE #4</option>
		<option value='ME#6 METAL BAS-HOMBRE #3'>ME#6 METAL BAS-HOMBRE #3</option>
		<option value='ME#6 METAL ECONO-MIX #2'>ME#6 METAL ECONO-MIX #2</option>
		<option value='ME#6 CONVERSE ACETATO #1'>ME#6 CONVERSE ACETATO #1</option>
		<option value='MU#4 METAL FEMENINO ECONOMICO #6'>MU#4 METAL FEMENINO ECONOMICO #6</option>
		<option value='MU#4 ANDVAS NIÑO ACETATO #5'>MU#4 ANDVAS NIÑO ACETATO #5</option>
		<option value='MU#4 METAL MASCULINO ECONOMICO #4'>MU#4 METAL MASCULINO ECONOMICO #4</option>
		<option value='MU#4 METAL MIXTO ECONOMICO #3'>'MU#4 METAL MIXTO ECONOMICO #3</option>
		<option value='MU#4 UNISEX ANDVAS ACETATO #2'>MU#4 UNISEX ANDVAS ACETATO #2</option>
		<option value='MU#4 UNISEX ANDVAS ACETATO #1'>MU#4 UNISEX ANDVAS ACETATO #1</option>
		<option value='MU#3 FEMENINO PULL&BEAR #6'>MU#3 FEMENINO PULL&BEAR #6</option>
		<option value='MU#3 MASCULINO RAY BAN #5'>MU#3 MASCULINO RAY BAN #5</option>
		<option value='MU#3 MARCAS FEMENINO/METAL #4'>MU#3 MARCAS FEMENINO/METAL #4</option>
		<option value='MU#3 MARCAS MASCULINO/METAL #3'>MU#3 MARCAS MASCULINO/METAL #3</option>
		<option value='MU#3 MARCAS FEMENINO/ACETATO #2'>MU#3 MARCAS FEMENINO/ACETATO #2</option>
		<option value='MU#3 MARCAS METAL/ACETATO #1'>MU#3 MARCAS METAL/ACETATO #1</option>
		<option value='EX#2 ANDVAS ACETATO'>EX#2 ANDVAS ACETATO</option>
		<option value='EX#1 MARCAS'>EX#1 MARCAS</option>
		
";	
		echo $html;
	}
      break;
}//Fin Switch