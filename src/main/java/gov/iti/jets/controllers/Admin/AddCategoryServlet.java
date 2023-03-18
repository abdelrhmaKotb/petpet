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
        System.out.println("hala hala");
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

        System.out.println("selectedValue:  " + parent);

        System.out.println("category_name:  " + category_name);
        if (new Categoryservices().addCategory(category_name, parent) ) {
            RequestDispatcher dispatcher = req.getRequestDispatcher("presentation/views/Admin/addCategory.jsp");
            dispatcher.forward(req, resp);
        } else {

        }

    }

}
