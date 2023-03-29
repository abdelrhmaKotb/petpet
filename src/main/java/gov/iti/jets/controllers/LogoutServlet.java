package gov.iti.jets.controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

public class LogoutServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession(false);

        if(session != null){
            session.removeAttribute("userSession");
            session.invalidate();
            Cookie c = new Cookie("urml", "");
            c.setMaxAge(-1);
            resp.addCookie(c);
            resp.sendRedirect("/petpet/home");
        }
    }
}
