package gov.iti.jets.services;

import gov.iti.jets.persistent.dao.CartDaoImpl;
import gov.iti.jets.persistent.entity.Cart;
import gov.iti.jets.persistent.entity.User;

public class AddToCartService {

    public void add(String cart, int userID) {

        CartDaoImpl repo = new CartDaoImpl();
        Cart currentCart = repo.getUserCart(userID);

        if (currentCart == null) {
            currentCart = new Cart();

            currentCart.setItems(cart);
            User user = new User();
            user.setId(userID);
            currentCart.setUser(user);
            repo.create(currentCart);

        } else {

            currentCart.setItems(cart);
            repo.update(currentCart);
        }
    }

    public String get(int userID){
        CartDaoImpl repo = new CartDaoImpl();
        Cart currentCart = repo.getUserCart(userID);
        if(currentCart == null){
            return null;
        }

        return currentCart.getItems();
    }

}
