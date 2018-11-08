<?php

include 'jsonGenerales.php';
include 'jsonCat.php';

$result = array_merge($formularioGeneral, $arrPreguntas);
// Creamos el JSON
//$json_string = json_encode ( $result, JSON_PRETTY_PRINT );
//$json_string = json_encode ( $formulario2, JSON_PRETTY_PRINT );
$json_string = json_encode ( $result, JSON_PRETTY_PRINT );
//echo "ANTES DE ESCRIBIR EL JSON";
if(isset($_GET['bonito'])){
	echo "<pre>";
	echo $json_string;
	echo "</pre>";
}else{
	
	echo $json_string;
}
//echo "DESPUES DE ESCRIBIR EL JSON";
?>
