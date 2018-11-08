<?php
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
$lastId;

$queryPersonas = "INSERT INTO persona VALUES($id,$paises,$ccaa,$edad,$tipoCasa,$espacioCasas,$numPersonas,$ingresos,$conocimientos,$estudios)";

echo $queryPersonas;


$result = $conn->query($queryPersonas);
if(isset($result) && $result){
    echo "query correcta y hay resultado";
    $lastId = $conn->insert_id;
    echo "<br>";
    foreach ($_POST as $clave => $valor) {
        if(is_numeric($clave)){
            //echo "{$clave} => {$valor} ";
            $queryRespuestas = "INSERT INTO responde VALUES($id,$lastId,$valor)";
            $resultRes = $conn -> query($queryRespuestas);
            if(isset($resultRes) && $resultRes){
                echo "query correcta y hay resultado";
                echo "<br>";
                echo $lastId . "=>" . $clave;
                echo "<br>";
            }else{
                echo $conn->error;
            }
            
        }    
    }
}else{
    echo $conn->error;
}


header('Location: info.php?usuario='.$lastId);
exit;

?>