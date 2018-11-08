<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />

	<!-- NO CACHE -->
	<meta http-equiv="cache-control" content="max-age=0" />
	<meta http-equiv="cache-control" content="no-cache" />
	<meta http-equiv="expires" content="0" />
	<meta http-equiv="expires" content="Tue, 01 Jan 1980 1:00:00 GMT" />
	<meta http-equiv="pragma" content="no-cache" />
    <title></title>
    <script src="js/script.js"></script>
    <link href="css/style.css" rel="stylesheet" type="text/css" />

</head>
<?php
include 'conexionBBDD.php';

$id = $_GET['usuario'];

$sql = "SELECT responde.idPersona, pregunta.pregunta, respuesta.respuesta, depende.valorRespuesta, textoInformativo.texto
FROM responde
JOIN depende ON responde.idRespuesta=depende.id
JOIN pregunta ON pregunta.id=depende.idPregunta
JOIN respuesta ON respuesta.id=depende.idRespuesta
LEFT JOIN textoInformativo ON depende.idTexto=textoInformativo.id
WHERE responde.idPersona=$id";

$resultadoFinal=0;
$result = $conn->query($sql);
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo "<div class='capaRespuesta'>";
        echo " Pregunta: ".$row["pregunta"]."<br>";
        echo " Respuesta: ".$row["respuesta"]."<br>";
        echo " Valor: ".$row["valorRespuesta"]."<br>";
        echo " Texto: ".$row["texto"]."<br>";
        $resultadoFinal = $row["valorRespuesta"] + $resultadoFinal;
        echo "</div>";
    }
} else {
    echo "0 results";
}
    echo "<h1>Puntos Totales: ".$resultadoFinal."</h1>";
if($resultadoFinal<25){
    echo "huella ecológica sostenible (un planeta)";
}else if($resultadoFinal<=25 && $resultadoFinal>=50){
    echo "insostenible intermedia (2-3 planetas)";
}else if($resultadoFinal<=50){
    echo "completamente insostenible (Cinco o más planetas)";
}


$conn->close();
?>
<body>

</body>
</html>
