package gov.iti.jets.persistent.dao;

import java.util.List;

import gov.iti.jets.persistent.dao.interfaces.UserDao;
import gov.iti.jets.persistent.entity.User;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.persistence.Query;
import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.CriteriaQuery;
import jakarta.persistence.criteria.Root;

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

    @Override
    public User findUserByEmail(String Email) {
       
        CriteriaBuilder cb = ef.getCriteriaBuilder();
        CriteriaQuery<User> q = cb.createQuery(User.class);
        Root<User> user = q.from(User.class);
        q.select(user).where(cb.equal(user.<String>get("email"),Email));
       
        List<User> result = em.createQuery(q).getResultList();
        if (result.size()==0)return null;
        return result.get(0);
    }

}
