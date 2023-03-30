package gov.iti.jets.controllers;

import java.io.IOException;

import com.google.gson.Gson;

import gov.iti.jets.persistent.dto.UserDTO;
import gov.iti.jets.services.EditUserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class EditUserServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String userJson = req.getParameter("user");
        String pass1 = req.getParameter("pass1");
        String pass2 = req.getParameter("pass2");
        String oldpassword = req.getParameter("oldpassword");

        UserDTO user = new Gson().fromJson(userJson, UserDTO.class);

        EditUserService editUserService = new EditUserService();

        boolean res = editUserService.save(user, oldpassword, pass1, pass2);
        if (res) {
            resp.getWriter().println("ok");
        } else {
            resp.getWriter().println("ko");
        }
    }
}
