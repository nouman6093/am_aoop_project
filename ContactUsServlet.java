package com.code;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

public class ContactUsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String subject = request.getParameter("subject");
        String message = request.getParameter("message");

        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/eventlydb";
            String dbUser = "root";
            String dbPass = "";
            conn = DriverManager.getConnection(url, dbUser, dbPass);

            String query = "INSERT INTO contact_us (name, email, subject, message) VALUES (?, ?, ?, ?)";
            stmt = conn.prepareStatement(query);

            stmt.setString(1, name);
            stmt.setString(2, email);
            stmt.setString(3, subject);
            stmt.setString(4, message);

            int rowsAffected = stmt.executeUpdate();

            if (rowsAffected > 0) {
                request.setAttribute("alertMessage", "Your message has been sent successfully!");
            } else {
                request.setAttribute("alertMessage", "There was an issue sending your message. Please try again.");
            }

            request.getRequestDispatcher("contact.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("alertMessage", "There was an error processing your request. Please try again.");
            request.getRequestDispatcher("contact.jsp").forward(request, response);
        } finally {
            try {
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}