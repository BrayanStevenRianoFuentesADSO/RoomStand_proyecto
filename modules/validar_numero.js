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