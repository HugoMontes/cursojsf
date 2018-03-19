package com.educomser.model;

public class Encuesta {

    private String nombre;
    private int edad;
    private String estado = "soltero"; // Selected RadioButton "soltero"
    private String[] pasatiempos;
    private String pais;

    public Encuesta() {
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String[] getPasatiempos() {
        return pasatiempos;
    }

    public void setPasatiempos(String[] pasatiempos) {
        this.pasatiempos = pasatiempos;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public String observacion() {
        if (edad >= 18) {
            return "Mayor de Edad";
        }
        return "Menor de Edad";
    }
}
