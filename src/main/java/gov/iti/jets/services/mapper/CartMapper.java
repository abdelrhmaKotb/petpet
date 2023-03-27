package gov.iti.jets.services.mapper;

import gov.iti.jets.persistent.dto.CartDto;
import gov.iti.jets.persistent.entity.Cart;

public class CartMapper implements Mapper<Cart,CartDto> {

    @Override
    public CartDto toDto(Cart t) {
        CartDto dto = new CartDto();
        dto.setId(t.getId());
        dto.setItems(t.getItems());
        dto.setUser(new UserMapper().toDto(t.getUser()));
        return dto;
    }

    @Override
    public Cart toEntity(CartDto r) {
        // TODO Auto-generated method stub
        return null;
    }
    
}
