package gov.iti.jets.listeners;

import gov.iti.jets.persistent.dto.UserDTO;
import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpSessionEvent;
import jakarta.servlet.http.HttpSessionListener;

public class SessionListener implements HttpSessionListener {
    @Override
    public void sessionCreated(HttpSessionEvent se) {

            ServletContext servletContext = se.getSession().getServletContext();
            Integer totalLogins= (Integer)servletContext.getAttribute("totalLogins");
            totalLogins= Integer.valueOf(totalLogins+1);
            servletContext.setAttribute("totalLogins", totalLogins );
          

       
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {

        ServletContext servletContext = se.getSession().getServletContext();
        Integer totalLogins= (Integer)servletContext.getAttribute("totalLogins");
        totalLogins= Integer.valueOf(totalLogins-1);
        System.out.println("totalLogins before destroy thi session: "+totalLogins);
        servletContext.setAttribute("totalLogins", totalLogins);

    }
}
