package com.educomser.controller;

import com.educomser.model.Encuesta;
import com.educomser.service.EncuestaService;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.RequestScoped;

@ManagedBean
@RequestScoped
public class EncuestaController {
    
    private Encuesta encuesta;

    // Listado de personas
    private List<Encuesta> encuestas;

    // Inyeccion de Dependencia
    @ManagedProperty("#{encuestaService}")
    private EncuestaService encuestaService;
    
    public EncuestaController() {
        encuesta = new Encuesta();
    }
    
    @PostConstruct
    public void init() {
        encuestas = encuestaService.getAllEncuestas();
    }
    
    public Encuesta getEncuesta() {
        return encuesta;
    }
    
    public void setEncuesta(Encuesta encuesta) {
        this.encuesta = encuesta;
    }

    /**
     * @return the encuestas
     */
    public List<Encuesta> getEncuestas() {
        return encuestas;
    }

    /**
     * @param encuestas the encuestas to set
     */
    public void setEncuestas(List<Encuesta> encuestas) {
        this.encuestas = encuestas;
    }

    /**
     * @param encuestaService the encuestaService to set
     */
    public void setEncuestaService(EncuestaService encuestaService) {
        this.encuestaService = encuestaService;
    }
    // GENERAR METODOS GETTER Y SETTER PARA encuestas
    // GENERAR UNICAMENTE METODO SETTER PARA encuestaService

    // METODO PARA ADICIONAR UNA ENCUESTA
    public void adicionarEncuestaAction() {
        encuestas.add(encuesta);
        encuesta = new Encuesta(); // Limpiar formulario
    }

    // METODO PARA ELIMINAR UNA ENCUESTA
    public void eliminarEncuestaAction(Encuesta encuesta) {
        encuestas.remove(encuesta);
    }
}
