package gov.iti.jets.listeners;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class ApplicationListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        ServletContext servletContext = sce.getServletContext();
        servletContext.setAttribute("totalLogins",Integer.valueOf(0));
        System.out.println("totalLogins in servlet Context start" +0);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {

        ServletContext servletContext = sce.getServletContext();
        Integer totalLogins= (Integer)servletContext.getAttribute("totalLogins");
        System.out.println("totalLogins in servlet Context end" +totalLogins);
        String contextPath = servletContext.getRealPath(File.separator);
        System.out.println("context path"+contextPath);
        final String path = contextPath + "/presentation/application/";
        System.out.println("total path"+path);
        File file = new File(path + "totalVisits.txt");
        System.out.println("file is exist" + file.exists());
        FileWriter fstream = null;
        try {
            fstream = new FileWriter(file,false);
            try (BufferedWriter out = new BufferedWriter(fstream)) {
                    out.write(String.valueOf(totalLogins));
                } catch (IOException ex) {
                    throw new RuntimeException(ex);
                }
                System.out.println("File is created successfully");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

    }
}
