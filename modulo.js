

export function validar_texto(input_texto){
    input_texto.addEventListener('input', function(event){

        let regexp=/^[a-zA-Z]+$/

        if(regexp.test(input_texto.value)){
            console.log("se ha ingresado una letra")
        }
        else{
            input_texto.value=input_texto.value.replace(/[^a-zA-Z]$/, '');
            console.log("se ha ingresado algo que no es una letra")
        }
    })
}


export function validar_numeros(input_numero){
    input_numero.addEventListener('input', function(event){
        
        let regexp=/^[0-9]+$/

        if(regexp.test(input_numero.value)){
            console.log("se ha ingresado un numero")
        }

        else{
            input_numero.value=input_numero.value.replace(/[^0-9]$/,'');
            console.log("se ha ingresado algo que no es un numero")

        }
    })
}


export function validar_correo(input_correo){
    
    input_correo.addEventListener('input', function(event){
        let regexp=/^[a-zA-Z0-9]+[@][a-z]+[.][a-z]/

        if(regexp.test(input_correo.value)){
            console.log("CORREO VALIDO")
            
        }
        else{
            console.log("NO VALIDADO")
        }
    })
}


export function error_input(boton, input){
    boton.addEventListener('click', function (event){
        if(input.value.length<1){
            input.style.border="solid 2px red"
        }
        
        else{
            input.style.border="solid 2px black"
        }
    })
}