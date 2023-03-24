package gov.iti.jets.controllers;

import com.google.gson.Gson;
import gov.iti.jets.persistent.dto.OrderDto;
import gov.iti.jets.persistent.dto.UserDTO;
import gov.iti.jets.services.GetOrdersServices;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class ViewOrderServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String pageNumber= req.getParameter("pageNumber");
        HttpSession userSession = req.getSession();
        UserDTO userDTO = (UserDTO) userSession.getAttribute("userSession");

        PrintWriter printWriter =resp.getWriter();
        GetOrdersServices getOrdersServices =new GetOrdersServices();
        List<OrderDto> orderDtoList =  getOrdersServices.getUserOrders((userDTO.getId()), Integer.valueOf(pageNumber));
        printWriter.write(new Gson().toJson(orderDtoList));

    }

}
