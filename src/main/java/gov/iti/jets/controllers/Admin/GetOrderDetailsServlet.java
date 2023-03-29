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
        int id = 0;
        try {
            id = Integer.valueOf(orderId);
        } catch (Exception e) {
            resp.sendRedirect("/petpet/404");
            return;
        }
        GetOrderDetailsService getOrderDetailsService = new GetOrderDetailsService();
        List<OrderDetailDto> orderDetailDtoList = getOrderDetailsService.getOrderDetailsByOrderId(id);
        System.out.println(orderDetailDtoList);
        req.setAttribute("orderDetails", orderDetailDtoList);
        req.getRequestDispatcher("/presentation/views/Admin/userOrderDetails.jsp").forward(req, resp);
    }
}
