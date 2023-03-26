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

        RequestDispatcher requestDis = req.getRequestDispatcher("product-list");
        System.out.println("Products"+products);
        req.setAttribute("productList", products);

        requestDis.forward(req, resp);

    }

}
