var myArr;
console.log("INICIO CARGA");

function loadDoc() {
  var xhttp = new XMLHttpRequest();
  var url = "php/json.php";
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      myArr = JSON.parse(this.responseText);
      myFunction();
    }
  };
  xhttp.open("GET", url, true);
  xhttp.send();
}

function showGeneral() {

  var divMaterials = document.getElementById("id_materials");
  var getMaterials = document.getElementById("get_materials");

  getMaterials.setAttribute("class", "col-xs-12 col-sm-6 col-md-3 col-lg-12 encuesta");

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
    var boton = document.getElementById("boton");
    var div = document.createElement("div");
    var element;
    for (j = 0; j < myArr.length; j++) {

      // alert(myArr[i].Categoria);

      if (myArr[i].Categoria == "general" || myArr[i].Categoria == "General") {

        element = document.getElementById("get_general");

      } else if (myArr[i].Categoria == "materiales" || myArr[i].Categoria == "Materiales") {

        element = document.getElementById("get_materials");

      } else if (myArr[i].Categoria == "transporte" || myArr[i].Categoria == "Transporte") {

        element = document.getElementById("get_transport");

      } else if (myArr[i].Categoria == "energia" || myArr[i].Categoria == "Energia") {

        element = document.getElementById("get_energy");

      } else if (myArr[i].Categoria == "agua" || myArr[i].Categoria == "Agua") {

        element = document.getElementById("get_water");

      }
    }
    //element.appendChild(div);
    element.insertBefore(div, boton);
    // div.setAttribute("class", arr[i].depende);
    var parrafo = document.createElement("h4");
    div.appendChild(parrafo);
    var node1 = document.createTextNode(myArr[i].pregunta);
    parrafo.appendChild(node1);
    var arrRespuestas = myArr[i].respuestas;
    //div.classList.add("prueba");
    var arrDependencias = myArr[i].dependencia;
    if (arrDependencias.length > 0) {
      for (k = 0; k < arrDependencias.length; k++) {
        //alert(arrDependencias[k]);
        div.classList.add("dependencia" + arrDependencias[k]);
      }
      div.classList.add("oculto");
    }
    if (myArr[i].Tipo == "select") {
        var selectRespuesta = document.createElement("select");
        selectRespuesta.setAttribute("id", myArr[i].idPregunta);
        selectRespuesta.setAttribute("onchange", "mostrarOcultos(this);");
        selectRespuesta.setAttribute("name", myArr[i].idPregunta);
        div.appendChild(selectRespuesta);
        var optionRespuesta = document.createElement("option");
        selectRespuesta.appendChild(optionRespuesta);
        optionRespuesta.setAttribute("value", "");
        selectRespuesta.setAttribute("required", true);
        var textoRespuesta = document.createTextNode("seleccione uno");
        optionRespuesta.appendChild(textoRespuesta);
        for (j = 0; j < arrRespuestas.length; j++) {
            var optionRespuesta = document.createElement("option");
            selectRespuesta.appendChild(optionRespuesta);
            optionRespuesta.setAttribute("value", arrRespuestas[j].name);
            optionRespuesta.setAttribute("id", arrRespuestas[j].idRespuesta);
            var textoRespuesta = document.createTextNode(arrRespuestas[j].respuesta);
            optionRespuesta.appendChild(textoRespuesta);
        }
    } else if (myArr[i].Tipo == "range") {
      // alert("holaRango");
      //for (j = 0; j < arrRespuestas.length; j++) {
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
      // Mostrar valores
      var inputtValue = document.createElement("input");
      div.appendChild(inputtValue);
      inputtValue.setAttribute("type", "text");
      inputtValue.setAttribute("id", "text" + myArr[i].idPregunta);
      inputtValue.setAttribute("class", "textInput");
      inputtValue.setAttribute("value", "");
      //var br = document.createElement("br");
    } else if (myArr[i].Tipo == "checkbox") {
      // alert("holaCheck");
      for (j = 0; j < arrRespuestas.length; j++) {
        var labelRespuesta = document.createElement("label");
        labelRespuesta.setAttribute("for", arrRespuestas[j].idRespuesta);
        var textoRespuesta = document.createTextNode(arrRespuestas[j].respuesta);
        var inputt = document.createElement("input");
        div.appendChild(inputt);
        div.appendChild(labelRespuesta);
        labelRespuesta.appendChild(textoRespuesta);
        inputt.setAttribute("id", arrRespuestas[j].idRespuesta);
        inputt.setAttribute("type", myArr[i].Tipo);
        inputt.setAttribute("name", arrRespuestas[j].idRespuesta);
        inputt.setAttribute("value", arrRespuestas[j].name);
        inputt.setAttribute("onclick", "mostrarOcultos(this);");
      }
    } else if (myArr[i].Tipo == "radio") {
      // alert("hola");
      for (j = 0; j < arrRespuestas.length; j++) {
        var labelRespuesta = document.createElement("label");
        labelRespuesta.setAttribute("for", arrRespuestas[j].idRespuesta);
        var textoRespuesta = document.createTextNode(arrRespuestas[j].respuesta);
        var inputt = document.createElement("input");
        div.appendChild(inputt);
        div.appendChild(labelRespuesta);
        labelRespuesta.appendChild(textoRespuesta);
        inputt.setAttribute("id", arrRespuestas[j].idRespuesta);
        inputt.setAttribute("type", myArr[i].Tipo);
        inputt.setAttribute("name", myArr[i].idPregunta);
        inputt.setAttribute("value", arrRespuestas[j].name);
        inputt.setAttribute("onclick", "mostrarOcultos(this);");
      }
    }
  }
}

function mostrarOcultos(elem) {
  // alert(elem.getAttribute("value"));
  var valor = elem.getAttribute("value");
  // Oculto y quito los seleccionados de los hermanos
  var padre = elem.parentNode;
  // alert(padre.id);
  ocultarOtros(padre, valor);
  // Muestro los ocultos cambiando la clase de los dependientes
  var dependiente = "dependencia" + valor;
  // alert (dependiente);
  var arrDependeClase = document.getElementsByClassName(dependiente);
  for (a = 0; a < arrDependeClase.length; a++) {
    arrDependeClase[a].classList.add("visible");
    arrDependeClase[a].classList.remove("oculto");
  }
}

function ocultarOtros(elemento, valor) {
  var lista = elemento.getElementsByTagName("input");
  // alert(lista.length);
  for (i = 0; i < lista.length; i++) {
    var idActual = lista[i].value;
    if (valor != idActual) {
      deseleccionarOcultar(idActual);
    }
  }
}

function deseleccionarOcultar(identificador) {
  var dependiente = "dependencia" + identificador;
  // alert (dependiente);
  var arrDependeClase = document.getElementsByClassName(dependiente);
  for (a = 0; a < arrDependeClase.length; a++) {
    var clases = arrDependeClase[a].classList;
    //alert(clases);
    var borrar = true;
    if (clases.length > 2) { // Si tiene más de una clase es que tiene más de una dependencia
      for (j = 0; j < clases.length; j++) {
        //alert(clases[j]);
        if ((clases[j] != "visible") && (clases[j] != "oculto") && (clases[j] != "dependencia" + identificador)) {
          var idRespuestaComprobar = clases[j].substring(11, 15);
          var idComprobar = "respuesta" + idRespuestaComprobar;
          //alert(idComprobar);
          var comprobar = document.getElementById(idComprobar);
          //alert(comprobar.checked);
          if (comprobar.checked == true) { // Hay otra pregunta de la que es dependiente y tenemos que parar el borrado
            borrar = false;
          }
          //if
          //alert(clases[j]);
        }
      }
    }
    if (borrar) {
      // Quitamos las opciones si se hubieran seleccionado
      var listaOpciones = arrDependeClase[a].getElementsByTagName("input");
      for (z = 0; z < listaOpciones.length; z++) {
        // alert(listaOpciones[i].value);
        listaOpciones[z].checked = false;
      }
      // Ocultamos la capa de la pregunta
      arrDependeClase[a].classList.remove("visible");
      arrDependeClase[a].classList.add("oculto");
    }
  }
}
/*
function deseleccionarOcultar(identificador) {
	var dependiente = "dependiente" + identificador;
	// alert (dependiente);
	var arrDependeClase = document.getElementsByClassName(dependiente);

	for (a = 0; a < arrDependeClase.length; a++) {

		var clases = arrDependeClase[a].classList;
		//alert(clases);
		var borrar = true;

		if(clases.length > 2){	// Si tiene más de una clase es que tiene más de una dependencia
			for (j=0; j< clases.length; j++){
				//alert(clases[j]);
				if((clases[j] != "visible") && (clases[j] != "oculto") && (clases[j]!="dependiente"+identificador)){
					var idRespuestaComprobar = clases[j].substring(11, 15);
					var idComprobar = "respuesta" + idRespuestaComprobar;
					//alert(idComprobar);
					var comprobar = document.getElementById(idComprobar);
					//alert(comprobar.checked);
					if (comprobar.checked == true){	// Hay otra pregunta de la que es dependiente y tenemos que parar el borrado
						borrar = false;
					}
					//if
					//alert(clases[j]);
				}
			}
		}


		if(borrar){
			// Quitamos las opciones si se hubieran seleccionado
			var listaOpciones = arrDependeClase[a].getElementsByTagName("input");

			for (i = 0; i < listaOpciones.length; i++) {
				// alert(listaOpciones[i].value);
				listaOpciones[i].checked = false;
			}

			// Ocultamos la capa de la pregunta
			arrDependeClase[a].classList.remove("visible");
			arrDependeClase[a].classList.add("oculto");
		}
	}
}
*/
function updateTextInput(val, id) {
  //alert(id);
  var idPregunta = id.substring(5, 10);
  var respuesta = dameValor(idPregunta, val);
  var idInputText = "text" + idPregunta;
  var claseTextInput = document.getElementById(idInputText);
  claseTextInput.value = respuesta;
}

function dameValor(pregunta, val) {
  for (i = 0; i < myArr.length; i++) {
    if (myArr[i].idPregunta == pregunta) {
      var arrRespuesta = myArr[i].respuestas;
      var resultado = arrRespuesta[val - 1].idRespuesta;
      //alert(resultado);
      var idDepende = resultado.substring(9, 15);
      //resultado = resultado.substring(3, 10);
      return idDepende;
    }
  }
}
loadDoc();
console.log("CARGA JS COMPLETA");
