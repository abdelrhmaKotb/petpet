package gov.iti.jets.controllers;

import java.io.IOException;
import java.net.InetAddress;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.List;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

import com.google.gson.Gson;

import gov.iti.jets.helpers.GenerateEncryptionPassword;
import gov.iti.jets.persistent.dto.CategoryDto;
import gov.iti.jets.persistent.dto.UserDTO;
import gov.iti.jets.services.GetCategoriesService;
import gov.iti.jets.services.loginService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("presentation/views/login.jsp");

        HttpSession session = req.getSession(false);
        GetCategoriesService getCategoriesService = new GetCategoriesService();
        List<CategoryDto> categoryDtoList = getCategoriesService.getCategories();
        System.out.println(categoryDtoList);
        req.setAttribute("categories",categoryDtoList);
        if (session == null) {

            dispatcher.forward(req, resp);

        } else {
            UserDTO user = (UserDTO) session.getAttribute("userSession");

            System.out.println("user " + user);

            if (user == null) {
                dispatcher.forward(req, resp);
            } else {
                resp.sendRedirect("/petpet/home");

            }
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String Emal = req.getParameter("register-email");
        String pass = req.getParameter("register-password");
        String remember = req.getParameter("remember");
        UserDTO userDTO = new loginService().isUser(Emal, pass);

        if (userDTO != null) {
            HttpSession session = req.getSession(true);

            session.setAttribute("userSession", userDTO);

            System.out.println("getAttribute " + session.getAttribute("userSession"));

            // req.getRequestDispatcher("home").forward(req, resp);
            System.out.println("remember " + remember);

            if (remember != null) {

                String ip = req.getRemoteAddr();
                if (ip.equalsIgnoreCase("0:0:0:0:0:0:0:1")) {
                    InetAddress inetAddress = InetAddress.getLocalHost();
                    String ipAddress = inetAddress.getHostAddress();

                    ip = ipAddress;
                }

                String enc = null;
                try {
                    enc = GenerateEncryptionPassword.encrypte(new Gson().toJson(
                            new gov.iti.jets.models.Cookie(userDTO.getEmail(), userDTO.getPassword(), ip)));
                } catch (Exception e) {
                    e.printStackTrace();
                }

                Cookie c = new Cookie("urml", enc);
                c.setMaxAge(60 * 60 * 24 * 15);

                c.getName();

                System.out.println(c.getName());
                System.out.println(c.getValue());

                resp.addCookie(c);
            }

            if (userDTO.isAdmin()) {
                resp.sendRedirect("/petpet/admin");
            } else {
                resp.sendRedirect("/petpet/home");
            }
        } else if (new loginService().isExistUser(Emal)) {
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
