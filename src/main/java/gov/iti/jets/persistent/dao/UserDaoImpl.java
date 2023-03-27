package gov.iti.jets.persistent.dao;

import java.util.List;

import gov.iti.jets.persistent.dao.interfaces.UserDao;
import gov.iti.jets.persistent.entity.Order;
import gov.iti.jets.persistent.entity.User;
import jakarta.persistence.Query;
import jakarta.persistence.criteria.CriteriaQuery;
import jakarta.persistence.criteria.Root;

public class UserDaoImpl extends RepositoryImpl<User,Integer>  implements UserDao {

    public UserDaoImpl(){
        super(User.class);
    }
    @Override
    public User create(User user) {

        _entityManager.getTransaction().begin();
        if(user.getId() != null) {
            _entityManager.persist(user);
            System.out.println("User added");
            _entityManager.getTransaction().commit();
            return user;
        }
        return null;
    }

    @Override
    public User find() {
        throw new UnsupportedOperationException("Unimplemented method 'find'");
    }

    @Override
    public User findUserByEmail(String Email) {
       

        CriteriaQuery<User> q = _criteriaBuilder.createQuery(User.class);
        Root<User> user = q.from(User.class);
        q.select(user).where(_criteriaBuilder.equal(user.<String>get("email"),Email));
       
        List<User> result = _entityManager.createQuery(q).getResultList();
        if (result.size()==0)return null;
        return result.get(0);
    }

    @Override
    public List<User> findUserByPageNumber(Integer pageNumber) {

        Integer firstResult = 5*pageNumber;

        Query query = _entityManager.createQuery("From User ORDER BY id ASC");
        query.setFirstResult(firstResult);
        query.setMaxResults(5);
        List<User> userList = query.getResultList();


        return userList;
    }

    @Override
    public Long totalUsers() {

        String countQ = "Select COUNT(u) from User u ";
        Query countQuery = _entityManager.createQuery(countQ);
        long countResults = (long) countQuery.getSingleResult();
        System.out.println("countOfOrders"+countQuery.getSingleResult());
        return countResults;

    }

}
