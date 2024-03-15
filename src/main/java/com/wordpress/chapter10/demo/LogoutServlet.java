package com.wordpress.chapter10.demo;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the session
        HttpSession session = request.getSession(false); // Do not create a new session if it doesn't exist

        if (session != null) {
            // Invalidate the session (delete the session)

            request.setAttribute("flashMessage", "You have been logged out successfully.");

            session.invalidate();

            request.getRequestDispatcher("index.jsp").forward(request, response);

        }

        // Redirect to index.jsp
        response.sendRedirect("index.jsp");
    }

    // Handle GET requests as well for extra security
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // doPost(request, response);
        response.sendRedirect("index.jsp");
    }
}

