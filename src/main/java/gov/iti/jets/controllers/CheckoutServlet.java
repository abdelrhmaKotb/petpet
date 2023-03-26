package gov.iti.jets.controllers;

import java.io.IOException;

import com.google.gson.Gson;

import gov.iti.jets.models.CartItem;
import gov.iti.jets.persistent.dto.SaveOrderDto;
import gov.iti.jets.persistent.dto.UserDTO;
import gov.iti.jets.services.AddToCartService;
import gov.iti.jets.services.CheckoutService;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;

public class CheckoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("presentation/views/checkout.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int userId = 12;

        HttpSession session = req.getSession(false);

        UserDTO user = null;

        if (session != null) {
            user = (UserDTO) session.getAttribute("userSession");
        }

        String country = req.getParameter("register-country");
        String street = req.getParameter("register-street");
        String city = req.getParameter("register-city");
        String phone = req.getParameter("register-phone");
        String email = req.getParameter("register-email");
        String zip = req.getParameter("zip");
        String notes = req.getParameter("notes");

        SaveOrderDto order = new SaveOrderDto();
        order.setCity(city);
        order.setCountry(country);
        order.setPhone(phone);
        order.setEmail(email);
        order.setStreet(street);
        order.setNotes(notes);
        order.setZIP(zip);
        order.setUser(user);

        // Double cl = BigDecimal.valueOf(Long.parseLong(creditLimit));

        AddToCartService addToCartService = new AddToCartService();
        String cartJson = addToCartService.get(userId);
        Gson gson = new Gson();
        Type listType = new TypeToken<List<CartItem>>() {
        }.getType();
        List<CartItem> cart = gson.fromJson(cartJson, listType);
        if (cart == null) {
            cart = new ArrayList<>();
        }

        CheckoutService checkoutService = new CheckoutService();
        List<String> err = checkoutService.checkout(cart, order);

        if (err.size() > 0) {
            resp.getWriter().println(err);
        } else {
            resp.getWriter().println("done");

        }
    }
}
