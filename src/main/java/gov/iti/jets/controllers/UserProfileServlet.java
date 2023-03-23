package gov.iti.jets.controllers;

import jakarta.jms.Session;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import gov.iti.jets.persistent.dto.UserDTO;
import java.io.IOException;

public class UserProfileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        UserDTO userDto = (UserDTO) session.getAttribute("userSession");
        System.out.println(userDto.getName());
        req.getRequestDispatcher("/presentation/views/dashboard.jsp").forward(req,resp);

    }
}
