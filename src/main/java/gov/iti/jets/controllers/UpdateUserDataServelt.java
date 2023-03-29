package gov.iti.jets.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import org.json.JSONObject;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import gov.iti.jets.persistent.dto.UserDTO;
import gov.iti.jets.services.UpdateUserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class UpdateUserDataServelt  extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userId = req.getParameter("userId");
        UserDTO user = new UpdateUserService().getUserDTOById(Integer.parseInt(userId));    
        JSONObject userData = new JSONObject();
    
        userData.put("name", user.getName());
        userData.put("email", user.getEmail());
        userData.put("Phone", user.getPhone().toString());
        userData.put("BirthDate", user.getBirthday().toString());
        userData.put("job", user.getJob());
        userData.put("creditLimit", user.getCreditLimit());
        userData.put("Street", user.getStreet());
        userData.put("city", user.getCity());
        userData.put("County", user.getCountry());
        String jsonString = userData.toString();
        resp.setContentType("application/json");
        PrintWriter out = resp.getWriter();
        out.print(jsonString);
        out.flush();
        System.out.println(" servelt  med  hat  "+userId);

    }
    
}
