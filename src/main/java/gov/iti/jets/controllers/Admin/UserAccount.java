package gov.iti.jets.controllers.Admin;

import java.io.IOException;
import java.util.List;

import gov.iti.jets.persistent.dto.OrderDto;
import gov.iti.jets.persistent.dto.UserDTO;
import gov.iti.jets.services.GetOrdersServices;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class UserAccount extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("presentation/views/dashboard.jsp");

        HttpSession session = req.getSession(false);

        if (session == null) {
            resp.sendRedirect("/petpet/login");
        } else {
            UserDTO user = (UserDTO) session.getAttribute("userSession");

            System.out.println("user " + user);

            if (user == null) {
                resp.sendRedirect("/petpet/login");
            } else {

                // String pageNumber = req.getParameter("pageNumber");
                String pageNumber = "0";
                UserDTO userDTO = (UserDTO) session.getAttribute("userSession");

                GetOrdersServices getOrdersServices = new GetOrdersServices();
                List<OrderDto> orderDtoList = getOrdersServices.getUserOrders((userDTO.getId()),
                        Integer.valueOf(pageNumber));

                System.out.println("orderDto"+orderDtoList);

                req.setAttribute("orders", orderDtoList);

                dispatcher.forward(req, resp);

            }
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
