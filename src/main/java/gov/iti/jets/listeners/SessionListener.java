package gov.iti.jets.listeners;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpSessionEvent;
import jakarta.servlet.http.HttpSessionListener;

public class SessionListener implements HttpSessionListener {
    @Override
    public void sessionCreated(HttpSessionEvent se) {
        ServletContext servletContext = se.getSession().getServletContext();
        Integer totalLogins= (Integer)servletContext.getAttribute("totalLogins");
        totalLogins= Integer.valueOf(totalLogins+1);
        servletContext.setAttribute("totalLogins when start this session", totalLogins );
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        ServletContext servletContext = se.getSession().getServletContext();
        Integer totalLogins= (Integer)servletContext.getAttribute("totalLogins");
        totalLogins= Integer.valueOf(totalLogins-1);
        System.out.println("totalLogins befordestroythissession: "+totalLogins);
        servletContext.setAttribute("totalLogins", totalLogins);
    }
}
