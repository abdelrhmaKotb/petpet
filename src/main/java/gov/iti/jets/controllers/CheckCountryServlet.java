package gov.iti.jets.controllers;

import gov.iti.jets.helpers.Validation;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class CheckCountryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String country = req.getParameter("country");
        System.out.println(country);
        if (Validation.validCountry(country)){
            resp.getWriter().print("true");
        }
        else resp.getWriter().print("false");
    }
}
