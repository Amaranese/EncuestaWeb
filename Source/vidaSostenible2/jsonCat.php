<?php
include 'conexionBBDD.php';

$preguntaAnterior = null;
$arrPreguntas = array ();
$arrRespustas = array ();

$sql = "SELECT pregunta.orden, pregunta.id as idPregunta, pregunta.pregunta, depende.id as idDepende, respuesta.respuesta , categoria.texto, tipo.tipo, depende.valorRespuesta, GROUP_CONCAT(dependencia.idDepende) as Dependencias
FROM depende
JOIN respuesta ON depende.idRespuesta = respuesta.id
JOIN pregunta ON depende.idPregunta = pregunta.id
JOIN pertenece ON pregunta.id=pertenece.idPregunta
JOIN categoria on pertenece.idCategoria=categoria.id
JOIN tipo ON pregunta.tipo=tipo.id
left JOIN dependencia ON dependencia.idPregunta = pregunta.id
GROUP BY pregunta.id, depende.id
ORDER BY pregunta.orden,depende.id";
$result = $conn->query($sql);

$i = 1;

if (isset($result) && $result->num_rows > 0) {

    while($row = $result->fetch_assoc()) {
        
        //var_dump($row);
        //die();

        $idPregunta = $row["idPregunta"];
        $respuesta = $row["respuesta"];
        $idDepende = $row["idDepende"];
        $valor = $row["valorRespuesta"];
        $idRespuesta = "respuesta" . $idDepende;
        
        
        
        if($preguntaAnterior==$idPregunta){
            $arrRespustas[]= array ('idRespuesta'=> $idRespuesta, 'idLabel'=> $idRespuesta, 'respuesta'=> $respuesta, 'value' => $valor, 'name' =>  $idDepende);
        }else{
            // Cambiamos de pregunta
            if($i !=1){ // En la 1 no lo hace

        		    $arrUnaPregunta = array ('idPregunta'=> $preguntaAnterior, 'pregunta'=> $pregunta, 'Categoria'=>$categoria, 'dependencia' =>  $arrDependencias, 'Tipo'=>$tipo, 'respuestas' => $arrRespustas);

            	  $arrPreguntas[] = $arrUnaPregunta;

            }
            $pregunta = $row["pregunta"];
            $categoria = $row["texto"];
            $tipo = $row["tipo"];
            $arrRespustas = array ();
            $preguntaAnterior=$idPregunta;
            $depencencia = $row["Dependencias"];
            $arrDependencias = array();
		
		  if(isset($depencencia)){
		      $arrDependencias = explode(",", $depencencia);
//              echo "<br/> $idPregunta";
//              var_dump($arrDependencias);
//              echo "<br/>";
          }
          
            
            $arrRespustas[]= array ('idRespuesta'=> $idRespuesta, 'idLabel'=> $idRespuesta, 'respuesta'=> $respuesta, 'value' => $valor, 'name' =>  $idDepende);
        }

        $i++;
    }

    // Metemos la �ltima fuera del bucle

    $arrUnaPregunta = array ('idPregunta'=> $idPregunta, 'pregunta'=> $pregunta, 'Categoria'=>$categoria, 'dependencia' =>  $arrDependencias, 'Tipo'=>$tipo, 'respuestas' => $arrRespustas);

    $arrPreguntas[] = $arrUnaPregunta;


} else {
    echo "0 results<br/>";
    echo $conn->error;
}

//$jsonString = json_encode($arrPreguntas,JSON_PRETTY_PRINT);
//if(isset($_GET["bonito"]) && ($_GET["bonito"]=="true")){
//    echo "<pre>";
//    echo $jsonString;
//    echo "</pre>";    
//}else{
//    echo $jsonString;
//}

$conn->close(); // cierre de conexi�n con la BBDD
?>