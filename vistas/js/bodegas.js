 var tabla_en_bodegas;
 var tabla_accesorios;

 //Función que se ejecuta al inicio
function init(){
	
	listar_en_bodegas();
	listar_acc_bodega();
}


$(document).ready(function(){
	$("#sucursal").change(function () {

					
		$("#sucursal option:selected").each(function () {
			id_tipo = $(this).val();
			$.post('../ajax/bodegas.php?op=select-sucursal', { id_tipo: id_tipo }, function(data){
				$("#ubicaciong").html(data);
			});            
		});
	})
});



function listar_en_bodegas(){

	tabla_en_bodegas = $('#lista_productos_bodegas_data').dataTable(
	{
		"aProcessing": true,//Activamos el procesamiento del datatables
	    "aServerSide": true,//Paginación y filtrado realizados por el servidor
	    dom: 'Bfrtip',//Definimos los elementos del control de tabla
	    buttons: [		          
		            'copyHtml5',
		            'excelHtml5',
		            'csvHtml5',
		            'pdf'
		        ],
		"ajax":
				{
					url: '../ajax/bodegas.php?op=listar_en_bodegas',
					type : "get",
					dataType : "json",						
					error: function(e){
						console.log(e.responseText);	
					}
				},
		"bDestroy": true,
		"responsive": true,
		"bInfo":true,
		"iDisplayLength": 10,//Por cada 10 registros hace una paginación
	    "order": [[ 0, "desc" ]],//Ordenar (columna,orden)
	    
	    "language": {
 
			    "sProcessing":     "Procesando...",
			 
			    "sLengthMenu":     "Mostrar _MENU_ registros",
			 
			    "sZeroRecords":    "No se encontraron resultados",
			 
			    "sEmptyTable":     "Ningún dato disponible en esta tabla",
			 
			    "sInfo":           "Mostrando un total de _TOTAL_ registros",
			 
			    "sInfoEmpty":      "Mostrando un total de 0 registros",
			 
			    "sInfoFiltered":   "(filtrado de un total de _MAX_ registros)",
			 
			    "sInfoPostFix":    "",
			 
			    "sSearch":         "Buscar:",
			 
			    "sUrl":            "",
			 
			    "sInfoThousands":  ",",
			 
			    "sLoadingRecords": "Cargando...",
			 
			    "oPaginate": {
			 
			        "sFirst":    "Primero",
			 
			        "sLast":     "Último",
			 
			        "sNext":     "Siguiente",
			 
			        "sPrevious": "Anterior"
			 
			    },
			 
			    "oAria": {
			 
			        "sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
			 
			        "sSortDescending": ": Activar para ordenar la columna de manera descendente"
			 
			    }

			   }//cerrando language
	       
	}).DataTable();
}

function listar_acc_bodega(){

	tabla_accesorios= $('#lista_acc_bodegas_data').dataTable(
	{
		"aProcessing": true,//Activamos el procesamiento del datatables
	    "aServerSide": true,//Paginación y filtrado realizados por el servidor
	    dom: 'Bfrtip',//Definimos los elementos del control de tabla
	    buttons: [		          
		            'copyHtml5',
		            'excelHtml5',
		            'csvHtml5',
		            'pdf'
		        ],
		"ajax":
				{
					url: '../ajax/bodegas.php?op=listar_acc_en_bodegas',
					type : "get",
					dataType : "json",						
					error: function(e){
						console.log(e.responseText);	
					}
				},
		"bDestroy": true,
		"responsive": true,
		"bInfo":true,
		"iDisplayLength": 10,//Por cada 10 registros hace una paginación
	    "order": [[ 0, "desc" ]],//Ordenar (columna,orden)
	    
	    "language": {
 
			    "sProcessing":     "Procesando...",
			 
			    "sLengthMenu":     "Mostrar _MENU_ registros",
			 
			    "sZeroRecords":    "No se encontraron resultados",
			 
			    "sEmptyTable":     "Ningún dato disponible en esta tabla",
			 
			    "sInfo":           "Mostrando un total de _TOTAL_ registros",
			 
			    "sInfoEmpty":      "Mostrando un total de 0 registros",
			 
			    "sInfoFiltered":   "(filtrado de un total de _MAX_ registros)",
			 
			    "sInfoPostFix":    "",
			 
			    "sSearch":         "Buscar:",
			 
			    "sUrl":            "",
			 
			    "sInfoThousands":  ",",
			 
			    "sLoadingRecords": "Cargando...",
			 
			    "oPaginate": {
			 
			        "sFirst":    "Primero",
			 
			        "sLast":     "Último",
			 
			        "sNext":     "Siguiente",
			 
			        "sPrevious": "Anterior"
			 
			    },
			 
			    "oAria": {
			 
			        "sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
			 
			        "sSortDescending": ": Activar para ordenar la columna de manera descendente"
			 
			    }

			   }//cerrando language
	       
	}).DataTable();
}


var detalles = [];	
function agregarDetalleBodega(id_producto){
	$.ajax({
	url:"../ajax/bodegas.php?op=buscar_producto_bodega",
	method:"POST",
	data:{id_producto:id_producto},
	cache: false,
	dataType:"json",

	success:function(data){                       
        if(data.id_producto){
			if (typeof data == "string"){
				data = $.parseJSON(data);
		}
		console.log(data);
		                
		var obj = {
			cantidad : 1,
			codProd  : id_producto,
			stock    : data.stock,
			color : data.color,
			medidas : data.medidas,
			modelo	 : data.modelo
			//ubicacionu: data.categoriau
		};		                
	
	detalles.push(obj);
	listarDetallesBodegas();

	$('#lista_productos_bodegas_Modal').modal("hide");

	}//if validacion id_producto

        else {

        	alert(data.error);
        }
                  
    }//fin success		

	});//fin de ajax
			
}// fin de funcion

function listarDetallesBodegas(){
  	$('#listIngresoSA').html('');
  	var filas = "";
  	
  	for(var i=0; i<detalles.length; i++){
		            
        var filas = filas + "<tr><td>"+(i+1)+"</td></td><td name='modelo[]'>"+"Mod.: "+detalles[i].modelo+" - Color: "+detalles[i].color+" - Medidas: "+detalles[i].medidas+"</td><td><input type='number' class='cantidad input-group-sm' name='cantidad[]' id='cantidad[]' onClick='setCantidad(event, this, "+(i)+");' onKeyUp='setCantidad(event, this, "+(i)+");' value='"+detalles[i].cantidad+"'></td><td> <input type='hidden' name='cod_prod' id='cod_prod' value='"+detalles[i].codProd+"'></td></tr>";
		
	}//cierre for

	
	$('#listIngresoSA').html(filas);

  }


  var detalleacc = [];	
	function agregarDetalle_accBodega(id_producto){
	$.ajax({
	url:"../ajax/bodegas.php?op=buscar_acces_bodega",
	method:"POST",
	data:{id_producto:id_producto},
	cache: false,
	dataType:"json",

	success:function(data){                       
        if(data.id_producto){
			if (typeof data == "string"){
				data = $.parseJSON(data);
		}
		console.log(data);
		                
		var obj = {
			cantidad : 1,
			codProd  :  id_producto,
			marca    :  data.marca,
			modelo    :  data.modelo			
		};		                
	
	detalleacc.push(obj);
	listarDetalles_acc_Bodegas();

	$('#lista_acc_bodegas_Modal').modal("hide");

	}//if validacion id_producto

        else {

        	alert(data.error);
        }
                  
    }//fin success		

	});//fin de ajax
			
}// fin de funcion


////AGREGA DETALLE DE ACCESORIOS



var detalles= [];	
	function agregarDetalle_accBodega(id_producto){
	$.ajax({
	url:"../ajax/bodegas.php?op=buscar_acces_bodega",
	method:"POST",
	data:{id_producto:id_producto},
	cache: false,
	dataType:"json",

	success:function(data){                       
        if(data.id_producto){
			if (typeof data == "string"){
				data = $.parseJSON(data);
		}
		console.log(data);
		                
		var obj = {
			cantidad : 1,
			codProd  :  id_producto,
			marca    :  data.marca,
			modelo   :  data.modelo			
		};		                
	
	detalles.push(obj);
	listarDetalles_acc_Bodegas();

	$('#lista_acc_bodegas_Modal').modal("hide");

	}//if validacion id_producto

        else {

        	alert(data.error);
        }
                  
    }//fin success		

	});//fin de ajax
			
}// fin de funcion


////AGREGA DETALLE DE ACCESORIOS



function listarDetalles_acc_Bodegas(){
  	$('#listIngresoSA').html('');
  	var filas = "";
  	
  	for(var i=0; i<detalles.length; i++){
		            
        var filas = filas + "<tr><td>"+(i+1)+"</td></td><td name='modelo[]'>"+"Mod.: "+detalles[i].modelo+" - Marca: "+detalles[i].marca+"</td><td><input type='number' class='cantidad input-group-sm' name='Ycantidad[]' id='cantidad[]' onClick='setCantidad(event, this, "+(i)+");' onKeyUp='setCantidad(event, this, "+(i)+");' value='"+detalles[i].cantidad+"'><td> <input type='hidden' name='cod_prod' id='cod_prod' value='"+detalles[i].codProd+"'></td></tr>";
		
	}//cierre for

	
	$('#listIngresoSA').html(filas);

  }


function updateBodega(){

    var sucursal = $("#sucursal").val();
    var id_producto =$('#cod_prod').val();
    var ubicaciong =$('#ubicaciong').val();

    if(sucursal!="" && ubicaciong != ""){
    console.log('error.Oscar');
    $.ajax({
		url:"../ajax/producto.php?op=update_warehouse",
		method:"POST",
		data:{'arrayIngreso':JSON.stringify(detalles),'sucursal':sucursal, 'id_producto':id_producto,'ubicaciong':ubicaciong},
		cache: false,
		dataType:"html",
		error:function(x,y,z){
			console.log(x);
			console.log(y);
			console.log(z);
	},      
      
			
	success:function(data){
        alert('Se ha registrado el ingreso con éxito'); 
          
          //refresca la pagina, se llama a la funtion explode
        setTimeout ("explode();", 2000); 
         	
		}

	});	

	 //cierre del condicional de validacion de los campos del cliente

	 } else{

	 	alert("Debe seleccionar bodega y ubicación");
	 	 return false;
	 } 	
	
  }

   

  //*****************************************************************************
   /*RESFRESCA LA PAGINA DESPUES DE REGISTRAR LA VENTA*/
       function explode(){

	    location.reload();
}


 init();  	