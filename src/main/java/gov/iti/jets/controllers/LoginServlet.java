package gov.iti.jets.controllers;

import java.io.IOException;

import gov.iti.jets.services.loginService;
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

        if (new loginService().isUser(Emal,pass)) {
            

                resp.sendRedirect("presentation/views/index-5.jsp");
            }
            else if(new loginService().isExistUser(Emal)) {
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

}
