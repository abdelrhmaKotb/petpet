package gov.iti.jets.controllers.Admin;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import gov.iti.jets.persistent.dto.CategoryDto;
import gov.iti.jets.persistent.dto.ProductDto;
import gov.iti.jets.services.AddProductService;
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

    ServletContext servletContext = getServletContext();
		String contextPath = servletContext.getRealPath(File.separator);
		PrintWriter out = response.getWriter();
		out.println("<br/>File system context path (in TestServlet): " + contextPath);
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    String productName = request.getParameter("product_name");
    String category = request.getParameter("category");
    String description = request.getParameter("product_description");
    Double price = Double.parseDouble(request.getParameter("product_price"));
    int qty = Integer.parseInt(request.getParameter("product_quantity"));

    List<String> images = new ArrayList<>();


    CategoryDto categoryDto = new CategoryDto();
    categoryDto.setId(Integer.parseInt(category));
    ProductDto product = new ProductDto(productName, price, categoryDto, qty, description, images);


    AddProductService addProductService = new AddProductService();

    addProductService.addProduct(product);

    // final String path = "/";

    // System.out.println(path);

    // final Collection<Part> filePart = request.getParts();

    // final PrintWriter writer = response.getWriter();
    // for (Part part : filePart) {
    //   final String fileName = part.getSubmittedFileName();
    //   System.out.println(fileName);
    // }

    // try {
    // filePart.writer(path + fileName);
    // writer.println("<p>" + fileName + " Uploaded In: " + path + " BY: "
    // + request.getParameter("username") + "</p>");
    // } catch (FileNotFoundException fne) {
    // writer.println("<p>Error While Uploading Your File</p>");
    // }
  }

}
