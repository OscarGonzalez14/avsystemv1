
 var tabla_en_envios;
 var tabla_requisiciones;
 var tabla_envios_suc;

function init(){
	
	listarEnvio();
	envios_sucursal();

	$("#producto_form").on("submit",function(e)
	{

		guardaryeditar(e);	
	})
    
    //cambia el titulo de la ventana modal cuando se da click al boton
	$("#add_button").click(function(){

		   
		    /*habilita los campos categoria, producto, moneda ya que si se 
            editaba uno que tenia registro asociado entonces al crear un nuevo registro aparecian los campos deshabilitados*/
			 $("#categoria").attr('disabled', false);
			 $("#producto").attr('disabled', false);
			 $("#moneda").attr('disabled', false);
			
			
			$(".modal-title").text("Agregar Aros");
		
	  });

	
}

////MOVIMIENTO INTERNO DE AROS/PRODUCTOS

function listarEnvio(){

	tabla_en_envios=$('#lista_envios_data').dataTable(
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
					url: '../ajax/envios.php?op=listar_en_envios',
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

////**************LISTAR ENVIOS A SUSCURSAL***********************//////////
function envios_sucursal(){

	tabla_envios_suc=$('#envios_suc_data').dataTable(
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
					url: '../ajax/envios.php?op=listar_envios_sucursal',
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



$(document).ready(function(){
	$("#sucursal").change(function () {

					
		$("#sucursal option:selected").each(function () {
			id_tipo = $(this).val();
			$.post('../ajax/bodegas.php?op=select-sucursal', { id_tipo: id_tipo }, function(data){
				$(".ubicaciones").html(data);
			});            
		});
	})
});

//BUSCAR PRODUCTO TRASLADO
var detallesE = [];	
function traslado_Aros(id_producto){
    $.ajax({
		url:"../ajax/producto.php?op=buscar_producto",
		method:"POST",
		data:{id_producto:id_producto},
		cache: false,
		dataType:"json",

		success:function(data){                     
		var obj = {
			cantidad : 1,
			codProd  : id_producto,
			modelo   : data.modelo,
			marca    : data.marca,
			color    : data.color,
			stock    : data.stock,							
		};
		                
    detallesE.push(obj);
	listarTrasladoAros();
	$('#modalEnvios').modal("hide");

    }//fin success		

	});//fin de ajax
}// fin de funcion
		  

function listarTrasladoAros(){
$('#listProdEnvios').html('');
var filas = ""; 	
for(var i=0; i<detallesE.length; i++){
	 var filas = filas + "<tr><td colspan='1'>"+(i+1)+"</td> <td name='modelo[]' colspan='2'>"+detallesE[i].modelo+"</td> <td name='marca[]' colspan='1'>" +detallesE[i].marca+"</td> <td name='color[]' colspan='2'>" +
	 detallesE[i].color+"</td><td colspan='1'><input type='number' class='cantidad' name='cantidad[]' id=cantidad_"+i+" onClick='setCantidad(event, this, "+(i)+");' onKeyUp='setCantidadAjax(event, this, "+(i)+");' value='"+detallesE[i].cantidad+"'> </td></tr>";
}
	$('#listProdEnvios').html(filas);      
  }

  function registrarTraslados(){
    
    /*IMPORTANTE: se declaran las variables ya que se usan en el data, sino da error*/
    var ub_origen = $("#ub_origen").val();
    var ub_destino = $("#ub_destino").val();
    var numero_envio = $("#numero_envio").val();   //var comprador = $("#comprador").html();
  	var sucursal = $("#sucursal").val();
    var id_usuario = $("#id_usuario").val();
    var usuario = $("#usuario").val();
 
	if(ub_origen==ub_destino){
 		alert("Revise las Sucursales de Origen y Destino");
		return false;
	} 
    
    else{
    console.log('Proof');   
    $.ajax({
		url:"../ajax/envios.php?op=registrar_ingreso",
		method:"POST",
		data:{'arrayIngreso':JSON.stringify(detallesE),'ub_origen':ub_origen,'ub_destino':ub_destino,'id_usuario':id_usuario,'numero_envio':numero_envio,'sucursal':sucursal,'usuario':usuario},
		cache: false,		
		dataType:"html",
		error:function(x,y,z){
			console.log(x);
			console.log(y);
			console.log(z);
		},         
		success:function(data){
		console.log(data);
        detalles = [];
        $('#listProdEnvios').html('');
        setTimeout ("bootbox.alert('Se ha registrado el envio con éxito');", 100);       
 
        setTimeout ("explode();", 2000); 
	}


	});	

}	
	
}


///////CONTROL DE TRASLADOS A SUCURSAL
var detallesE = [];	
function trasladosaSucursal(id_producto){
    $.ajax({
		url:"../ajax/producto.php?op=buscar_producto",
		method:"POST",
		data:{id_producto:id_producto},
		cache: false,
		dataType:"json",

		success:function(data){                     
		var obj = {
			cantidad : 1,
			codProd  : id_producto,
			modelo   : data.modelo,
			marca    : data.marca,
			color    : data.color,
			stock    : data.stock,							
		};
		                
    detallesE.push(obj);
	listarTrasladoSucursal();
	$('#envSucursal').modal("hide");

    }//fin success		

	});//fin de ajax
}// fin de funcion

function listarTrasladoSucursal(){
$('#listEnviosSucursal').html('');
var filas = ""; 	
for(var i=0; i<detallesE.length; i++){
	 var filas = filas + "<tr><td colspan='1'>"+(i+1)+"</td> <td name='modelo[]' colspan='2'>"+detallesE[i].modelo+"</td> <td name='marca[]' colspan='1'>" +detallesE[i].marca+"</td> <td name='color[]' colspan='2'>" +
	 detallesE[i].color+"</td><td colspan='1'><input type='number' class='cantidad' name='cantidad[]' id=cantidad_"+i+" onClick='setCantidad(event, this, "+(i)+");' onKeyUp='setCantidadAjax(event, this, "+(i)+");' value='"+detallesE[i].cantidad+"'> </td></tr>";
}
	$('#listEnviosSucursal').html(filas);      
  }


  function setCantidad(event, obj, idx){
  	event.preventDefault();
  	detallesE[idx].cantidad = parseInt(obj.value);
 
  }

       function explode(){

	    location.reload();
}  

init();