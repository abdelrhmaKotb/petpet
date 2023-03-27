package gov.iti.jets.persistent.dao;

import gov.iti.jets.persistent.dao.interfaces.OrderDetailsDoa;
import gov.iti.jets.persistent.entity.Order;
import gov.iti.jets.persistent.entity.OrderDetail;
import gov.iti.jets.persistent.entity.Product;
import jakarta.persistence.Query;

import java.util.List;

public class OrderDetailsDaoImpl extends  RepositoryImpl<OrderDetail,Integer>  implements OrderDetailsDoa {
    public OrderDetailsDaoImpl(){
        super(OrderDetail.class);
    }
    @Override
    public List<OrderDetail> getOrderDetailsByOrderId(Integer orderId) {
        RepositoryImpl<Order,Integer> orderIntegerRepository  = new RepositoryImpl<>(Order.class);

        Order order = orderIntegerRepository.find(orderId);
        String Query ="From OrderDetail od where od.order.id = :orderId";
        Query orderDetails = _entityManager.createQuery(Query)
                .setParameter("orderId",orderId);
        List<OrderDetail>orderDetailList =  orderDetails.getResultList();
        return orderDetailList;

    }
}
