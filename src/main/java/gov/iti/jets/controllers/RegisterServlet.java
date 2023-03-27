package gov.iti.jets.controllers;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;

import gov.iti.jets.helpers.Validation;
import gov.iti.jets.persistent.dto.UserDTO;
import gov.iti.jets.services.RegisterService;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.mindrot.jbcrypt.BCrypt;

// @WebServlet(urlPatterns = {"/register"} , name = "RegisterServlet")
public class RegisterServlet extends HttpServlet {

    String username = null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String fName = req.getParameter("register-Name");
        String[] selectedInterest = req.getParameterValues("multiple-select-field");
        System.out.println(selectedInterest.length);
        String userName = req.getParameter("register-username");
        System.out.println("user email " + userName);
        String phone = req.getParameter("register-phone");
        String password = req.getParameter("register-password-1");
        String conf_password = req.getParameter("register-password-confirm");
        String hashedPassword = Hash(password);
        String job = req.getParameter("register-job");
        Double creditLimit = Double.parseDouble(req.getParameter("register-credit"));
        String country = req.getParameter("register-country");
        String street = req.getParameter("register-street");
        String city = req.getParameter("register-city");
        String birthday = req.getParameter("register-birth");
        // BigDecimal cl = BigDecimal.valueOf(Long.parseLong(creditLimit));
        LocalDate date = LocalDate.parse(birthday); // date formater
        UserDTO user = new UserDTO(fName, userName, phone, hashedPassword, job, creditLimit, country, street, null,
                city, date);

                

        RegisterService service = new RegisterService();
        if (Validation.isValidName(fName) && Validation.validPassword(password) && Validation.validPhone(phone)) {
            System.out.println("All true");
            UserDTO createdUser = service.register(user);
            if (createdUser != null) {
                HttpSession session = req.getSession(true);
                session.setAttribute("userSession", createdUser);
                resp.sendRedirect("home");
            } else {
                resp.sendRedirect("login");
            }

        } else {
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
            if (!Validation.isEmail(username))
                resp.getWriter().print("invalid");
            resp.getWriter().print("true");
        }

        else {
            System.out.println("Servlet false");
            resp.getWriter().print("false");

        }

        // else resp.getWriter().print("empty");
    }

    private static String Hash(String password) {
        String salt = BCrypt.gensalt(10); // generate a random salt
        String hashedPassword = BCrypt.hashpw(password, salt); // hash the password
        System.out.println("Hashed Password " + hashedPassword);
        return hashedPassword;
    }
}
