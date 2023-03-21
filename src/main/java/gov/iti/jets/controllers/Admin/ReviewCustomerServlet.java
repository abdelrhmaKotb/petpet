package gov.iti.jets.controllers.Admin;

import gov.iti.jets.persistent.dto.UserDTO;
import gov.iti.jets.services.GetUsersService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

public class ReviewCustomerServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        GetUsersService usersService = new GetUsersService();

        List<UserDTO> users = usersService.getAllUsers();

        req.setAttribute("AllUsers" , users);

        req.getRequestDispatcher("Users-List").forward(req , resp);



    }
}
