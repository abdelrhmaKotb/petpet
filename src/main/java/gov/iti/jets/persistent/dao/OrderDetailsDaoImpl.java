package gov.iti.jets.persistent.dao;

import gov.iti.jets.persistent.dao.interfaces.OrderDetailsDoa;
import gov.iti.jets.persistent.dto.BestSellingProductsDto;
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
    @Override
    public List<BestSellingProductsDto> bestSelling() {
       
        //Query query = _entityManager.createQuery(SELECT new gov.iti.jets.persistent.dto.BestSellingProductsDto(od.product.id,od.product.name,SUM(od.quantity),od.productPrice,SUM(od.quantity)*od.productPrice)From OrderDetail od GROUP BY od.product.id");
        Query query = _entityManager.createQuery("SELECT new gov.iti.jets.persistent.dto.BestSellingProductsDto(od.product.id,od.product.name,SUM(od.quantity),od.productPrice,SUM(od.quantity)*od.productPrice)FROM OrderDetail od GROUP BY od.product.id, od.product.name, od.productPrice");

        query.setMaxResults(5);
        List<BestSellingProductsDto> orderList = query.getResultList();

        return orderList;
    }
    @Override
    public long soldProducts() {

        Query query = _entityManager.createQuery("SELECT SUM(od.quantity) From OrderDetail od");
        long total = 0L;
        try {
             total = (long) query.getSingleResult();

        }catch (Exception e){
            total = 0L;
        }

        return total;
    }
}
