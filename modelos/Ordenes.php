<?php
require_once("../config/conexion.php");

class Ordenes extends Conectar
{

public function get_detalle_ordenes(){
	$conectar = parent::conexion();
	parent::set_names();

	$sql="select*from ordenes order by id_orden DESC";
	$sql=$conectar->prepare($sql);
	$sql->execute();

	return $resultado=$sql->fetchAll(PDO::FETCH_ASSOC);
}
    
public function recibir_orden($id_orden){
  $conectar=parent::conexion();
  parent::set_names();
  $sql="update ordenes set estado=4 where id_orden=?";
  $sql=$conectar->prepare($sql);
  $sql->bindValue(1,$id_orden);
  $sql->execute();
}    
 
public function rechazar_orden($id_orden){
  $conectar=parent::conexion();
  parent::set_names();
  $sql="update ordenes set estado=3 where id_orden=?";
  $sql=$conectar->prepare($sql);
  $sql->bindValue(1,$id_orden);
  $sql->execute();
}    
 

}
