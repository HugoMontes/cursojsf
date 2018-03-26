/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.educomser.controller;

import com.educomser.model.Empleado;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.validator.ValidatorException;

/**
 *
 * @author MONTES
 */
@ManagedBean
@RequestScoped
public class EmpleadoController {

    private Empleado empleado;

    public EmpleadoController() {
        empleado = new Empleado();
    }

    public Empleado getEmpleado() {
        return empleado;
    }

    public void setEmpleado(Empleado empleado) {
        this.empleado = empleado;
    }

    // context: Podemos acceder a todas las variables del contexto
    // component: Componente que ejecuta el metodo
    // value: Valor a validar del componente
    public void compruebaEmail(FacesContext context,
            UIComponent component, Object value) throws ValidatorException {
        String valor = (String) value;
        if (!valor.contains("@") || !valor.contains(".")) {
            FacesMessage message = new FacesMessage("Email no valido");
            throw new ValidatorException(message);
        }
    }
}
