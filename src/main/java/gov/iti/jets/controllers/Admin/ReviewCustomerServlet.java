package gov.iti.jets.controllers.Admin;

import com.google.gson.Gson;
import gov.iti.jets.persistent.dto.OrderDto;
import gov.iti.jets.persistent.dto.UserDTO;
import gov.iti.jets.persistent.entity.User;
import gov.iti.jets.services.GetOrdersServices;
import gov.iti.jets.services.GetUsersService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class ReviewCustomerServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        GetUsersService getUsersService =new GetUsersService();
        List<UserDTO> userDTOS =  getUsersService.getAllUsersByPageNumber(0);
        long totalPages = getUsersService.totalUsers( );

        req.setAttribute("AllUsers" , userDTOS);
        req.setAttribute("totalPages", Math.ceil( (double)totalPages/5));
        req.getRequestDispatcher("user-list").forward(req , resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String pageNumber= req.getParameter("pageNumber");
        PrintWriter printWriter =resp.getWriter();
        GetUsersService getUsersService =new GetUsersService();
        List<UserDTO> userDTOS =  getUsersService.getAllUsersByPageNumber( Integer.valueOf(pageNumber)-1);
        printWriter.write(new Gson().toJson(userDTOS));
    }
}
