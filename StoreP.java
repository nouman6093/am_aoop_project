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


public class StoreP extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String participantsName = request.getParameter("Pname");
        String userName = request.getParameter("Pusername");
        String userPassword = request.getParameter("Ppassword");
        String confirmUserPassword = request.getParameter("Cpassword");

        // EventlyDB, name of table plogindetails

        String a1 = userName;
        String a2 = userPassword;
        String a3 = confirmUserPassword;
        String a4 = participantsName;

        if ((a1 == null || a1.trim().isEmpty()) &&
                (a2 == null || a2.trim().isEmpty()) &&
                (a3 == null || a3.trim().isEmpty()) &&
                (a4 == null || a4.trim().isEmpty())) {
            response.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Please Enter Your Details!!!');");
            out.println("</script>");
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("Psignup.jsp");
            requestDispatcher.include(request, response);
        } else{
            if(a2.equals(a3)){
                try{
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    String conURL = "jdbc:mysql://localhost:3306/EventlyDB";
                    String dbusername = "root";
                    String dbuserpassword = "";
                    Connection con;
                    con = DriverManager.getConnection(conURL , dbusername, dbuserpassword);
                    Statement statement = con.createStatement();
                    String mysqlQuery = "insert into plogindetails values('"+a1+"','"+a2+"','"+a4+"')";
                    statement.executeUpdate(mysqlQuery);
                    RequestDispatcher requestDispatcher;
                    requestDispatcher = request.getRequestDispatcher("Plogin.jsp");
                    requestDispatcher.forward(request, response);
                    con.close();
                }catch(ServletException | IOException | ClassNotFoundException | SQLException e){
                    System.out.println(e);
                }
            }else{
                response.setContentType("text/html");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Please Enter Password And Confirm Password As Same!!!');");
                out.println("</script>");
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("Psignup.jsp");
                requestDispatcher.include(request, response);
            }

        }

    }

}