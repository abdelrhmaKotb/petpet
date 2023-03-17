package gov.iti.jets.controllers;

import java.io.IOException;

import gov.iti.jets.persistent.dao.UserDaoImpl;
import gov.iti.jets.persistent.dto.UserDTO;
import gov.iti.jets.services.mapper.UserMapper;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String Emal = req.getParameter("register-email");
        String pass = req.getParameter("register-password");
        // System.out.println("Email "+Emal);
        // System.out.println("password "+pass);

        UserMapper userMapper = new UserMapper();
        UserDaoImpl user = new UserDaoImpl();
        UserDTO userDTO = userMapper.toDto(user.findUserByEmail(Emal));
        if (userDTO != null) {
            if (pass.equals(userDTO.getPassword())) {

                resp.sendRedirect("presentation/views/index-5.jsp");
            } else {
                req.setAttribute("errorMessage", "Incorrect password.");
                RequestDispatcher r = req.getRequestDispatcher("presentation/views/login.jsp");
                r.forward(req, resp);

            }

        } else {
            req.setAttribute("errorMessage", " Incorrect E-mail Address");
            RequestDispatcher r = req.getRequestDispatcher("presentation/views/login.jsp");
            r.forward(req, resp);

        }

    }

}
