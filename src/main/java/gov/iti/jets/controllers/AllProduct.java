package gov.iti.jets.controllers;

import gov.iti.jets.persistent.dto.ProductDto;
import gov.iti.jets.services.GetProductsService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

    public class AllProduct extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        GetProductsService productsService =  new  GetProductsService();

        List<ProductDto> products =  productsService.getProducts();

        RequestDispatcher requestDis = req.getRequestDispatcher("/presentation/views/shop.jsp");

        req.setAttribute("productList", products);

        System.out.println(products);

        requestDis.forward(req, resp);

    }

}
