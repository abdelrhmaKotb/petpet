package gov.iti.jets.filters;

import jakarta.servlet.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import gov.iti.jets.persistent.dto.UserDTO;

public class AdminFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        Filter.super.init(filterConfig);
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        System.out.println("admin filter");

        HttpServletRequest req = (HttpServletRequest) request;
        HttpSession session = req.getSession(false);

        if (session != null) {
            UserDTO user = (UserDTO) session.getAttribute("userSession");

            if (user != null) {
                if (!user.isAdmin()) {
                    ((HttpServletResponse) response).sendRedirect("/petpet/home");
                    return;
                } else {
                    chain.doFilter(request, response);
                    return;
                }
            }

        }

        ((HttpServletResponse) response).sendRedirect("/petpet/login");

    }

    @Override
    public void destroy() {
        Filter.super.destroy();
    }
}
