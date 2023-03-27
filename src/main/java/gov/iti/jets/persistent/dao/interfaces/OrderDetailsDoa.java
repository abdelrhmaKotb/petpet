package gov.iti.jets.persistent.dao.interfaces;

import gov.iti.jets.persistent.entity.Order;
import gov.iti.jets.persistent.entity.OrderDetail;

import java.util.List;

public interface OrderDetailsDoa {

    List<OrderDetail> getOrderDetailsByOrderId(Integer orderId);
}
