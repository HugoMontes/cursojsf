/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.educomser.validator;

import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.validator.FacesValidator;
import javax.faces.validator.Validator;
import javax.faces.validator.ValidatorException;

/**
 *
 * @author MONTES
 */
@FacesValidator("sueldoValidator")
public class SueldoValidator implements Validator {

    @Override
    public void validate(FacesContext context, UIComponent component, Object value) throws ValidatorException {
        float valor = (float) value;
        if (valor < 900 || valor > 4000) {
            FacesMessage message = new FacesMessage("El sueldo debe estar entre 900 y 4000");
            throw new ValidatorException(message);
        }
    }
}
