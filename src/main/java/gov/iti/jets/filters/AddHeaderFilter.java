package gov.iti.jets.filters;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.google.gson.Gson;

import gov.iti.jets.models.CartItem;
import gov.iti.jets.services.AddToCartService;
import jakarta.security.auth.message.callback.PrivateKeyCallback.Request;
import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Type;

public class AddHeaderFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        int userId = 12;
        AddToCartService addToCartService = new AddToCartService();
        String cartJson = addToCartService.get(userId);
        Gson gson = new Gson();
        Type listType = new TypeToken<List<CartItem>>() {
        }.getType();
        List<CartItem> cart = gson.fromJson(cartJson, listType);
        if(cart == null){
            cart = new ArrayList<>();
        }
        System.out.println(" cart " +  cart);
        request.setAttribute("cart", cart);
        Double total = cart.stream().mapToDouble(item -> item.getProductPrice() * item.getProductQty()).sum();
        request.setAttribute("total", total);
        // request.getRequestDispatcher("presentation/views/header.jsp").include(request, response);
        System.out.println("filter fired");
        chain.doFilter(request, response);

    }

}
