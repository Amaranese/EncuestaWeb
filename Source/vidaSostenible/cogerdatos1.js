 var myArr;

 function loadDoc() {
     var xhttp = new XMLHttpRequest();
     var url = "jsonString.php";
     xhttp.onreadystatechange = function () {
         if (this.readyState == 4 && this.status == 200) {
             myArr = JSON.parse(this.responseText);
             myFunction(myArr);
         }
     };
     xhttp.open("GET", url, true);
     xhttp.send();
     alert("hola1");

     function myFunction(arr) {
         var element = document.getElementById("formulario");
         for (i = 0; i < arr.length; i++) {
             var div = document.createElement("div");
             element.appendChild(div);
             //div.setAttribute("class", arr[i].depende);
             var parrafo = document.createElement("P");
             div.appendChild(parrafo);
             var node1 = document.createTextNode(arr[i].pregunta);
             parrafo.appendChild(node1);
             var arrRespuestas = arr[i].respuestas;
             if (arr[i].Tipo == "select") {
//                 var arrDependencias = arr[i].dependencia;
//                 alert(arrDependencias);
//                 if (arrDependencias.length > 0) {
//                     alert("oculto");
//                     div.classList.add("oculto");
//                     for (k = 0; k < arrDependencias.length; k++) {
//                         div.classList.add("dependencia" + arrDependencias[k]);
//                     }
//                 }
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
             }
             else if (arr[i].Tipo == "range") {
//                 var arrDependencias = arr[i].dependencia;
//                 alert(arrDependencias);
//                 if (arrDependencias.length > 0) {
//                     alert("oculto");
//                     div.classList.add("oculto");
//                     for (k = 0; k < arrDependencias.length; k++) {
//                         div.classList.add("dependencia" + arrDependencias[k]);
//                     }
//                 }
                 var labelInicial = document.createElement("label");
                 div.appendChild(labelInicial);
                 var textoRango1 = document.createTextNode(arrRespuestas[0].respuesta);
                 labelInicial.appendChild(textoRango1);
                 if (arrRespuestas[0] || arrRespuestas[arrRespuestas.length - 1]) {
                     var inputt = document.createElement("input");
                     div.appendChild(inputt);
                     inputt.setAttribute("id", "rango" + arr[i].idPregunta);
                     inputt.setAttribute("type", arr[i].Tipo);
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
                 inputtValue.setAttribute("id", "text" + arr[i].idPregunta);
                 inputtValue.setAttribute("class", "textInput");
                 inputtValue.setAttribute("value", "");
             }
             else if (arr[i].Tipo == "checkbox") {
//                 var arrDependencias = arr[i].dependencia;
//                 alert(arrDependencias.length);
//                 if (arrDependencias.length > 0) {
//                     alert("oculto");
//                     div.classList.add("oculto");
//                     for (k = 0; k < arrDependencias.length; k++) {
//                         div.classList.add("dependencia" + arrDependencias[k]);
//                     }
//                 }
                 for (j = 0; j < arrRespuestas.length; j++) {
                     var labelRespuesta = document.createElement("label");
                     labelRespuesta.setAttribute("id", arrRespuestas[j].idLabel);
                     var textoRespuesta = document.createTextNode(arrRespuestas[j].respuesta);
                     var inputt = document.createElement("input");
                     div.appendChild(inputt);
                     div.appendChild(labelRespuesta);
                     labelRespuesta.appendChild(textoRespuesta);
                     inputt.setAttribute("id", arrRespuestas[j].idRespuesta);
                     inputt.setAttribute("type", arr[i].Tipo);
                     inputt.setAttribute("name", arrRespuestas[j].idRespuesta);
                     inputt.setAttribute("value", arrRespuestas[j].name);
                     inputt.setAttribute("onclick", arrRespuestas[j].evento);
                     inputt.setAttribute("onclick", "mostrarOcultos(this);");
                 }
             }
             else if (arr[i].Tipo == "radio") {
                 alert("holaRadio");
                 if (arr[i].Tipo == "select") {
                     var arrDependencias = arr[i].dependencia;
                     alert(arrDependencias);
                     if (arrDependencias.length > 0) {
                         alert("oculto");
                         div.classList.add("oculto");
                         for (k = 0; k < arrDependencias.length; k++) {
                             div.classList.add("dependencia" + arrDependencias[k]);
                         }
                     }
                     for (j = 0; j < arrRespuestas.length; j++) {
                         var labelRespuesta = document.createElement("label");
                         labelRespuesta.setAttribute("id", arrRespuestas[j].idLabel);
                         var textoRespuesta = document.createTextNode(arrRespuestas[j].respuesta);
                         var inputt = document.createElement("input");
                         div.appendChild(inputt);
                         div.appendChild(labelRespuesta);
                         labelRespuesta.appendChild(textoRespuesta);
                         inputt.setAttribute("id", arrRespuestas[j].idRespuesta);
                         inputt.setAttribute("type", arr[i].Tipo);
                         inputt.setAttribute("name", arr[i].idPregunta);
                         inputt.setAttribute("value", arrRespuestas[j].name);
                         inputt.setAttribute("onclick", arrRespuestas[j].evento);
                         inputt.setAttribute("onclick", "mostrarOcultos(this);");
                     }
                 }
             }
         }
     }

     function mostrarOcultos(elem) {
         //alert(elem.getAttribute("value"));
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
                 var arrRespuesta = myArr[i].respuestas;
                 var resultado = arrRespuesta[val - 1].idRespuesta;
                 resultado = resultado.substring(2, 10);
                 return resultado;
             }
         }
     }
     console.log(loadDoc());