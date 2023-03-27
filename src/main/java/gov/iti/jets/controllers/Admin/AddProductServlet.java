package gov.iti.jets.controllers.Admin;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import gov.iti.jets.persistent.dto.CategoryDto;
import gov.iti.jets.persistent.dto.ProductDto;
import gov.iti.jets.services.AddProductService;
import gov.iti.jets.services.GetCategoriesService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@MultipartConfig(fileSizeThreshold = 1024 * 1024, maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 5 * 5)
public class AddProductServlet extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    GetCategoriesService categoriesService = new GetCategoriesService();
    List<CategoryDto> categories = categoriesService.getCategories();
    request.setAttribute("categories", categories);
    request.setAttribute("action", "/petpet/admin/add-product");
    RequestDispatcher dis = request.getRequestDispatcher("/presentation/views/Admin/addProduct.jsp");

    dis.forward(request, response);

  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    String productName = request.getParameter("product_name");
    String category = request.getParameter("category");
    String description = request.getParameter("product_description");
    Double price = Double.parseDouble(request.getParameter("product_price"));
    int qty = Integer.parseInt(request.getParameter("product_quantity"));

    List<String> images = new ArrayList<>();

    ServletContext servletContext = getServletContext();
    String contextPath = servletContext.getRealPath(File.separator);
    final String path = contextPath + "/presentation/assets/products_images/";

    System.out.println("path is " + path);

    final Collection<Part> filePart = request.getParts();

    final PrintWriter writer = response.getWriter();

    String dirName = productName + Math.random();

    Boolean res = new File(path + dirName).mkdirs();

    for (Part part : filePart) {
      final String fileName = part.getSubmittedFileName();
      System.out.println("name " + fileName);

      if (fileName == null || fileName.equals("")) {
        continue;
      }

      String filePath = path + dirName + "/" + fileName;

      images.add("/presentation/assets/products_images/" + dirName + "/" + fileName);

      part.write(filePath);
    }

    CategoryDto categoryDto = new CategoryDto();
    categoryDto.setId(Integer.parseInt(category));
    ProductDto product = new ProductDto(productName, price, categoryDto, qty, description, images);

    AddProductService addProductService = new AddProductService();

    Integer productId = addProductService.addProduct(product);
    response.sendRedirect("/petpet/admin/products");

  }

}
