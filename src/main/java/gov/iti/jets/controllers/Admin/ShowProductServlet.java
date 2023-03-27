package gov.iti.jets.controllers.Admin;

import java.io.IOException;

import gov.iti.jets.persistent.dto.ProductDto;
import gov.iti.jets.services.GetProductsService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class ShowProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("here");
        int productID = Integer.parseInt(req.getParameter("id"));
        GetProductsService getProductsService = new GetProductsService();
        ProductDto productDto = getProductsService.getProduct(productID);
        System.out.println(productDto);
        req.setAttribute("product", productDto);
        RequestDispatcher dispatcher = req.getRequestDispatcher("/presentation/views/Admin/product.jsp");
        dispatcher.forward(req, resp);
    }
}
