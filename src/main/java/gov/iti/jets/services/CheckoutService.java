package gov.iti.jets.services;

import java.util.ArrayList;
import java.util.List;


import gov.iti.jets.models.CartItem;
import gov.iti.jets.persistent.dao.RepositoryImpl;
import gov.iti.jets.persistent.dto.SaveOrderDto;
import gov.iti.jets.persistent.dto.UserDTO;
import gov.iti.jets.persistent.entity.Order;
import gov.iti.jets.persistent.entity.OrderDetail;
import gov.iti.jets.persistent.entity.OrderDetailId;
import gov.iti.jets.persistent.entity.Product;
import gov.iti.jets.persistent.entity.User;
import gov.iti.jets.services.mapper.SaveOrderDtoMapper;
import gov.iti.jets.services.mapper.UserMapper;

public class CheckoutService {

    List<String> errors = new ArrayList<>();

    private Double total = 0.0;

    // validate cart items and credit limit
    private boolean validateCartItem(List<CartItem> cart) {
        RepositoryImpl<Product, Integer> repo = new RepositoryImpl<>(Product.class);

        for (CartItem item : cart) {
            // get item from db
            Product product = repo.find(item.getProductId());

            if (product == null) {
                errors.add("product " + item.getProductName() + " dose not exist ");
                continue;
            }

            if (!item.getProductName().equals(product.getName())) {
                errors.add("invalid product " + item.getProductName());
            }

            if (item.getProductQty() > product.getQuantity()) {
                errors.add("invalid quantity " + item.getProductName());
            }

            System.out.println(item.getProductPrice() + " " + product.getPrice());

            if (!item.getProductPrice().equals(product.getPrice())) {
                errors.add("invalid price " + item.getProductName());
            }

            total += item.getProductPrice() * item.getProductQty();
        }

        if (errors.size() > 0) {
            return false;
        }

        return true;
    }

    private boolean checkCreditLimit(UserDTO user) {

        RepositoryImpl<User, Integer> repo = new RepositoryImpl<>(User.class);

        if (user == null) {
            return false;
        }

        // find user

        User u = repo.find(user.getId());
        Double creditLimit = u.getCreditLimit();

        System.out.println(creditLimit + " " + total);

        if (creditLimit < total) {
            errors.add("total order price greater than credit limit");
        }

        if (errors.size() > 0) {
            System.out.println(errors);
            return false;
        }

        System.out.println("after");

        return true;
    }

    public List<String> checkout(List<CartItem> cart, SaveOrderDto order) {

        boolean resultValidateCartItem = validateCartItem(cart);

        if (!resultValidateCartItem) {
            System.out.println("validate cart");

            return errors;
        }

        boolean resultCheckCreditLimit = checkCreditLimit(order.getUser());

        if (!resultCheckCreditLimit) {
            System.out.println("validate credit");

            return errors;
        }

        System.out.println("herre");
        order.setTotalPrice(total);
        saveOrder(cart, order);
        handelCreditLimit(order.getUser());
        handelProductQty(cart);
        handelCart(order.getUser());

        return errors;
    }

    // set order in db
    private void saveOrder(List<CartItem> cart, SaveOrderDto order) {
        RepositoryImpl<Order, Integer> repo = new RepositoryImpl<>(Order.class);
        RepositoryImpl<OrderDetail, OrderDetailId> repo2 = new RepositoryImpl<>(OrderDetail.class);
        Order o = new SaveOrderDtoMapper().toEntity(order);
        System.out.println("b " + o);
        Order savedOrder = repo.create(o);
        System.out.println("a " + o);
        cart.forEach(Item -> {
            OrderDetail dd = new OrderDetail(new OrderDetailId(o.getId(),Item.getProductId()),o, new Product(Item.getProductId()), Item.getProductQty(),
                    Item.getProductPrice());

            repo2.update(dd);
        });

    }

    // handel credit limit
    private void handelCreditLimit(UserDTO userDto) {
        RepositoryImpl<User, Integer> repo = new RepositoryImpl<>(User.class);
        User user = new UserMapper().toEntity(userDto);
        user.setCreditLimit(user.getCreditLimit() - total);
        repo.update(user);
    }

    // handel product qty
    private void handelProductQty(List<CartItem> cart){
        RepositoryImpl<Product,Integer> repo = new RepositoryImpl<>(Product.class);
        
        cart.forEach(e -> {
            Product p =  repo.find(e.getProductId());
            p.setQuantity(p.getQuantity() - e.getProductQty());
            repo.update(p);
        });
    }


    private void handelCart(UserDTO user){

        AddToCartService addToCartService = new AddToCartService();
        addToCartService.add("[]", user.getId());
        
    }

}
