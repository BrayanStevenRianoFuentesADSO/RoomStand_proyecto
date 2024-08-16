

export function validar_correo(boton

) {

    boton.addEventListener('input', function(event) {
      let regexp = /^[a-zA-Z0-9]+[@][a-z]+[.][a-z]$/; // Expresión regular para validar email
  

      if (regexp.test(input_correo.value)) {
        console.log("Correo válido");
        input_correo.style.border = "solid 2px green"; // Borde verde para correo válido

      } 
      
      
      else {
        console.log("Correo no válido");
        input_correo.style.border = "solid 2px red"; // Borde rojo para correo inválido
      }
      

      
    });
  }