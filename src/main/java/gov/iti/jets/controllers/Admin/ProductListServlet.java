package gov.iti.jets.controllers.Admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import com.google.gson.Gson;
import gov.iti.jets.persistent.dto.OrderDto;
import gov.iti.jets.persistent.dto.ProductDto;
import gov.iti.jets.persistent.dto.UserDTO;
import gov.iti.jets.services.GetOrdersServices;
import gov.iti.jets.services.GetProductsService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class ProductListServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        GetProductsService productsService =  new  GetProductsService();

        List<ProductDto> products =  productsService.getProductsByPageNumber(0);
        long totalPages = productsService.totalOrders( );
        RequestDispatcher requestDis = req.getRequestDispatcher("product-list");
        System.out.println("Products"+products);
        req.setAttribute("productList", products);
        req.setAttribute("totalPages", Math.ceil( (double)totalPages/5));
        requestDis.forward(req, resp);




    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String pageNumber= req.getParameter("pageNumber");
        System.out.println("page number " + pageNumber);
        PrintWriter printWriter =resp.getWriter();
        GetProductsService getProductsService =new GetProductsService();
        List<ProductDto> productDtos =  getProductsService.getproductsByPage(Integer.valueOf(pageNumber)-1);
        printWriter.write(new Gson().toJson(productDtos));
    }
}
