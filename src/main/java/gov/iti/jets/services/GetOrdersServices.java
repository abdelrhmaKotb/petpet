package gov.iti.jets.services;

import gov.iti.jets.persistent.dao.OrderDaoImpl;
import gov.iti.jets.persistent.dto.OrderDto;
import gov.iti.jets.persistent.entity.Order;
import gov.iti.jets.services.mapper.OrderMapper;

import java.util.ArrayList;
import java.util.List;

public class GetOrdersServices {
    public   List<OrderDto> getUserOrders(Integer UserId ,Integer pageNumber) {
        OrderDaoImpl orderDao = new OrderDaoImpl();

        List<Order> orderList = orderDao.findUserOrder(UserId,pageNumber);

        List<OrderDto> orderDtoList = new ArrayList<>();

        orderList.forEach(e -> {
            orderDtoList.add(new OrderMapper().toDto(e));
        });

        return orderDtoList;
    }
    public   long totalOrders(Integer UserId ) {
        OrderDaoImpl orderDao = new OrderDaoImpl();

        long totalOrders = orderDao.totalOrders(UserId);

        return totalOrders;
    }
}
