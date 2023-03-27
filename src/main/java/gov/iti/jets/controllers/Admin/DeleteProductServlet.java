package gov.iti.jets.controllers.Admin;

import gov.iti.jets.persistent.entity.Product;
import gov.iti.jets.persistent.entity.ProductImage;
import gov.iti.jets.services.DeleteProductService;
import gov.iti.jets.services.GetProductsService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.apache.commons.io.FileUtils;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class DeleteProductServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        String Msg = "";
        System.out.println("delete");
        int productID = Integer.parseInt(req.getParameter("id"));
        DeleteProductService deleteProductServlet = new DeleteProductService();
        Product result = deleteProductServlet.deleteProduct(productID);
        deleteImagesFromTomcat(result.getImages());
        //DO SOMETHING
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


    }
    void deleteImagesFromTomcat(List<ProductImage> productImages){
        ServletContext servletContext = getServletContext();
        String contextPath = servletContext.getRealPath(File.separator);

        File file_ToBeDeleted = new File(contextPath+productImages.get(0).getImageUrl());
        try {
            FileUtils.deleteDirectory(file_ToBeDeleted.getParentFile());
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

    }
}
