export function validar_correo(input_correo){
    
    input_correo.addEventListener('input', function(event){
        let regexp=/^[a-zA-Z0-9]+[@][a-z]+[.][a-z]/

        if(regexp.test(input_correo.value)){
            
            input.style.border="solid 2px lightgreen"
            
        }
        else{
            console.log("NO VALIDADO")
            input.style.border="solid 2px red"
        }
    })
}