package gov.iti.jets.controllers.Admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import com.google.gson.Gson;
import gov.iti.jets.services.Categoryservices;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AddCategoryServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
        List<String> stringList = new Categoryservices().allcategoryname();
        stringList.add("Non");
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        PrintWriter out = resp.getWriter();
        out.print(new Gson().toJson(stringList));
        out.flush();

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String category_name = req.getParameter("category_name");
        String parent = req.getParameter("mySelect");
        boolean resultOfAddingCategory =new Categoryservices().addCategory(category_name, parent);
        if (resultOfAddingCategory) {
            RequestDispatcher dispatcher = req.getRequestDispatcher("/admin/add-category-page");
            dispatcher.forward(req, resp);
        } else {
          
            req.setAttribute("errorMessagecategore","This Category  "+category_name+"  Already Exist Please Add Another Category");
            RequestDispatcher dispatcher = req.getRequestDispatcher("/admin/add-category-page");
            dispatcher.forward(req, resp);
        }

    }

}
