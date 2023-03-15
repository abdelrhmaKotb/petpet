package gov.iti.jets.controllers;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;

import com.google.gson.Gson;
import com.mysql.cj.x.protobuf.MysqlxDatatypes.Array;

import gov.iti.jets.persistent.dto.UserDTO;
import gov.iti.jets.persistent.dto.UserDTOServiceImpl;
import gov.iti.jets.persistent.dto.interfaces.UserDTOServiceInt;
import gov.iti.jets.persistent.entity.User;
import gov.iti.jets.services.RegisterService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

// @WebServlet(urlPatterns = {"/register"} , name = "RegisterServlet")
public class RegisterServlet extends HttpServlet{

    ArrayList<String> userInfo = new ArrayList<>();
    UserDTOServiceInt userService = new UserDTOServiceImpl();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

         Gson gson = new Gson();
        
        String fName =req.getParameter("firstName");
        String userName = req.getParameter("username");
        String phone = req.getParameter("phone");
        String password = req.getParameter("password");
        String job = req.getParameter("job");
        String creditLimit  = req.getParameter("creditLimit");
        String country  = req.getParameter("country");
        String street  = req.getParameter("street");
        String city  = req.getParameter("city");
        BigDecimal cl = BigDecimal.valueOf(Long.parseLong(creditLimit));
        UserDTO user = new UserDTO(fName,userName,phone,password,job,cl,country,street,null,city,null);
        RegisterService service = new RegisterService();
        service.register(user);

    }
}

