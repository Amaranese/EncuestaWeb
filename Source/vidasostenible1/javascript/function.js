var myArr;
console.log("INICIO CARGA");

function loadDoc() {
  var xhttp = new XMLHttpRequest();
  var url = "json.php";

  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      myArr = JSON.parse(this.responseText);
      myFunction();
    }
  };
  xhttp.open("GET", url, true);
  xhttp.send();

}

function showMaterials() {

  var divMaterials = document.getElementById("id_materials");
  var getMaterials = document.getElementById("get_materials");

  getMaterials.setAttribute("class", "col-xs-12 col-sm-6 col-md-3 col-lg-12 encuesta");
  divMaterials.setAttribute("onclick", "hideMaterials()");

}

function hideMaterials() {

  var divMaterials = document.getElementById("id_materials");
  var getMaterials = document.getElementById("get_materials");

  getMaterials.setAttribute("class", "col-xs-12 col-sm-6 col-md-3 col-lg-12 hidden");
  divMaterials.setAttribute("onclick", "showMaterials()");

}

function showTransport() {

  var divMaterials = document.getElementById("id_transport");
  var getMaterials = document.getElementById("get_transport");

  getMaterials.setAttribute("class", "col-xs-12 col-sm-6 col-md-3 col-lg-12 encuesta");
  divMaterials.setAttribute("onclick", "hideTransport()");

}

function hideTransport() {

  var divMaterials = document.getElementById("id_transport");
  var getMaterials = document.getElementById("get_transport");

  getMaterials.setAttribute("class", "col-xs-12 col-sm-6 col-md-3 col-lg-12 hidden");
  divMaterials.setAttribute("onclick", "showTransport()");

}

function showEnergy() {

  var divMaterials = document.getElementById("id_energy");
  var getMaterials = document.getElementById("get_energy");

  getMaterials.setAttribute("class", "col-xs-12 col-sm-6 col-md-3 col-lg-12 encuesta");
  divMaterials.setAttribute("onclick", "hideEnergy()");

}

function hideEnergy() {

  var divMaterials = document.getElementById("id_energy");
  var getMaterials = document.getElementById("get_energy");

  getMaterials.setAttribute("class", "col-xs-12 col-sm-6 col-md-3 col-lg-12 hidden");
  divMaterials.setAttribute("onclick", "showEnergy()");

}

function showWater() {

  var divMaterials = document.getElementById("id_water");
  var getMaterials = document.getElementById("get_water");

  getMaterials.setAttribute("class", "col-xs-12 col-sm-6 col-md-3 col-lg-12 encuesta");
  divMaterials.setAttribute("onclick", "hideWater()");

}

function hideWater() {

  var divMaterials = document.getElementById("id_water");
  var getMaterials = document.getElementById("get_water");

  getMaterials.setAttribute("class", "col-xs-12 col-sm-6 col-md-3 col-lg-12 hidden");
  divMaterials.setAttribute("onclick", "showWater()");

}

function myFunction() {
  for (i = 0; i < myArr.length; i++) {
    var arrRespuestas = myArr[i].respuestas;
    var div = document.createElement("div");
    var element;
    for (j = 0; j < myArr.length; j++) {

      if (myArr[i].Categoria == "materiales" || myArr[i].Categoria == "Materiales") {

        element = document.getElementById("get_materials");

      } else if (myArr[i].Categoria == "transporte" || myArr[i].Categoria == "Transporte") {

        element = document.getElementById("get_transport");

      } else if (myArr[i].Categoria == "energia" || myArr[i].Categoria == "Energia") {

        element = document.getElementById("get_energy");

      } else if (myArr[i].Categoria == "agua" || myArr[i].Categoria == "Agua") {

        element = document.getElementById("get_water");

      }
    }
    element.appendChild(div);
    div.setAttribute("class", myArr[i].depende);
    var parrafo = document.createElement("h4");
    div.appendChild(parrafo);
    var node1 = document.createTextNode(myArr[i].pregunta);
    parrafo.appendChild(node1);

    if (myArr[i].Tipo == "desplegable") {
      var selectRespuesta = document.createElement("select");
      selectRespuesta.setAttribute("id", arrRespuestas[j].idLabel);
      selectRespuesta.setAttribute("onclick", arrRespuestas[j].evento);
      for (j = 0; j < arrRespuestas.length; j++) {
        var optionRespuesta = document.createElement("option");
        div.appendChild(selectRespuesta);
        selectRespuesta.appendChild(optionRespuesta);
        optionRespuesta.setAttribute("value", arrRespuestas[j].name);
        optionRespuesta.setAttribute("id", arrRespuestas[j].idRespuesta);
        var textoRespuesta = document.createTextNode(arrRespuestas[j].respuesta);
        optionRespuesta.appendChild(textoRespuesta);
      }
    } else if (myArr[i].Tipo == "range") {
      var labelInicial = document.createElement("label");
      div.appendChild(labelInicial);
      var textoRango1 = document.createTextNode(arrRespuestas[0].respuesta);
      labelInicial.appendChild(textoRango1);
      if (arrRespuestas[0] || arrRespuestas[arrRespuestas.length - 1]) {
        var inputt = document.createElement("input");
        div.appendChild(inputt);
        inputt.setAttribute("id", "rango" + myArr[i].idPregunta);
        inputt.setAttribute("type", myArr[i].Tipo);
        inputt.setAttribute("min", arrRespuestas[0].respuesta);
        inputt.setAttribute("max", arrRespuestas[arrRespuestas.length - 1].respuesta);
        inputt.setAttribute("step", "1");
        inputt.setAttribute("onchange", "updateTextInput(this.value,this.id);");
      }
      var labelFinal = document.createElement("label");
      div.appendChild(labelFinal);
      var textoRangoult = document.createTextNode(arrRespuestas[arrRespuestas.length - 1].respuesta);
      labelFinal.appendChild(textoRangoult);
      //Mostrar valores
      var inputtValue = document.createElement("input");
      div.appendChild(inputtValue);
      inputtValue.setAttribute("type", "hidden");
      inputtValue.setAttribute("id", "text" + myArr[i].idPregunta);
      inputtValue.setAttribute("class", "textInput");
      inputtValue.setAttribute("value", "");
    } else if (myArr[i].Tipo == "checkbox") {
      for (j = 0; j < arrRespuestas.length; j++) {
        var labelRespuesta = document.createElement("label");
        labelRespuesta.setAttribute("id", arrRespuestas[j].idLabel);
        var textoRespuesta = document.createTextNode(arrRespuestas[j].respuesta);
        div.appendChild(labelRespuesta);
        labelRespuesta.appendChild(textoRespuesta);
        var inputt = document.createElement("input");
        div.appendChild(inputt);
        inputt.setAttribute("id", arrRespuestas[j].idRespuesta);
        inputt.setAttribute("type", myArr[i].Tipo);
        inputt.setAttribute("name", arrRespuestas[j].idRespuesta);
        inputt.setAttribute("value", arrRespuestas[j].name);
        inputt.setAttribute("onclick", arrRespuestas[j].evento);
      }
    } else if (myArr[i].Tipo == "radio") {
      for (j = 0; j < arrRespuestas.length; j++) {
        var labelRespuesta = document.createElement("label");
        labelRespuesta.setAttribute("id", arrRespuestas[j].idLabel);
        var textoRespuesta = document.createTextNode(arrRespuestas[j].respuesta);
        div.appendChild(labelRespuesta);
        labelRespuesta.appendChild(textoRespuesta);
        var inputt = document.createElement("input");
        div.appendChild(inputt);
        inputt.setAttribute("id", arrRespuestas[j].idRespuesta);
        inputt.setAttribute("type", myArr[i].Tipo);
        inputt.setAttribute("name", arrRespuestas[j].idRespuesta);
        inputt.setAttribute("value", arrRespuestas[j].name);
        inputt.setAttribute("onclick", arrRespuestas[j].evento);
      }
    } else {}
  }
}

function ocultarDependencias() {
  var arrDependeClase = document.getElementsByClassName("depende");
  for (a = 0; a < arrDependeClase.length; a++) {
    arrDependeClase[a].style.display = "none";
  }
}

function mostrarDependencias() {
  var arrDependeClase = document.getElementsByClassName("depende");
  for (z = 0; z < arrDependeClase.length; z++) {
    arrDependeClase[z].style.display = "block";
  }
}

function updateTextInput(val, id) {
  var idPregunta = id.substring(5, 10);
  var respuesta = dameValor(idPregunta, val);
  var idInputText = "text" + idPregunta;
  var claseTextInput = document.getElementById(idInputText);
  claseTextInput.value = respuesta;
}

function dameValor(pregunta, val) {
  for (i = 0; i < myArr.length; i++) {
    if (myArr[i].idPregunta == pregunta) {
      var arrRespuesta = mymyArr[i].respuestas;
      var resultado = arrRespuesta[val - 1].value;
      return resultado;
    }
  }
}
