/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sv.udb.controlador;

import com.sv.udb.modelo.Grupos;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author ferna
 */
public class GruposCtrl {
    public Grupos get(Long empId){
        
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("PooPoolPU");
        EntityManager em = emf.createEntityManager();
        Grupos resp = null;
        
        try{
            resp = em.find(Grupos.class, empId);
            
        }catch(Exception e){
            e.printStackTrace();
        }                
        return resp;
    }
}
