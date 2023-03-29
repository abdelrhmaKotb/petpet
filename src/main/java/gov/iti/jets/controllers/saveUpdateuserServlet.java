package gov.iti.jets.controllers;

import java.io.IOException;
import java.math.BigDecimal;
import java.time.LocalDate;

import gov.iti.jets.persistent.dto.UserDTO;
import gov.iti.jets.services.UpdateUserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class saveUpdateuserServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("hla hal");
        String fName = req.getParameter("update-Name");
        //  String [] selectedInterest = req.getParameterValues("multiple-select-field");
        //  System.out.println(selectedInterest.length);
        String userName = req.getParameter("update-username");
        System.out.println("user email " + userName);
        String phone = req.getParameter("upd-phon");
        String password = req.getParameter("update-password-1");
        String job = req.getParameter("update-job");
        String creditLimit = req.getParameter("update-credit");
        String country = req.getParameter("update-country");
        String street = req.getParameter("update-street");
        String city = req.getParameter("update-city");
        String birthday = req.getParameter("update-birth");
        BigDecimal cl = BigDecimal.valueOf(Long.parseLong(creditLimit));
        LocalDate date = LocalDate.parse(birthday); // date formater
        String userid = req.getParameter("userId");
        UserDTO user = new UserDTO(fName, userName, phone, password, job, cl, country, street, null, city, date);
        UpdateUserService upuser = new UpdateUserService();
        upuser.saveUpdateUser(Integer.parseInt(userid), user);
        System.out.println("don");
        resp.getWriter().write("user updated seccessfully");
    }

}
