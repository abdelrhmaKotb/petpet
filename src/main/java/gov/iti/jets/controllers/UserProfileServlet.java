package gov.iti.jets.controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

public class UserProfileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);

        if(session != null && session.getAttribute("userSession") !=null) {
            req.getRequestDispatcher("/presentation/views/dashboard.jsp").forward(req, resp);
        }else {
            resp.sendRedirect("/petpet/login");
        }
    }
}
