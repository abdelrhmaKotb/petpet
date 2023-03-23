package gov.iti.jets.controllers;

import java.io.IOException;
import java.math.BigDecimal;
import java.time.LocalDate;
import com.google.gson.Gson;
import gov.iti.jets.helpers.Validation;
import gov.iti.jets.persistent.dto.UserDTO;
import gov.iti.jets.services.RegisterService;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

// @WebServlet(urlPatterns = {"/register"} , name = "RegisterServlet")
public class RegisterServlet extends HttpServlet{

    String username = null;
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

         Gson gson = new Gson();
        
        String fName =req.getParameter("register-Name");
        String userName = req.getParameter("register-username");
        System.out.println("user email " + userName);
        //System.out.println("user email " + username);
        String phone = req.getParameter("register-phone");
        String password = req.getParameter("register-password-1");
        String conf_password = req.getParameter("register-password-confirm");
        String job = req.getParameter("register-job");
        String creditLimit  = req.getParameter("register-credit");
        String country  = req.getParameter("register-country");
        String street  = req.getParameter("register-street");
        String city  = req.getParameter("register-city");
        String birthday  = req.getParameter("register-birth");
        BigDecimal cl = BigDecimal.valueOf(Long.parseLong(creditLimit));
        LocalDate date = LocalDate.parse(birthday); //date formater
        UserDTO user = new UserDTO(fName,userName,phone,password,job,cl,country,street,null,city,date);
        RegisterService service = new RegisterService();
        if(Validation.isValidName(fName)  && Validation.validCountry(country)
                && Validation.validPhone(phone)  && Validation.validPassword(password) && Validation.isEmail(userName))
        {
            System.out.println("All true");
            service.register(user);
            req.getRequestDispatcher("presentation/views/index-5.jsp").forward(req,resp);
        }
        else {
            resp.sendRedirect("presentation/views/login.jsp");
        }

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
