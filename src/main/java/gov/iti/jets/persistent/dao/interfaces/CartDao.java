package gov.iti.jets.persistent.dao.interfaces;

import gov.iti.jets.persistent.entity.Cart;

public interface CartDao {
    Cart getUserCart(int UserID);
}
