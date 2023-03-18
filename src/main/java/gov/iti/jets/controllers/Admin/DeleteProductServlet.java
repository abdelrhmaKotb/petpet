package gov.iti.jets.controllers.Admin;

import gov.iti.jets.services.DeleteProductService;
import gov.iti.jets.services.GetProductsService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

public class DeleteProductServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        String Msg = "";
        int productID = Integer.parseInt(req.getParameter("id"));
        GetProductsService getProductsService = new GetProductsService();

        DeleteProductService deleteProductServlet = new DeleteProductService();
        boolean result = deleteProductServlet.deleteProduct(getProductsService.getProductFromContext(productID));
        //DO SOMETHING
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


    }
}
