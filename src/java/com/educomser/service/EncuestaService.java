/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.educomser.service;

import com.educomser.model.Encuesta;
import java.util.ArrayList;
import java.util.List;
import javax.faces.bean.ApplicationScoped;
import javax.faces.bean.ManagedBean;

/**
 *
 * @author hmontes
 */
@ManagedBean
@ApplicationScoped
public class EncuestaService {

    private List<Encuesta> encuestas = new ArrayList<Encuesta>();

    public EncuestaService() {
        Encuesta e1 = new Encuesta();
        e1.setNombre("Juan");
        e1.setEdad(45);
        e1.setEstado("casado");
        String pasatiempos[] = {"Leer", "Cine", "Teatro"};
        e1.setPasatiempos(pasatiempos);
        e1.setPais("Bolivia");
        Encuesta e2 = new Encuesta();
        e2.setNombre("Maria");
        e2.setEdad(21);
        e2.setEstado("solero");
        e2.setPasatiempos(pasatiempos);
        e2.setPais("Peru");

        encuestas.add(e1);
        encuestas.add(e2);
    }
    
    public List<Encuesta> getAllEncuestas() {
        return encuestas;
    }
}
