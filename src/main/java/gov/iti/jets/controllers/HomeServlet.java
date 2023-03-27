package gov.iti.jets.controllers;

import gov.iti.jets.persistent.dto.CategoryDto;
import gov.iti.jets.persistent.dto.TrendyProductsDTO;
import gov.iti.jets.persistent.entity.Category;
import gov.iti.jets.services.Categoryservices;
import gov.iti.jets.services.GetCategoriesService;
import gov.iti.jets.services.GetProductsService;
import gov.iti.jets.services.mapper.CategoryMapper;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.eclipse.tags.shaded.org.apache.xalan.trace.TraceListener;

import java.io.IOException;
import java.util.List;

public class HomeServlet extends HttpServlet {


    @Override
    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {

        GetCategoriesService getCategoriesService =  new GetCategoriesService();

        List<CategoryDto> mainCategories = getCategoriesService.getMainCategories();
        GetProductsService getProductsService = new GetProductsService();
        List<TrendyProductsDTO> trendyProductsDTOS = getProductsService.firstThreeProducts(mainCategories);

        req.setAttribute("mainCategories",mainCategories);
        req.setAttribute("trendyProductsDTOS",trendyProductsDTOS);
        req.getRequestDispatcher("presentation/views/index-5.jsp").forward(req,res);
    }


}
