package com.wordpress.chapter10.demo;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");

        for (int i=1; i <= 6; i++) {
            out.printf("<h%d> %s </h%d>\n", i, message, i);
        }

        out.println("</body></html>");
    }

    public void destroy() {
    }
}