package gov.iti.jets.controllers;

import java.io.IOException;

import gov.iti.jets.persistent.dto.UserDTO;
import gov.iti.jets.services.AddToCartService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class AddToCartServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // must come from session (currentUser)

        RequestDispatcher dispatcher = req.getRequestDispatcher("presentation/views/cart.jsp");

        // AddToCartService addToCartService = new AddToCartService();
        // String cartJson = addToCartService.get(userId);

        // Gson gson = new Gson();
        // Type listType = new TypeToken<List<CartItem>>() {}.getType();
        // List<CartItem> cart = gson.fromJson(cartJson, listType);
        // System.out.println(cart);
        // req.setAttribute("cart", cart);
        // Double total = cart.stream().mapToDouble(item -> item.getProductPrice() *
        // item.getProductQty()).sum();
        // req.setAttribute("total", total);
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String item = req.getParameter("cart");

        System.out.println("cart is " + item);

        /* if we want to cast */
        /*
         * Gson gson = new Gson();
         * Type listType = new TypeToken<List<CartItem>>() {}.getType();
         * List<CartItem> cart = gson.fromJson(req.getParameter("cart"), listType);
         * System.out.println(cart);
         */

        // must come from session (currentUser)
        // int userId = 12;

        HttpSession session = req.getSession(false);
        int userId = -1;

        if (session != null) {
            UserDTO user = (UserDTO) session.getAttribute("userSession");

            if (user != null) {
                userId = user.getId();
            }

        }

        // userId = 12;

        if (userId == -1) {
            resp.getWriter().println("invalid");
            return;
        }

        AddToCartService addToCartService = new AddToCartService();
        addToCartService.add(item, userId);

    }
}
