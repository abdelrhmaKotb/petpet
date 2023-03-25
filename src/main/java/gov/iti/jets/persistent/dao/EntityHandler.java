package gov.iti.jets.persistent.dao;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.persistence.criteria.CriteriaBuilder;

public class EntityHandler {
    private static EntityManagerFactory entityManagerFactory;
    private EntityHandler(){};

    public static EntityManager getEntityManager(){
         if(entityManagerFactory == null){
              entityManagerFactory = Persistence.createEntityManagerFactory("default");
         }
        return entityManagerFactory.createEntityManager();
    }
    public static CriteriaBuilder getCriteriaBuilder(){
        if(entityManagerFactory == null){
            entityManagerFactory = Persistence.createEntityManagerFactory("default");
        }
        return entityManagerFactory.getCriteriaBuilder();
    }
}
