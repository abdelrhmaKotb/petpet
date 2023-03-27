package gov.iti.jets.controllers.Admin;

import gov.iti.jets.persistent.dto.OrderDto;
import gov.iti.jets.services.GetOrdersServices;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import com.google.gson.Gson;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class ViewUserOrderServlet  extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String UserId= req.getParameter("id");

        GetOrdersServices getOrdersServices =new GetOrdersServices();
        List<OrderDto> orderDtoList =  getOrdersServices.getUserOrders( Integer.parseInt(UserId), 0);
        long totalPages = getOrdersServices.totalOrders( Integer.parseInt(UserId));
        RequestDispatcher requestDis = req.getRequestDispatcher("/presentation/views/Admin/UserOrderList.jsp");

        req.setAttribute("Orders", orderDtoList);
        req.setAttribute("UserId", UserId);
        req.setAttribute("totalPages", Math.ceil( (double)totalPages/5));

        orderDtoList.forEach(e->System.out.println(e.getId()));
        requestDis.forward(req, resp);



    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String UserId= req.getParameter("userId");
        String pageNumber= req.getParameter("pageNumber");
        PrintWriter printWriter =resp.getWriter();
        GetOrdersServices getOrdersServices =new GetOrdersServices();
        List<OrderDto> orderDtoList =  getOrdersServices.getUserOrders( Integer.parseInt(UserId), Integer.valueOf(pageNumber)-1);
        printWriter.write(new Gson().toJson(orderDtoList));

    }

}
