package gov.iti.jets.controllers.Admin;

import java.io.IOException;
import java.util.List;

import gov.iti.jets.persistent.dto.ProductDto;
import gov.iti.jets.services.GetProductsService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class ProductListServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        GetProductsService productsService =  new  GetProductsService();

        List<ProductDto> products =  productsService.getProducts();

        RequestDispatcher requestDis = req.getRequestDispatcher("Products-List");

        req.setAttribute("priductList", products);

        requestDis.forward(req, resp);

    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        GetProductsService productsService =  new  GetProductsService();

        List<ProductDto> products =  productsService.getProducts();

        RequestDispatcher requestDis = req.getRequestDispatcher("Products-List");

        req.setAttribute("priductList", products);

        requestDis.forward(req, resp);

    }

}
