/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ejemplos.ejemplojsf.facade;

import com.ejemplos.ejemplojsf.entity.Telefono;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;

/**
 *
 * @author fabianjavm
 */
@Stateless
public class TelefonoFacade extends AbstractFacade<Telefono> {
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

    public TelefonoFacade() {
        super(Telefono.class);
    }
    
}
