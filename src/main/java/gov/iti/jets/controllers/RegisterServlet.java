package gov.iti.jets.controllers;

import java.io.IOException;
import java.io.PrintWriter;
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
import org.mindrot.jbcrypt.BCrypt;

// @WebServlet(urlPatterns = {"/register"} , name = "RegisterServlet")
public class RegisterServlet extends HttpServlet{

    String username = null;
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("text/html");
        String fName =req.getParameter("register-Name");
        String [] selectedInterest = req.getParameterValues("multiple-select-field");

        String userName = req.getParameter("register-username");
        System.out.println("user email " + userName);
        String phone = req.getParameter("register-phone");
        String password = req.getParameter("register-password-1");
        String conf_password = req.getParameter("register-password-confirm");
        String hashedPassword = Hash(password);
        String job = req.getParameter("register-job");
        String creditLimit  = req.getParameter("register-credit");
        String country  = req.getParameter("register-country");
        String street  = req.getParameter("register-street");
        String city  = req.getParameter("register-city");
        String birthday  = req.getParameter("register-birth");
        BigDecimal cl = BigDecimal.valueOf(Long.parseLong(creditLimit));
        LocalDate date = LocalDate.parse(birthday); //date formater
        UserDTO user = new UserDTO(fName,userName,phone,hashedPassword,job,cl,country,street,null,city,date);

        RegisterService service = new RegisterService();
        if(Validation.isValidName(fName) && Validation.validPassword(password) && Validation.validPhone(phone) && Validation.validConfirmPassword(password,conf_password))
        {
            System.out.println("All true");
            service.register(user);
            PrintWriter out = resp.getWriter();
            out.print("""
                    <div class='alert alert-success' role='alert'>
                     Registered successfully
                    </div>""");
            req.getRequestDispatcher("login").forward(req,resp);

        }
        else {
            resp.sendRedirect("login");
            resp.getWriter().print("<div class=\"alert alert-danger\" role=\"alert\">\n" +
                    "  This is a danger alert—check it out!\n" +
                    "</div>");
            resp.sendRedirect("login");

        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         username = req.getParameter("email");
        System.out.println(username);

        UserDTO user = new UserDTO(username);
        RegisterService service = new RegisterService();
        if (!service.isUserExists(user)) {
            System.out.println("Servlet true");
            if(!Validation.isEmail(username))
                resp.getWriter().print("invalid");
            resp.getWriter().print("true");
        }

        else {
            System.out.println("Servlet false");
            resp.getWriter().print("false");

        }

    //else resp.getWriter().print("empty");
    }

    private static String Hash(String password){
        String salt = BCrypt.gensalt(10); // generate a random salt
        String hashedPassword = BCrypt.hashpw(password, salt); // hash the password
        System.out.println("Hashed Password " + hashedPassword);
        return hashedPassword;
    }
}
