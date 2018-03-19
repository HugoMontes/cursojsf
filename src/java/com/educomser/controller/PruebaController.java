package com.educomser.controller;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

@ManagedBean
@RequestScoped
public class PruebaController {
    
    private String nombre;
    private String mensaje;

    public PruebaController() {
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }
    
    public void saludarAction(){
        this.mensaje="Hola mi nombre es: "+this.nombre;
    }
    
}
