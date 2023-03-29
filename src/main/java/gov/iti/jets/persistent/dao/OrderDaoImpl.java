package gov.iti.jets.persistent.dao;

import gov.iti.jets.persistent.dao.interfaces.OrderDao;
import gov.iti.jets.persistent.entity.Order;
import gov.iti.jets.persistent.entity.Product;
import gov.iti.jets.persistent.entity.User;
import jakarta.persistence.Query;

import java.util.List;

public class OrderDaoImpl extends  RepositoryImpl<Order,Integer> implements OrderDao {
    public OrderDaoImpl() {
        super(Order.class);
    }

    @Override
    public List<Order> findUserOrder(Integer userId, Integer pageNumber) {

        Integer firstResult = 5*pageNumber;
        RepositoryImpl<User,Integer> User  = new RepositoryImpl<>(User.class);

        User user = User.find(userId);
        Query query = _entityManager.createQuery("From Order o where o.user = :id ORDER BY o.createdAt DESC")
                                    .setParameter("id",user);
        query.setFirstResult(firstResult);
        query.setMaxResults(5);
        List<Order> orderList = query.getResultList();


        return orderList;
    }

    @Override
    public long totalOrders(Integer UserId) {
        RepositoryImpl<User,Integer> User  = new RepositoryImpl<>(User.class);
        User user = User.find(UserId);
        String countQ = "Select COUNT(o) from Order o where o.user = :u";
        Query countQuery = _entityManager.createQuery(countQ).setParameter("u",user);
        long countResults = (long) countQuery.getSingleResult();
        return countResults;
    }

    @Override
    public long allOrders() {
        String countQ = "Select COUNT(o) from Order o ";
        Query countQuery = _entityManager.createQuery(countQ);
        long countResults = (long) countQuery.getSingleResult();
        return countResults;
    }
    

}
