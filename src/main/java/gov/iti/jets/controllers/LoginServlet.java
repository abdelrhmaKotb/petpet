package gov.iti.jets.controllers;

import java.io.IOException;
import gov.iti.jets.persistent.dto.UserDTO;
import gov.iti.jets.services.loginService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("presentation/views/login.jsp");

        HttpSession session = req.getSession(false);

        if (session == null) {

            dispatcher.forward(req, resp);

        } else {
            UserDTO user = (UserDTO) session.getAttribute("userSession");

            System.out.println("user " + user);

            if (user == null) {
                dispatcher.forward(req, resp);
            } else {
                resp.sendRedirect("/petpet/home");


            }
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String Emal = req.getParameter("register-email");
        String pass = req.getParameter("register-password");
        UserDTO userDTO = new loginService().isUser(Emal, pass);

        if (userDTO != null) {
            HttpSession session = req.getSession(true);

            session.setAttribute("userSession", userDTO);

            System.out.println("getAttribute " + session.getAttribute("userSession"));

            // req.getRequestDispatcher("home").forward(req, resp);

            if (userDTO.isAdmin()) {
                resp.sendRedirect("/petpet/admin");
            } else {
                resp.sendRedirect("/petpet/home");
            }
        } else if (new loginService().isExistUser(Emal)) {
            req.setAttribute("errorMessage", "Incorrect password.");
            RequestDispatcher r = req.getRequestDispatcher("presentation/views/login.jsp");
            r.forward(req, resp);

        }

        else {
            req.setAttribute("errorMessage", " Incorrect E-mail Address");
            RequestDispatcher r = req.getRequestDispatcher("presentation/views/login.jsp");
            r.forward(req, resp);

        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        RequestDispatcher r = req.getRequestDispatcher("presentation/views/login.jsp");
        r.forward(req, resp);
    }
}
