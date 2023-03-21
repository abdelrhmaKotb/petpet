package gov.iti.jets.controllers;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.List;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import gov.iti.jets.models.CartItem;
import gov.iti.jets.persistent.entity.Cart;
import gov.iti.jets.services.AddToCartService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AddToCartServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // must come from session (currentUser)
        int userId = 12;

        RequestDispatcher dispatcher = req.getRequestDispatcher("presentation/views/cart.jsp");

        AddToCartService addToCartService = new AddToCartService();
        String cartJson = addToCartService.get(userId);

        Gson gson = new Gson();
        Type listType = new TypeToken<List<CartItem>>() {}.getType();
        List<CartItem> cart = gson.fromJson(cartJson, listType);
        System.out.println(cart);
        req.setAttribute("cart", cart);
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String item = req.getParameter("cart");

        System.out.println(item);

        /* if we want to cast */
        /*
         * Gson gson = new Gson();
         * Type listType = new TypeToken<List<CartItem>>() {}.getType();
         * List<CartItem> cart = gson.fromJson(req.getParameter("cart"), listType);
         * System.out.println(cart);
         */

        // must come from session (currentUser)
        int userId = 12;

        AddToCartService addToCartService = new AddToCartService();
        addToCartService.add(item, userId);

    }
}
