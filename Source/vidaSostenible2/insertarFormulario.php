<?php
var_dump ($_REQUEST);


include 'conexionBBDD.php';

var_dump($_REQUEST);

$paises = $_POST['paises'];
$ccaa = $_POST['ccaa'];
$edad = $_POST['edad'];
$tipoCasa = $_POST['tipoCasa'];
$espacioCasas = $_POST['espacioCasas'];
$numPersonas = $_POST['numPersonas'];
$ingresos = $_POST['ingresos'];
$conocimientos = $_POST['conocimientos'];
$estudios = $_POST['estudios'];
$id = 0;

$queryPersonas = "INSERT INTO persona VALUES($id,$paises,$ccaa,$edad,$tipoCasa,$espacioCasas,$numPersonas,$ingresos,$conocimientos,$estudios)";

echo $queryPersonas;


$result = $conn->query($queryPersonas);
if(isset($result) && $result){
echo "query correcta y hay resultado";
     $lastId = $mysqli->insert_id;
    
    foreach ($array as $clave => $valor) {
        // $array[3] se actualizará con cada valor de $array...
        echo "{$clave} => {$valor} ";
        print_r($array);
    }
    
    
    
}else{
echo $conn->error;
}

//$queryRespuestas = (INSERT INTO responde VALUES(id,idPersona,idRespuesta));
//$conn -> query($queryRespuestas)


?>