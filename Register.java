package com.code;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Register extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String a1 = request.getParameter("ename");
        String a2 = request.getParameter("enum");
        String a3 = request.getParameter("cardno");
        String a4 = request.getParameter("edate");
        String a5 = request.getParameter("cvv");
        String a6 = request.getParameter("cname");

        if ((a1 == null || a1.trim().isEmpty()) &&
                (a2 == null || a2.trim().isEmpty()) &&
                (a3 == null || a3.trim().isEmpty()) &&
                (a4 == null || a4.trim().isEmpty()) &&
                (a5 == null || a5.trim().isEmpty()) &&
                (a6 == null || a6.trim().isEmpty())) {
            response.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Please Enter Event Details!!!');");
            out.println("</script>");
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("Registration.jsp");
            requestDispatcher.include(request, response);
        } else{
            try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                String conURL = "jdbc:mysql://localhost:3306/EventlyDB";
                String dbusername = "root";
                String dbuserpassword = "";
                Connection con;
                con = DriverManager.getConnection(conURL , dbusername, dbuserpassword);
                con.setAutoCommit(false);
                Statement statement = con.createStatement();
                String mysqlQuery = "insert into card values('"+a1+"','"+a2+"','"+a3+"','"+a4+"','"+a5+"','"+a6+"') ";
                statement.executeUpdate(mysqlQuery);
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("Payment.jsp");
                requestDispatcher.forward(request, response);
                con.commit();
                con.close();
            }catch(ServletException | IOException | ClassNotFoundException | SQLException e){
                System.out.println("Exception Caught: " + e);
            }
        }

    }

}