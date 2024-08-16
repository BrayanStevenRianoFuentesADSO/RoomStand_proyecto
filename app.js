


import { validar_texto } from "./modules/validar_texto.js"
import { validar_correo } from "./modules/vaidar_correo.js"
import { validar_numeros } from "./modules/validar_numero.js"
import { error_input } from "./modules/input_error.js"



let dom=document



//TODOS LOS ELEMENTOS QUE SE ENCUENTRAN EN EL HTML 
let id=dom.querySelector("#id")
let input = dom.querySelectorAll("input")
let nombre =dom.querySelector("#nombre")
let telefono=dom.querySelector("#telefono")
let pais =dom.querySelector("#pais")
let email =dom.querySelector("#email")
let password=dom.querySelector("#password")
let boton_registro =dom.querySelector("#register_button")

//RESTRINGE EL ACCESO DE DATOS NO PERMITIDOS
validar_numeros(id)
validar_texto(nombre)
validar_numeros(telefono)
validar_texto(pais)
validar_correo(email)

//CAMBIA EL COLOR DEL INPUT QUE SE ECUENTRA VACIO DESPUES DE OPRIMIR EL BOTON
error_input(boton_registro, id)
error_input(boton_registro, nombre)
error_input(boton_registro, telefono)
error_input(boton_registro, pais)

error_input(boton_registro, password)


const user_data={
    id:id.value,
        nombre: nombre.value,
        telefono: telefono.value,
        pais: pais.value,
        email: email.value,
        password: password.value
}


boton_registro.addEventListener('click', function (event){

    let valido_enviar=true

    inputs.array.forEach(element => {
        if(element==""){
            valido_enviar=false
        }
        else{
            fetch('http://localhost:3000/users',{
                method: 'POST',
                body:JSON.stringify({
                user_data
                }),
                headers:{
                    'content-type':'application/json',
                }
            }) 
        }
    });
})


