var tabla;

var tabla_en_ventas;

//Función que se ejecuta al inicio
function init(){
	
	listar();

	//llama la lista de pacientes en ventana modal en ventas.php
    listar_en_ventas();

	 //cuando se da click al boton submit entonces se ejecuta la funcion guardaryeditar(e);
	$("#paciente_form").on("submit",function(e)
	{

		guardaryeditar(e);	
	})

	$("#editapaciente_form").on("submit",function(e)
	{

		editapaciente(e);	
	})

    
    //cambia el titulo de la ventana modal cuando se da click al boton
	$("#add_button").click(function(){

		     //habilita los campos cuando se agrega un registro nuevo
			  $("#cedula").attr('disabled', false);
			  $("#nombre").attr('disabled', false);
			  $("#apellido").attr('disabled', false);
			
			$(".modal-title").text("Agregar paciente");
		
	  });

	
}

//Función limpiar
/*IMPORTANTE: no limpiar el campo oculto del id_usuario, sino no se registra
el paciente*/
function limpiar()
{
	
	$('#cedula').val("");
	$('#nombre').val("");
	$('#apellido').val("");
	$('#telefono').val("");
	$('#email').val("");
	$('#direccion').val("");
	$('#estado').val("");
	$('#id_paciente').val("");
}


//Función Listar
function listar()
{
	var sucursal_paciente = $("#sucursal_paciente").val();
	tabla=$('#paciente_data').dataTable(
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
					url: '../ajax/paciente.php?op=listar',
					type : "post",
					//dataType : "json",
					data:{sucursal_paciente:sucursal_paciente},						
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




//Mostrar datos del paciente en la ventana modal 
function mostrarc(id_paciente)
{
	$.post("../ajax/paciente.php?op=mostrar",{id_paciente : id_paciente}, function(data, status)
	{
		data = JSON.parse(data);



		   console.log(data);
		

		
					$('#consultasModal').modal('show');

					

					$('#codigos').val(data.id_paciente);				

	                //$("#codigos").attr('disabled', 'disabled');
					$('#nombre_pac').val(data.nombres);
					$('#codigop').val(data.codigo);					

                    //$('#id_paciente').val(data.id_paciente);

					//$('.modal-title').text("Nueva Consulta");


		      
		
				
		});
        
        
	}




	//la funcion guardaryeditar(e); se llama cuando se da click al boton submit
function guardaryeditar(e)
{
	e.preventDefault(); //No se activará la acción predeterminada del evento
	var formData = new FormData($("#paciente_form")[0]);


		$.ajax({
			url: "../ajax/paciente.php?op=guardaryeditar",
		    type: "POST",
		    data: formData,
		    contentType: false,
		    processData: false,

		    success: function(datos)
		    {                    
		          /*bootbox.alert(datos);	          
		          mostrarform(false);
		          tabla.ajax.reload();*/

		         //alert(datos);
                 
                 /*imprimir consulta en la consola debes hacer un print_r($_POST) al final del metodo 
                    y si se muestran los valores es que esta bien, y se puede imprimir la consulta desde el metodo
                    y se puede ver en la consola o desde el mensaje de alerta luego pegar la consulta en phpmyadmin*/
		         console.log(datos);

	            $('#paciente_form')[0].reset();
				$('#pacienteModal').modal('hide');

				$('#resultados_ajax').html(datos);
				$('#paciente_data').DataTable().ajax.reload();
				
                limpiar();
					
		    }

		});

    setTimeout ("explode();", 2000);     
       
}



//Mostrar datos del paciente en la ventana modal 
function editarp(id_paciente)
{
	$.post("../ajax/paciente.php?op=editarp",{id_paciente : id_paciente}, function(data, status)
	{
		data = JSON.parse(data);
		console.log(data);
		
					$('#pacienteModal').modal('show');					
					$('#id_paciente').val(data.id_paciente);
					$('#codigo').val(data.codigo);
					$('#nombres').val(data.nombres);	
					$('#telefono').val(data.telefono);
					$('#ocupacion').val(data.ocupacion);	
					$('#empresa').val(data.empresa);
					$('#edad').val(data.edad);
					$('#dui').val(data.dui);
	                //$("#codigos").attr('disabled', 'disabled');
					$('#correo').val(data.correo);
				
                    //$('#id_paciente').val(data.id_paciente);
					$('.modal-title').text("Editar Paciente");	      
		
				
		});
   
        
	}
	
 /*RESFRESCA LA PAGINA DESPUES DE REGISTRAR LA COMPRA*/
       function explode(){

	    location.reload();
}	

    //Función Listar
function listar_en_ventas(){

	tabla_en_ventas=$('#lista_pacientes_data').dataTable(
	{
		"aProcessing": true,//Activamos el procesamiento del datatables
	    "aServerSide": true,//Paginación y filtrado realizados por el servidor
	    dom: 'Bfrtip',//Definimos los elementos del control de tabla
	    buttons: [		          
		         
		            'excelHtml5',

		            'pdf'
		        ],
		"ajax":
				{
					url: '../ajax/paciente.php?op=listar_en_ventas',
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


//AUTOCOMPLETAR DATOS DEL paciente EN VENTAS
	

	 	function agregar_registro(id_paciente){

      
		$.ajax({
			url:"../ajax/paciente.php?op=buscar_paciente",
			method:"POST",
			data:{id_paciente:id_paciente},
			dataType:"json",
			success:function(data)
			{           
             
      
				$('#modalPaciente').modal('hide');
				$('#cod_pac').val(data.codigo);
				$('#nombre_pac').val(data.nombres);
				$('#id_paciente').val(id_paciente);
				
                        
				
			}
		})
	
    }
     
     //ELIMINAR paciente

function eliminarp(id_paciente){
	  
	 bootbox.confirm("¿Está Seguro de eliminar el paciente?", function(result){
		if(result)
		{

				$.ajax({
					url:"../ajax/paciente.php?op=eliminar_paciente",
					method:"POST",
					data:{id_paciente:id_paciente},

					success:function(data)
					{
						//alert(data);
						$("#resultados_ajax").html(data);
						$("#paciente_data").DataTable().ajax.reload();
					}
				});

		      }

		 });//bootbox


   }



init();