/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ejemplos.ejemplojsf.facade;

import com.ejemplos.ejemplojsf.entity.Persona;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceUnit;
import javax.transaction.Transactional;

/**
 *
 * @author fabianjavm
 */
@Stateless
public class PersonaFacade extends AbstractFacade<Persona> {

    @PersistenceUnit(unitName = "EjemploJSF_PU")
    private EntityManagerFactory emf;
    private EntityManager em = null;

    @Override
    protected EntityManager getEntityManager() {
        if(em == null){
            em = emf.createEntityManager();
        }
        return em;
    }

    public PersonaFacade() {
        super(Persona.class);
    }
    
}
