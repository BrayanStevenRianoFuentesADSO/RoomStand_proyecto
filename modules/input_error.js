export function error_input(boton, input){
    boton.addEventListener('click', function (event){
        if(input.value.length<1){
            input.style.border="solid 2px red"
        }
        
        else{
            input.style.border="solid 2px lightgreen"

        }
    })
}