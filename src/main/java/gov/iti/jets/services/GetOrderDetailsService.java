package gov.iti.jets.services;

import gov.iti.jets.persistent.dao.OrderDetailsDaoImpl;
import gov.iti.jets.persistent.dto.OrderDetailDto;
import gov.iti.jets.persistent.entity.OrderDetail;
import gov.iti.jets.services.mapper.OrderDetailsMapper;

import java.util.ArrayList;
import java.util.List;

public class GetOrderDetailsService {
    public static List<OrderDetailDto> getOrderDetailsByOrderId(Integer orderId) {
        OrderDetailsDaoImpl orderDetailsDoaDao = new OrderDetailsDaoImpl();
        List<OrderDetail> orderDetailList = orderDetailsDoaDao.getOrderDetailsByOrderId(orderId);
        List<OrderDetailDto> orderDetailDtos = new ArrayList<>();
        orderDetailList.forEach(element -> {
            orderDetailDtos.add(new OrderDetailsMapper().toDto(element));
        });
        return orderDetailDtos;
    }
}
