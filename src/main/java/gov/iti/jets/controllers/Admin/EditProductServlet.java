package gov.iti.jets.controllers.Admin;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import gov.iti.jets.persistent.dto.CategoryDto;
import gov.iti.jets.persistent.dto.ProductDto;
import gov.iti.jets.services.EditProductService;
import gov.iti.jets.services.GetCategoriesService;
import gov.iti.jets.services.GetProductsService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@MultipartConfig(fileSizeThreshold = 1024 * 1024, maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 5 * 5)
public class EditProductServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int productID = Integer.parseInt(req.getParameter("id"));

        GetProductsService getProductsService = new GetProductsService();
        ProductDto productDto = getProductsService.getProduct(productID);
        GetCategoriesService categoriesService = new GetCategoriesService();
        List<CategoryDto> categories = categoriesService.getCategories();
        req.setAttribute("categories", categories);
        req.setAttribute("action", "/petpet/edit-product");
        req.setAttribute("product", productDto);
        RequestDispatcher dispatcher = req.getRequestDispatcher("/presentation/views/Admin/addProduct.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {

        String productName = request.getParameter("product_name");
        String category = request.getParameter("category");
        String description = request.getParameter("product_description");
        String images = request.getParameter("images");
        String [] imagesUrl = images.split(",,");
        System.out.println("images " +  Arrays.toString(imagesUrl));
        Double price = Double.parseDouble(request.getParameter("product_price"));
        int qty = Integer.parseInt(request.getParameter("product_quantity"));
        int id = Integer.parseInt(request.getParameter("id"));

        CategoryDto categoryDto = new CategoryDto();
        categoryDto.setId(Integer.parseInt(category));
        ProductDto product = new ProductDto(productName, price, categoryDto, qty, description, List.of(imagesUrl));
        product.setId(id);

        EditProductService editProductService = new EditProductService();
        editProductService.edit(product);
        resp.sendRedirect("/petpet/Products");

    }
}
