package com.educomser.controller;

import com.educomser.model.Encuesta;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

@ManagedBean
@RequestScoped
public class EncuestaController {

    private Encuesta encuesta;

    public EncuestaController() {
        encuesta = new Encuesta();
    }

    public Encuesta getEncuesta() {
        return encuesta;
    }

    public void setEncuesta(Encuesta encuesta) {
        this.encuesta = encuesta;
    }
}
