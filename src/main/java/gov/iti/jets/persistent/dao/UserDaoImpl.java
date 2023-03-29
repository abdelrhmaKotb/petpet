package gov.iti.jets.persistent.dao;

import java.util.List;

import org.mindrot.jbcrypt.BCrypt;

import gov.iti.jets.persistent.dao.interfaces.UserDao;
import gov.iti.jets.persistent.dto.UserDTO;
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
    public User findUserById(int Id) {
       

        CriteriaQuery<User> q = _criteriaBuilder.createQuery(User.class);
        Root<User> user = q.from(User.class);
        q.select(user).where(_criteriaBuilder.equal(user.<Integer>get("Id"),Id));
       
        List<User> result = _entityManager.createQuery(q).getResultList();
        if (result.size()==0)return null;
        return result.get(0);
    }
    public void saveUpdateUser(UserDTO user,int userid){
        User oldUser = findUserById(userid);
        if (user.getPassword() != null) {
            String hashedpass = Hash(user.getPassword() );
            oldUser.setPassword(hashedpass);
        }
        oldUser.setName(user.getName());
        oldUser.setPhone(user.getPhone());
        oldUser.setBirthday(user.getBirthday());
        oldUser.setJob(user.getJob());
        oldUser.setCreditLimit(user.getCreditLimit());
        oldUser.setStreet(user.getStreet());
        oldUser.setCity(user.getCity());
        oldUser.setCountry(user.getCountry());
        _entityManager.getTransaction().begin();
        _entityManager.merge(oldUser);
        _entityManager.getTransaction().commit();
        System.out.println("good jop");
    }
    private static String Hash(String password) {
        String salt = BCrypt.gensalt(10); // generate a random salt
        String hashedPassword = BCrypt.hashpw(password, salt); // hash the password
        System.out.println("Hashed Password " + hashedPassword);
        return hashedPassword;
    }
}
