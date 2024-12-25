package com.code;

import java.io.*;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddEvent extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String a1 = request.getParameter("EventNo");
        String a2 = request.getParameter("EventName");
        String a3 = request.getParameter("coordinatorName");
        String a4 = request.getParameter("CoordinatorNo");
        String a5 = request.getParameter("fee");
        String a6 = request.getParameter("venue");
        String a7 = request.getParameter("date");

        if (a1 == null || a1.trim().isEmpty() ||
                a2 == null || a2.trim().isEmpty() ||
                a3 == null || a3.trim().isEmpty() ||
                a4 == null || a4.trim().isEmpty() ||
                a5 == null || a5.trim().isEmpty() ||
                a6 == null || a6.trim().isEmpty() ||
                a7 == null || a7.trim().isEmpty()) {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Please Enter Event Details!!!');");
            out.println("</script>");
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("CreateE.jsp");
            requestDispatcher.include(request, response);
        } else {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                String conURL = "jdbc:mysql://localhost:3306/EventlyDB";
                String userName = "root";
                String userPassword = "";

                Connection con = DriverManager.getConnection(conURL, userName, userPassword);
                String queryStatement = "INSERT INTO Event (EventNo, EventName, CoordinatorName, CoordinatorNo, Fee, Venue, Date) VALUES (?, ?, ?, ?, ?, ?, ?)";
                PreparedStatement preparedStatement = con.prepareStatement(queryStatement);

                preparedStatement.setInt(1, Integer.parseInt(a1));
                preparedStatement.setString(2, a2);
                preparedStatement.setString(3, a3);
                preparedStatement.setString(4, a4);
                preparedStatement.setDouble(5, Double.parseDouble(a5));
                preparedStatement.setString(6, a6);
                preparedStatement.setDate(7, java.sql.Date.valueOf(a7));

                preparedStatement.executeUpdate();
                con.commit();
                con.close();

                RequestDispatcher requestDispatcher = request.getRequestDispatcher("CreateE.jsp");
                requestDispatcher.include(request, response);
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Success! ... Event Details Added To Database!');");
                out.println("</script>");
            } catch (Exception e) {
                e.printStackTrace(); // Logs error details to server logs
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Error: " + e.getMessage() + "');");
                out.println("</script>");
            }
        }
    }
}