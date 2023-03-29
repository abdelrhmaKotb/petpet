package gov.iti.jets.services.mapper;

import gov.iti.jets.persistent.dto.OrderDetailDto;

import gov.iti.jets.persistent.dto.OrderDto;
import gov.iti.jets.persistent.entity.Order;
import gov.iti.jets.persistent.entity.OrderDetail;

public class OrderDetailsMapper implements Mapper <OrderDetail, OrderDetailDto> {
    @Override
    public OrderDetailDto toDto(OrderDetail orderDetail) {
        if (orderDetail != null){
            return new OrderDetailDto(orderDetail.getOrder().getId(),new ProductMapper().toDto( orderDetail.getProduct()),orderDetail.getQuantity());
        }
        return null;
    }

    @Override
    public OrderDetail toEntity(OrderDetailDto orderDetailDto) {
        return null;
    }
}
