
import { validar_texto } from "./modulo.js"
import { validar_numeros } from "./modulo.js"
import { validar_correo } from "./modulo.js"
import { error_input } from "./modulo.js"

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
error_input(boton_registro, email)
