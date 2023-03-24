package gov.iti.jets.services.mapper;

import gov.iti.jets.persistent.dto.OrderDto;
import gov.iti.jets.persistent.dto.ProductDto;
import gov.iti.jets.persistent.entity.Order;
import gov.iti.jets.persistent.entity.Product;

public class OrderMapper implements Mapper <Order, OrderDto> {
    public OrderMapper() {
    }

    @Override
    public OrderDto toDto(Order order) {

        if (order != null){
            return new OrderDto(order.getId(),((Order) order).getCreatedAt(),((Order) order).getTotalPrice(),((Order) order).getStatus());
        }
        return null;
    }

    @Override
    public Order toEntity(OrderDto orderDto) {
        return null;
    }

}
