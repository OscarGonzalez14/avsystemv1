var tabla;

  //Función que se ejecuta al inicio
function init(){
	
	listar();

}



//Función Listar
function listar()
{
	tabla=$('#consultas_data').dataTable(
	{
		"aProcessing": true,//Activamos el procesamiento del datatables
	    "aServerSide": true,//Paginación y filtrado realizados por el servidor
	    dom: 'Bfrtip',//Definimos los elementos del control de tabla
	    buttons: [		          
		            'copyHtml5',
		            'excelHtml5',
		           
		            'pdf'
		        ],
		"ajax":
				{
					url: '../ajax/consultas.php?op=listar',
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




 //VER DETALLE PROVEEDOR-COMPRA
	 $(document).on('click', '.detconsultas', function(){
	 	//toma el valor del id
		var id_consulta = $(this).attr("id");

		$.ajax({
			url:"../ajax/consultas.php?op=ver_consultas",
			method:"POST",
			data:{id_consulta:id_consulta},
			cache:false,
			dataType:"json",
			success:function(data)
			{
				
				$("#nombres").html(data.nombres);
				$("#codigo").html(data.codigo);
				$("#usuario").html(data.usuario);
			    $("#fecha_reg").html(data.fecha_reg);
				$("#empresa").html(data.empresa);
				$("#diagnostico").html(data.diagnostico);
				$("#sugeridos").html(data.sugeridos);
				$("#fecha_reg").html(data.fecha_reg);
				$("#oiesfreasl").html(data.oiesfreasl);
				$("#oicilindrosl").html(data.oicilindrosl);
				$("#oiejesl").html(data.oiejesl);
				$("#oiprismal").html(data.oiprismal);
				$("#oiadicionl").html(data.oiadicionl);
				$("#odesferasl").html(data.odesferasl);
				$("#odcilndrosl").html(data.odcilndrosl);
				$("#odejesl").html(data.odejesl);
				$("#odprismal").html(data.odprismal);
				$("#odadicionl").html(data.odadicionl);
				$("#oiesferasa").html(data.oiesferasa);
				$("#oicolindrosa").html(data.oicolindrosa);
				$("#oiejesa").html(data.oiejesa);
				$("#oiprismaa").html(data.oiprismaa);
				$("#oiadiciona").html(data.oiadiciona);
				$("#odesferasa").html(data.odesferasa);
				$("#odcilindrosa").html(data.odcilindrosa);
				$("#odejesa").html(data.odejesa);
				$("#dprismaa").html(data.dprismaa);
				$("#oddiciona").html(data.oddiciona);
				$("#sugeridos").html(data.sugeridos);
				$("#diagnostico").html(data.diagnostico);
				$("#medicamento").html(data.medicamento);
				$("#observaciones").html(data.observaciones);
				$("#oiesferasf").html(data.oiesferasf);
				$("#oicolindrosf").html(data.oicolindrosf);
				$("#oiejesf").html(data.oiejesf);
				$("#oiprismaf").html(data.oiprismaf);
				$("#oiadicionf").html(data.oiadicionf);
				$("#odesferasf").html(data.odesferasf);
				$("#odcilindrosf").html(data.odcilindrosf);
				$("#odejesf").html(data.odejesf);
				$("#dprismaf").html(data.dprismaf);
				$("#oddicionf").html(data.oddicionf);
                 
                 //puse el alert para ver el error, sin necesidad de hacer echo en la consulta ni nada
				//alert(data);
				
			}
		})
	});
    
    
    //este es un arreglo vacio
	var detalles = [];

	
	 function agregarDetalle(id_producto){

	 	//alert(estado);

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
		                
   
						detalles.push(obj);
						listarDetalles();

						$('#lista_productosModal').modal("hide");

                      // }//if validacion id_producto

                       
						
					}//fin success		

				});//fin de ajax
			
		    
		  }// fin de funcion

  
//***********************************************************************

 /*El lenght 
	sirve para calcular la longitud del arreglo o el 
	numero de objetos que tiene el arreglo, que es lo mismo Y es por eso que 
	lo necesito en el for*/



  function listarDetalles(){

  	  
  	$('#listProdCompras').html('');

  

  	var filas = ""; 	

      

  	for(var i=0; i<detalles.length; i++){

  	

	 var filas = filas + "<tr><td>"+(i+1)+"</td> <td name='modelo[]'>"+detalles[i].modelo+"</td> <td name='marca[]'>" +detalles[i].marca+"</td> <td name='color[]'>" +detalles[i].color+"</td><td>"+detalles[i].stock+"</td><td><input type='number' class='cantidad input-group-sm' name='cantidad[]' id='cantidad[]' onClick='setCantidad(event, this, "+(i)+");' onKeyUp='setCantidad(event, this, "+(i)+");' value='"+detalles[i].cantidad+"'></td> <td>  <button href='#' class='btn btn-danger btn-lg' role='button' onClick='eliminarProd(event, "+(i)+");' aria-pressed='true'><span class='glyphicon glyphicon-trash'></span> </button></td> </tr>";

	}

	
	$('#listProdCompras').html(filas);

	
      
  }


  function setCantidad(event, obj, idx){
  	event.preventDefault();
  	detalles[idx].cantidad = parseInt(obj.value);
  	recalcular(idx);
  }





  //*******************************************************************
    /*IMPORTANTE:Event es el objeto del evento que los manejadores de eventos utilizan
parseInt es una función para convertir un valor string a entero
obj.value es el valor del campo de texto*/

  	function  eliminarProd(event, idx){
  		event.preventDefault();
  		//console.log('ELIMINAR EYTER');
  		detalles[idx].estado = 0;
  		listarDetalles();
  	}

 //********************************************************************


 function registrarCompra(){
    
    /*IMPORTANTE: se declaran las variables ya que se usan en el data, sino da error*/
    var numero_compra = $("#numero_compra").val();
    var categoria = $("#categoria").val();

    var comprador = $("#comprador").html();
  
    var id_usuario = $("#id_usuario").val();
 
    if(detalles!="" && categoria !=""){
    

     console.log('Proof');
   
    $.ajax({
		url:"../ajax/producto.php?op=registrar_compra",
		method:"POST",
		data:{'arrayCompra':JSON.stringify(detalles), 'numero_compra':numero_compra,'comprador':comprador,'id_usuario':id_usuario,'categoria':categoria},
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
            $('#listProdCompras').html('');



          setTimeout ("bootbox.alert('Se ha registrado el ingreso con éxito');", 100); 
          
 
          setTimeout ("explode();", 2000); 

         	
		}


	});	

	 //cierre del condicional de validacion de los campos del producto,proveedor,pago

	 } else{

	 	 bootbox.alert("Debe agregar al menos un item y una sucursal");
	 	 return false;
	 } 	
	
  }


  //*****************************************************************************
 /*RESFRESCA LA PAGINA DESPUES DE REGISTRAR LA COMPRA*/
       function explode(){

	    location.reload();
}


/********VENTAS***********************************************/

 //BUSCA LOS PRODUCTOS EN VENTANA MODAL EN VENTAS
  
function listar_en_ventas(){

	tabla_en_ventas=$('#lista_productos_ventas_data').dataTable(
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
					url: '../ajax/producto.php?op=listar_en_ventas',
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


 //CARGAR PRODUCTO, PRECIO, CANTIDAD, IGV, IMPORTE EN VENTAS

	//Declaración de variables necesarias para trabajar con las ventas y
	//sus detalles
	//var impuesto=18;
	//var cont=0;
	//var detalles=0;

	/*IMPORTANTE function agregarDetalleVenta y function listarDetalles:
	Asi que detalles pertenece al arreglo detalles[]
	Para agregar elementos a un arreglo en javascript, se utiliza el metodo push()
	Puedes agregar variables u objetos, lo que yo he hechos es agregarle un objeto y ese objeto que contiene mucha informacion, que sería como una fila con muchas columnas
	Para crear un objeto de ese tipo (con columnas), se utliliza esto :
	var obj = { }
	Dentro de las llaves definas columna y valor (Todo esto para una fila)
	Lo defines asi:
	nombre_columna : valor
	El lenght 
	sirve para calcular la longitud del arreglo o el 
	numero de objetos que tiene el arreglo, que es lo mismo Y es por eso que 
	lo necesito en el for. Claro que puedes agregarle un id y name al td*/
    
    //este es un arreglo vacio
	var detalles = [];

	
	 function agregarDetalleVenta(id_producto,producto,estado){
		        $.ajax({
					url:"../ajax/producto.php?op=buscar_producto_en_venta",
					 method:"POST",
					//data:dataString,
					//toma el valor del id y del estado
					data:{id_producto:id_producto, producto:producto,estado:estado},
					cache: false,
					dataType:"json",

					success:function(data){
                       
                       if(data.id_producto){

						if (typeof data == "string"){
						      data = $.parseJSON(data);
						}
						console.log(data);
		                
		        /*IMPORTANTE: var obj: es un objeto con mucha informacion que contiene una fila con muchas columnas
				Para crear un objeto de ese tipo (con columnas), se utliliza esto :
		        var obj = { }, Dentro de las llaves definas columna y valor (Todo esto para una fila)
				Lo defines asi:
				nombre_columna : valor 
				este var obj es un objeto que trae la informacion de la data (ajax/buscar_precio_compra.php)
			        */
						var obj = {
							cantidad : 1,
							codProd  : id_producto,
							producto : data.producto,
							moneda   : data.moneda,
							precio   : data.precio_venta,
							stock    : data.stock,
							dscto    : 0,
							importe  : 0,
							estado   : data.estado
						};
		                
		 /*IMPORTANTE: detalles.push(obj);: Para agregar elementos a un arreglo en javascript, se utiliza el metodo push()
			Puedes agregar variables u objetos, lo que yo he hechos es agregarle un objeto y ese objeto que contiene mucha informacion,
		    el detalles de detalles.push(obj); viene de detalles = [], una vez se agrega el objeto al arreglo entonces se llama a la function listarDetalles(); 
			*/
						detalles.push(obj);
						listarDetallesVentas();

						$('#lista_productos_ventas_Modal').modal("hide");

						//esconde el mensaje de alerta del stock

						 }//if validacion id_producto

                        else {

                        	 //si el producto está inactivo entonces se muestra una ventana modal

                        	  bootbox.alert(data.error);
                        }
                     
                     
						
					}//fin success		

				});//fin de ajax
			
		    
		  }// fin de funcion



//***********************************************************************
  
  /*IMPORTANTE: El lenght 
	sirve para calcular la longitud del arreglo o el 
	numero de objetos que tiene el arreglo, que es lo mismo Y es por eso que 
	lo necesito en el for*/

  function listarDetallesVentas(){
  	$('#listProdVentas').html('');
  	var filas = "";
  	
  	var subtotal = 0;

  	var total = 0;

    var subtotalFinal = 0;

  	var totalFinal = 0;

  	 var iva = 20;
     var igv = (iva/100);


  	for(var i=0; i<detalles.length; i++){
		if(detalles[i].estado == 1){
       
            
            var importe = detalles[i].importe = detalles[i].cantidad * detalles[i].precio;
	    

	  	    importe = detalles[i].importe = detalles[i].importe - (detalles[i].importe * detalles[i].dscto/100);


		    var filas = filas + "<tr><td>"+(i+1)+"</td> <td name='producto[]'>"+detalles[i].producto+"</td> <td name='precio[]' id='precio[]'>"+detalles[i].moneda+" "+detalles[i].precio+"</td> <td>"+detalles[i].stock+"</td> <td> <input type='text' class='cantidad' name='cantidad[]' id=cantidad_"+i+" onClick='setCantidad(event, this, "+(i)+");' onKeyUp='setCantidadAjax(event, this, "+(i)+");' value='"+detalles[i].cantidad+"'> </td>  <td><input type='text' name='descuento[]' id='descuento[]' onClick='setDescuento(event, this, "+(i)+");' onKeyUp='setDescuento(event, this, "+(i)+");' value='"+detalles[i].dscto+"'></td> <td> <span name='importe[]' id=importe"+i+">"+detalles[i].moneda+" "+detalles[i].importe+"</span> </td> <td>  <button href='#' class='btn btn-danger btn-lg' role='button' onClick='eliminarProd(event, "+(i)+");' aria-pressed='true'><span class='glyphicon glyphicon-trash'></span> </button></td>   </tr>";
		

			subtotal = subtotal + importe;

			 //concatenar para poner la moneda con el subtotal
            subtotalFinal = detalles[i].moneda+" "+subtotal;

			var su = subtotal*igv;
            var or=parseFloat(su);
            var total= Math.round(or+subtotal);


              //concatenar para poner la moneda con el total
            totalFinal = detalles[i].moneda+" "+total;
       

		}//cierre if

	}//cierre for

	
	$('#listProdVentas').html(filas);

	//subtotal
	$('#subtotal').html(subtotalFinal);
	$('#subtotal_venta').html(subtotalFinal);

	//total
	$('#total').html(totalFinal);
	$('#total_venta').html(totalFinal);

	//actualizar_importe();

  }

  /*IMPORTANTE:Event es el objeto del evento que los manejadores de eventos utilizan
parseInt es una función para convertir un valor string a entero
obj.value es el valor del campo de texto*/
  function setCantidad(event, obj, idx){
  	event.preventDefault();
  	detalles[idx].cantidad = parseInt(obj.value);
  	recalcular(idx);
  }

  function setCantidadAjax(event, obj, idx){
  	event.preventDefault();
  	//detalles[idx].cantidad = parseInt(obj.value);

  	//var idx = idx;

  	var id_producto = detalles[idx].codProd;

  	var cantidad_vender = detalles[idx].cantidad = parseInt(obj.value);

    var stock = detalles[idx].stock;

      //alert(idx);
      //alert(cantidad_vender);
      //alert(id_producto);
      //alert(stock);
  	
       $.ajax({
         
         url:"../ajax/ventas.php?op=consulta_cantidad_venta",
         method:"POST",
         data:{id_producto:id_producto, cantidad_vender:cantidad_vender},
         dataType:"json",

         success:function(data){

         	
             //$("#cantidad_"+idx).val(data);


             //console.log(data);


            
              $("#resultados_ventas_ajax").html(data);

                //se pone isNaN porque al ser vacio indica que no es un numero, entonces si valida que es cierto entonces se desabilita el boton del envio del formulario y de agregar productos
                /*si la cantidad a vender es igual a cero o a vacio o si es mayor al stock entonces se desabilita el boton de enviar formulario y de agregar productos*/
	             if(cantidad_vender=="0" || isNaN(cantidad_vender)==true || cantidad_vender>stock){
	             
	            
	             //si la cantidad es mayor al stock el borde se pone en rojo
	             $("#cantidad_"+idx).addClass("rojo");

	             //bloquea el boton "agregar producto"
	             $(".btn_producto").removeAttr("data-target");

	               //oculta el boton "enviar formulario"

	                 $("#btn_enviar").addClass("oculta_boton");

	                
                     // $("div[id=resultados_ajax]").remove();
                     

	              } else {
                     
                     //despues de eliminar agrega el id del mensaje de ajax, ya que se habia removido el mensaje "campo vacio" en la funcion eliminar
	              	 //$("#resultados_ajax").attr("id");
                       
                     // si la cantidad seleccionada es menor al stock entonces remueve la clase rojo
	              	 $("#cantidad_"+idx).removeClass("rojo");


	              	 //Desbloquea el boton "agregar producto"
	                 $(".btn_producto").attr({"data-target":"#lista_productos_ventas_Modal"});

	              
                      //aparece el boton "enviar formulario"

	                 $("#btn_enviar").removeClass("oculta_boton");
	              }
         }

       })


  	recalcular(idx);
  }

  function setDescuento(event, obj, idx){
  	event.preventDefault();
  	detalles[idx].dscto = parseFloat(obj.value);
  	recalcular(idx);
  }
  	
  function recalcular(idx){
  	//alert('holaaa:::' + obj.value);
  	//var asd = document.getElementById('cantidad');
  	//console.log(detalles[idx].cantidad);
  	//detalles[idx].cantidad = parseInt(obj.value);
  	console.log(detalles[idx].cantidad);
  	console.log((detalles[idx].cantidad * detalles[idx].precio));
  	//var objImp = 'importe'+idx;
  	//console.log(objImp);

  	
  	/*IMPORTANTE:porque cuando agregaba una segunda fila el importe se alteraba? El importe se modificaba por que olvidé restarle el descuento
Así que solo agregué esa resta a la operación*/



       var importe =detalles[idx].importe = detalles[idx].cantidad * detalles[idx].precio;
	  	importe = detalles[idx].importe = detalles[idx].importe - (detalles[idx].importe * detalles[idx].dscto/100);
	   
	   importeFinal = detalles[idx].moneda+" "+importe;
	    
         $('#importe'+idx).html(importeFinal);


	  	//$("#cantidad_"+idx).val(cantidad_venta);
	  	calcularTotales();

	  
  }


  function calcularTotales(){
  	
  	var subtotal = 0;

  	var total = 0;

    var subtotalFinal = 0;

  	var totalFinal = 0;

    var iva = 20;

    var igv = (iva/100);

	for(var i=0; i<detalles.length; i++){
  		if( detalles[i].estado == 1 ){
			subtotal = subtotal + (detalles[i].cantidad * detalles[i].precio) - (detalles[i].cantidad*detalles[i].precio*detalles[i].dscto/100);
		
            //concatenar para poner la moneda con el subtotal
            subtotalFinal = detalles[i].moneda+" "+subtotal;

            var su = subtotal*igv;
            var or=parseFloat(su);
            var total = Math.round(or+subtotal);

            //concatenar para poner la moneda con el total
            totalFinal = detalles[i].moneda+" "+total;
		}
	}

	//subtotal
	$('#subtotal').html(subtotalFinal);
	$('#subtotal_venta').html(subtotalFinal);

	//total
	$('#total').html(totalFinal);
	$('#total_venta').html(totalFinal);
  }


  //*******************************************************************
    /*IMPORTANTE:Event es el objeto del evento que los manejadores de eventos utilizan
parseInt es una función para convertir un valor string a entero
obj.value es el valor del campo de texto*/

  	function  eliminarProd(event, idx){
  		event.preventDefault();
  		console.log('ELIMINAR Eyter');
  		detalles[idx].estado = 0;


  	    $("#cantidad_"+idx).val(1);

  		listarDetallesVentas();
  	}



 //********************************************************************
 


/* {'arrayCompra':JSON.stringify(detalles)}:Esa parte encapsula el arreglo detalles y lo envía como un solo parametro

*/

 function registrarVenta(){
    
    /*IMPORTANTE: se declaran las variables ya que se usan en el data, sino da error*/
    var numero_venta = $("#numero_venta").val();
    var cedula = $("#cedula").val();
    var nombre = $("#nombre").val();
    var apellido = $("#apellido").val();
    var direccion = $("#direccion").val();
    var total = $("#total").html();
    var vendedor = $("#vendedor").html();
    var tipo_pago = $("#tipo_pago").val();
    var id_usuario = $("#id_usuario").val();
    var id_paciente = $("#id_paciente").val();


    //validamos, si los campos(paciente) estan vacios entonces no se envia el formulario

    if(cedula!="" && nombre!="" && apellido!="" && direccion!="" && tipo_pago!="" && detalles!=""){
    
    
     /*console.log(numero_compra);
     console.log(cedula);
     console.log(razon);
     console.log(direccion);
     console.log(datepicker);*/

     console.log('Hola Eyter');
    
    /*IMPORTANTE: el array detalles de la data viene de var detalles = []; esta vacio pero como ya se usó en la function agregarDetalle(id_producto,producto)
    se reusa, pero ya viene cargado con la informacion que se va a enviar con ajax*/
    $.ajax({
		url:"../ajax/producto.php?op=registrar_venta",
		method:"POST",
		data:{'arrayVenta':JSON.stringify(detalles), 'numero_venta':numero_venta,'cedula':cedula,'nombre':nombre, 'apellido':apellido,'direccion':direccion,'total':total,'vendedor':vendedor,'tipo_pago':tipo_pago,'id_usuario':id_usuario,'id_paciente':id_paciente},
		cache: false,
		dataType:"html",
		error:function(x,y,z){
			console.log(x);
			console.log(y);
			console.log(z);
		},
         
      
			
		success:function(data){


			//IMPORTANTE: esta se descomenta cuando imprimo el console.log
			/*if (typeof data == "string"){
			      data = $.parseJSON(data);
			}*/
			//console.log(data);
             
			//alert(data);

            //IMPORTANTE:limpia los campos despues de enviarse
            //cuando se imprime el alert(data) estas variables deben comentarse
			var cedula = $("#cedula").val("");
		    var nombre = $("#nombre").val("");
            var apellido = $("#apellido").val("");
		    var direccion = $("#direccion").val("");
		   
            
            detalles = [];
            $('#listProdVentas').html('');
            
              //muestra un mensaje de exito
          setTimeout ("bootbox.alert('Se ha registrado la venta con éxito');", 100); 
          
          //refresca la pagina, se llama a la funtion explode
          setTimeout ("explode();", 2000); 
         	
		}

	});	

	 //cierre del condicional de validacion de los campos del paciente

	 } else{

	 	 bootbox.alert("Debe agregar un producto");
	 	 return false;
	 } 	
	
  }

   

  //*****************************************************************************
   /*RESFRESCA LA PAGINA DESPUES DE REGISTRAR LA VENTA*/
       function explode(){

	    location.reload();
}


 //ELIMINAR PRODUCTOS

	 function eliminar(id_producto){

   
	    bootbox.confirm("¿Está Seguro de eliminar el producto?", function(result){
		if(result)
		{

				$.ajax({
					url:"../ajax/producto.php?op=eliminar_producto",
					method:"POST",
					data:{id_producto:id_producto},

					success:function(data)
					{
						//alert(data);
						$("#resultados_ajax").html(data);
						$("#producto_data").DataTable().ajax.reload();
					}
				});

		      }

		 });//bootbox


   }




 init();


