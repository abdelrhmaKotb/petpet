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
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String UserId= req.getParameter("id");

        GetOrdersServices getOrdersServices =new GetOrdersServices();
        List<OrderDto> orderDtoList =  getOrdersServices.getUserOrders( Integer.parseInt(UserId), 0);
        long totalPages = getOrdersServices.totalOrders( Integer.parseInt(UserId));
        RequestDispatcher requestDis = req.getRequestDispatcher("/presentation/views/Admin/UserOrderList.jsp");

        req.setAttribute("Orders", orderDtoList);
        req.setAttribute("UserId", UserId);
        req.setAttribute("totalPages", Math.ceil( (double)totalPages/10));

        orderDtoList.forEach(e->System.out.println(e.getId()));
        requestDis.forward(req, resp);



    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("hello");
        String pageNumber= req.getParameter("pageNumber");
        HttpSession userSession = req.getSession();
        UserDTO userDTO = (UserDTO) userSession.getAttribute("userSession");

        PrintWriter printWriter =resp.getWriter();
        GetOrdersServices getOrdersServices =new GetOrdersServices();
        List<OrderDto> orderDtoList =  getOrdersServices.getUserOrders((userDTO.getId()), Integer.valueOf(pageNumber));
        printWriter.write(new Gson().toJson(orderDtoList));

    }

}
