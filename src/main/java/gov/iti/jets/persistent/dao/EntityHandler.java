package gov.iti.jets.persistent.dao;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class EntityHandler {
    private static EntityManager entityManager;

    private EntityHandler(){};

    public static EntityManager getEntityManager(){
        if(entityManager == null){
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("default");
            entityManager = emf.createEntityManager();
            return entityManager;
        }

        return entityManager;
        // EntityManagerFactory emf = Persistence.createEntityManagerFactory("default");
        // return emf.createEntityManager();
    }
}
