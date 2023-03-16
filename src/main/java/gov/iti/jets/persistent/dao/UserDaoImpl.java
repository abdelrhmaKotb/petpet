package gov.iti.jets.persistent.dao;

import gov.iti.jets.persistent.dao.interfaces.UserDao;
import gov.iti.jets.persistent.entity.User;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class UserDaoImpl implements UserDao {
    EntityManagerFactory ef = Persistence.createEntityManagerFactory("default");
    EntityManager em = ef.createEntityManager();
    

    @Override
    public User create(User user) {

        em.getTransaction().begin();
        if(user.getId() != null) {
            em.persist(user);
            System.out.println("User added");
            em.getTransaction().commit();
            return user;
        }
        return null;
    }


    @Override
    public User find() {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'find'");
    }


}
