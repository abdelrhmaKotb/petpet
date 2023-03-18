package gov.iti.jets.controllers.Admin;

import java.io.IOException;
import java.util.List;

import gov.iti.jets.persistent.dto.CategoryDto;
import gov.iti.jets.persistent.dto.ProductDto;
import gov.iti.jets.services.GetCategoriesService;
import gov.iti.jets.services.GetProductsService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class EditProductServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int productID = Integer.parseInt(req.getParameter("id"));

        GetProductsService getProductsService = new GetProductsService();
        ProductDto productDto = getProductsService.getProduct(productID);
        GetCategoriesService categoriesService = new GetCategoriesService();
        List<CategoryDto> categories = categoriesService.getCategories();
        req.setAttribute("categories", categories);
        req.setAttribute("action", "/petpet/add-product");

        RequestDispatcher dispatcher = req.getRequestDispatcher("/presentation/views/Admin/addProduct.jsp");

        req.setAttribute("product", productDto);

        dispatcher.forward(req, resp);
    }
}
