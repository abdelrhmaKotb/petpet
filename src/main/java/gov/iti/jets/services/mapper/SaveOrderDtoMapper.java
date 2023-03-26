package gov.iti.jets.services.mapper;

import java.time.LocalDate;

import gov.iti.jets.persistent.dto.SaveOrderDto;
import gov.iti.jets.persistent.entity.Order;

public class SaveOrderDtoMapper implements Mapper<Order, SaveOrderDto> {

    @Override
    public SaveOrderDto toDto(Order t) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public Order toEntity(SaveOrderDto r) {
        if (r == null) {
            return null;
        }
        Order order = new Order();
        order.setCity(r.getCity());
        order.setCountry(r.getCountry());
        order.setNotes(r.getNotes());
        order.setPhone(r.getPhone());
        order.setStreet(r.getStreet());
        order.setZIP(r.getZIP());
        order.setUser(new UserMapper().toEntity(r.getUser()));
        System.out.println(new UserMapper().toEntity(r.getUser()));
        order.setTotalPrice(r.getTotalPrice());
        return order;
    }

}