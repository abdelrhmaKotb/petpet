package gov.iti.jets.controllers;

import gov.iti.jets.persistent.dto.CategoryDto;
import gov.iti.jets.persistent.dto.ProductDto;
import gov.iti.jets.persistent.dto.getCategoryAnditsQuantityDTO;
import gov.iti.jets.services.GetCategoriesService;
import gov.iti.jets.services.GetProductsService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

public class AllProduct extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        GetProductsService productsService =  new  GetProductsService();

        GetCategoriesService getCategoriesService = new GetCategoriesService();

        List<ProductDto> products =  productsService.getproductsByPage(0);

        List<getCategoryAnditsQuantityDTO>categoryDtos = getCategoriesService.getCategoriesAndItsQuantity();

        double highestPrise = productsService.getHighestPrise();

        RequestDispatcher requestDis = req.getRequestDispatcher("/presentation/views/shop.jsp");

        long totalPages = productsService.totalPages( );

        req.setAttribute("productList", products);

        req.setAttribute("categoryList",categoryDtos);

        req.setAttribute("CurrentPage", 1);

        req.setAttribute("totalPages", Math.round(Math.ceil( (double)totalPages/10)));

        req.setAttribute("highestPrise",highestPrise);

        requestDis.forward(req, resp);

    }

        @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

            String pageNumber= req.getParameter("pageNumber");
            System.out.println("fromm post"+pageNumber);
            PrintWriter printWriter =resp.getWriter();
            GetProductsService getProductsService =new GetProductsService();
            List<ProductDto> productDtoList =  getProductsService.getproductsByPage( Integer.valueOf(pageNumber)-1);
            printWriter.write(new Gson().toJson(productDtoList));
        }
    }
