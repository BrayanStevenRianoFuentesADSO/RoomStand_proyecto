export function validar_texto(input_texto){
    input_texto.addEventListener('input', function(event){

        let regexp=/^[a-zA-Z\s]+$/

        if(regexp.test(input_texto.value)){
            console.log("se ha ingresado una letra")
        }
        else{
            input_texto.value=input_texto.value.replace(/[^a-zA-Z\s]$/, '');
            console.log("se ha ingresado algo que no es una letra")
        }
    })
}