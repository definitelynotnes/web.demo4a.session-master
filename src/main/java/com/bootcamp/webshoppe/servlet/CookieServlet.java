package com.bootcamp.webshoppe.servlet;



import java.io.IOException;
import java.io.PrintWriter;



import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet(urlPatterns = "/cookie")
public class CookieServlet extends HttpServlet {
    private static final long serialVersionUID = -2087403710969556806L;



   @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        dropCookie(resp);
        Cookie[] cookies = req.getCookies();
        PrintWriter out = resp.getWriter();
        for (Cookie cookie : cookies) {
            out.print("<div> Cookie Name: " + cookie.getName() + "</div>");
            out.print("<div> Cookie Value: " + cookie.getValue() + "</div>");
            out.print("<div> Cookie Path: " + cookie.getPath() + "</div>");
            out.print("<div> Cookie Domain: " + cookie.getDomain() + "</div>");
            out.print("<hr/>");
        }
        
        out.flush();
        out.close();
    }



   private void dropCookie(HttpServletResponse response) {
        Cookie colorCookie = new Cookie("color", "red");
        colorCookie.setMaxAge(60 * 60);
        response.addCookie(colorCookie);
    }
}