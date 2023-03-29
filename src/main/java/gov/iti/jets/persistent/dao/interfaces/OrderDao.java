package gov.iti.jets.persistent.dao.interfaces;

import gov.iti.jets.persistent.entity.Order;
import gov.iti.jets.persistent.entity.Product;

import java.util.List;

public interface OrderDao {
    public List<Order> findUserOrder(Integer UserId, Integer pageNumber);
    public long totalOrders(Integer UserId);
    public long allOrders();
}
