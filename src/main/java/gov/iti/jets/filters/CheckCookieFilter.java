package gov.iti.jets.filters;

import java.io.IOException;
import java.net.InetAddress;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

import com.google.gson.Gson;

import gov.iti.jets.helpers.GeneratePlainPassword;
import gov.iti.jets.models.Cookie;
import gov.iti.jets.persistent.dto.UserDTO;
import gov.iti.jets.services.loginService;
import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

public class CheckCookieFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        HttpServletRequest req = (HttpServletRequest) request;
        HttpSession session = req.getSession(false);

        UserDTO user = null;

        if (session != null && (user = (UserDTO) session.getAttribute("userSession")) != null) {
            chain.doFilter(request, response);
        } else {
            String json = null;
            try {
                jakarta.servlet.http.Cookie[] cookies = req.getCookies();

                if(cookies == null){
                    chain.doFilter(request, response);
                    return;
                }

                String value = null;
                for (int i = 0; i < cookies.length; i++) {
                    String name = cookies[i].getName();
                    if (name.equals("urml")) {
                        value = cookies[i].getValue();
                        break;

                    }

                }
                if (value != null && !value.equals("")) {

                    json = GeneratePlainPassword.decrypte(value);
                    System.out.println(json);
                    Cookie userCookie = new Gson().fromJson(json, gov.iti.jets.models.Cookie.class);

                    String ip = req.getRemoteAddr();
                    if (ip.equalsIgnoreCase("0:0:0:0:0:0:0:1")) {
                        InetAddress inetAddress = InetAddress.getLocalHost();
                        String ipAddress = inetAddress.getHostAddress();
                        ip = ipAddress;
                    }

                    if (ip.equals(userCookie.getIp())) {
                        UserDTO userDTO = new loginService().isUser2(userCookie.getEmail(), userCookie.getPassword());
                        System.out.println("from filter 55 " + userDTO);

                        if (userDTO != null) {
                            session = req.getSession(true);

                            session.setAttribute("userSession", userDTO);
                        }

                    }

                }

                chain.doFilter(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

    }

    @Override
    public void destroy() {
        Filter.super.destroy();
    }

}
