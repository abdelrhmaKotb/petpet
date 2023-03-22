package gov.iti.jets.controllers.Admin;

import gov.iti.jets.services.DeleteUserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class DeleteUserServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        DeleteUserService service = new DeleteUserService();
        if(service.deleteUser(id)){
            System.out.println("User Deleted");
        }


    }
}
