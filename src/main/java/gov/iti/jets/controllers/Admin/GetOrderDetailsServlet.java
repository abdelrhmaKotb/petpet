package gov.iti.jets.controllers.Admin;

import gov.iti.jets.persistent.dto.OrderDetailDto;
import gov.iti.jets.services.GetOrderDetailsService;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

public class GetOrderDetailsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String orderId = req.getParameter("id");
        GetOrderDetailsService getOrderDetailsService = new GetOrderDetailsService();
        List<OrderDetailDto> orderDetailDtoList = getOrderDetailsService.getOrderDetailsByOrderId(Integer.valueOf(orderId));
        System.out.println(orderDetailDtoList);
        req.setAttribute("orderDetails",orderDetailDtoList);
        req.getRequestDispatcher("/presentation/views/Admin/userOrderDetails.jsp").forward(req , resp);
    }
}
