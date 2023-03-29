package gov.iti.jets.persistent.dao;

import java.util.List;

import gov.iti.jets.persistent.dao.interfaces.CartDao;
import gov.iti.jets.persistent.entity.Cart;
import gov.iti.jets.persistent.entity.User;

public class CartDaoImpl extends RepositoryImpl<Cart, Integer> implements CartDao {

    public CartDaoImpl() {
        super(Cart.class);
    }

    @Override
    public Cart getUserCart(int UserID) {
        User user = new User();
        user.setId(UserID);
        List<Cart> cart = _entityManager.createQuery("from Cart c where c.user = ?1", Cart.class)
                .setParameter(1, user).getResultList();
        if (cart.size() > 0) {
            return cart.get(0);

        }
        return  null;
    }

}
