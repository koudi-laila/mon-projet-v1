/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ma.iga.project.service;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import ma.iga.project.bean.TypeAbsence;

/**
 *
 * @author asus
 */
@Stateless
public class TypeAbsenceFacade extends AbstractFacade<TypeAbsence> {

    @PersistenceContext(unitName = "ma.iga_project_war_1.0-SNAPSHOTPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public TypeAbsenceFacade() {
        super(TypeAbsence.class);
    }
    
}
