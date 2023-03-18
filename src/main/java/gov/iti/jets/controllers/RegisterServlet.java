package gov.iti.jets.controllers;

import java.io.IOException;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Locale;

import gov.iti.jets.persistent.dto.UserDTO;
import gov.iti.jets.services.RegisterService;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String fName = req.getParameter("firstName");
        String userName = req.getParameter("userName");
        String phone = req.getParameter("phone");
        String password = req.getParameter("password");
        String job = req.getParameter("job");
        String creditLimit = req.getParameter("creditLimit");
        String country = req.getParameter("country");
        String street = req.getParameter("street");
        String city = req.getParameter("city");
        String birthday = req.getParameter("birthday");
        BigDecimal cl = BigDecimal.valueOf(Long.parseLong(creditLimit));
        LocalDate date = LocalDate.parse(birthday, DateTimeFormatter.ofPattern("d-MMM-yyyy", Locale.US)); 
        UserDTO user = new UserDTO(fName, userName, phone, password, job, cl, country, street, null, city, date);
        RegisterService service = new RegisterService();
        service.register(user);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("email");
        // validate here
        UserDTO user = new UserDTO(username);
        RegisterService service = new RegisterService();
        if (service.isUserExists(user)) {
            System.out.println("Servlet true");
            resp.getWriter().print("true");
        } else {
            System.out.println("Servlet false");
            resp.getWriter().print("false");

        }
    }
}
