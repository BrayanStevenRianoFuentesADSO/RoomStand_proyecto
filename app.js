let dom=document

let id=dom.querySelector("#id")
let nombre =dom.querySelector("#nombre")
let telefono=dom.querySelector("#telefono")
let pais =dom.querySelector("#pais")



telefono.addEventListener('input', function(event){
    let regexp=/^[0-9]+$/

    if(regexp.test(telefono.value)){
        console.log("se ha ingresado un numero")
    }

    else{
        telefono.value=telefono.value.replace(/[^0-9]$/, '');
        console.log("no se ha ingresado un numero")
    }
})

nombre.addEventListener('input', function(event){
    let regexp=/^[a-zA-Z]+$/

    if(regexp.test(nombre.value)){
        console.log("se ha ingresado un numero")
    }

    else{
        nombre.value=nombre.value.replace(/[^a-zA-Z]$/, '');
        console.log("no se ha ingresado un numero")
    }
})

pais.addEventListener('input', function(event){
    let regexp=/^[a-zA-Z]+$/

    if(regexp.test(pais.value)){
        console.log("se ha ingresado un numero")
    }

    else{
        pais.value=pais.value.replace(/[^a-zA-Z]$/, '');
        console.log("no se ha ingresado un numero")
    }
})