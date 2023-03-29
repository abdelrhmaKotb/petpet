package gov.iti.jets.persistent.dao.interfaces;

import gov.iti.jets.persistent.dto.BestSellingProductsDto;
import gov.iti.jets.persistent.entity.OrderDetail;

import java.util.List;

public interface OrderDetailsDoa {

    List<OrderDetail> getOrderDetailsByOrderId(Integer orderId);
    public List<BestSellingProductsDto> bestSelling();
    long soldProducts();
}
