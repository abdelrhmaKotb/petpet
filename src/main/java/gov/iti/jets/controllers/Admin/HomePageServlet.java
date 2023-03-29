package gov.iti.jets.controllers.Admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import com.google.gson.Gson;

import gov.iti.jets.persistent.dao.CategoryDaoImpl;
import gov.iti.jets.persistent.dto.BestSellingProductsDto;
import gov.iti.jets.persistent.dto.CategoryAndItsSalies;
import gov.iti.jets.services.Categoryservices;
import gov.iti.jets.services.GetCategoriesService;
import gov.iti.jets.services.GetOrderDetailsService;
import gov.iti.jets.services.GetOrdersServices;
import gov.iti.jets.services.GetProductsService;
import gov.iti.jets.services.GetUsersService;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class HomePageServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        GetOrderDetailsService detailsService = new GetOrderDetailsService();

        GetOrdersServices order_details = new GetOrdersServices();

        GetUsersService getUsersService =new GetUsersService();

        GetCategoriesService categoryservices  = new GetCategoriesService();

        List<CategoryAndItsSalies> itsSalies = categoryservices.getCategorySales();

        List<BestSellingProductsDto> bestSelling = detailsService.bestSelling();
        
        Long productSold = detailsService.getSoldProducts();
        
        long totalOrders = order_details.countOfOrders();

        long totalUsers = getUsersService.totalUsers();
        
        req.setAttribute("bestSelling", bestSelling);
        
        req.setAttribute("productSold", productSold);
        
        req.setAttribute("totalOrders", totalOrders);

        req.setAttribute("totalUsers", totalUsers);

        req.setAttribute("categoriesReport", itsSalies);

        
        req.getRequestDispatcher("/presentation/views/Admin/HomePage.jsp").forward(req, resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        GetCategoriesService categoryservices  = new GetCategoriesService();
        List<CategoryAndItsSalies> itsSalies = categoryservices.getCategorySales();

        PrintWriter printWriter = resp.getWriter();
        printWriter.write(new Gson().toJson(itsSalies));
    }
    
    
}
