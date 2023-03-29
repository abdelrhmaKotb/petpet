package gov.iti.jets.controllers;

import gov.iti.jets.persistent.dto.ProductDto;
import gov.iti.jets.services.GetProductsService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class ProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String productId = request.getParameter("id");
        int id = 0;
        try {
            id = Integer.parseInt(productId);
        } catch (Exception e) {
            response.sendRedirect("/petpet/404");
            return;

        }
        GetProductsService getProductsService = new GetProductsService();
        ProductDto product = getProductsService.getFromContext(id);
        if (product == null) {
            response.sendRedirect("/petpet/404");
            return;
        }
        request.setAttribute("product", product);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/presentation/views/product.jsp");
        dispatcher.forward(request, response);
    }
}
