package gov.iti.jets.controllers;

import gov.iti.jets.persistent.dto.CategoryDto;
import gov.iti.jets.persistent.dto.ProductDto;
import gov.iti.jets.persistent.entity.Product;
import gov.iti.jets.services.GetCategoriesService;
import gov.iti.jets.services.GetProductsService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

public class ProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productId = request.getParameter("id");
        GetProductsService getProductsService = new GetProductsService();
        ProductDto product = getProductsService.getFromContext(Integer.parseInt(productId));
        request.setAttribute("product", product);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/presentation/views/product.jsp");
        dispatcher.forward(request, response);
    }
}
