package com.code;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TraH extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.println("<!DOCTYPE html>");
        out.println("<html lang=\"en\">");
        out.println("<head>");
        out.println("<meta charset=\"UTF-8\">");
        out.println("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">");
        out.println("<title>Transaction Details - Evently</title>");
        out.println("<link href=\"https://fonts.googleapis.com/css2?family=Balsamiq+Sans&display=swap\" rel=\"stylesheet\">");
        out.println("<style>");
        out.println("body { font-family: 'Balsamiq Sans', sans-serif; background-color: #f4f4f9; margin: 0; padding: 0; }");
        out.println("header { background-color: #4CAF50; color: white; padding: 15px; text-align: center; }");
        out.println("h1 { margin: 0; font-size: 2.5em; }");
        out.println("table { width: 80%; margin: 20px auto; border-collapse: collapse; background-color: #fff; border-radius: 10px; }");
        out.println("th, td { padding: 12px 15px; text-align: center; border: 1px solid #ddd; }");
        out.println("th { background-color: #4CAF50; color: white; }");
        out.println("tr:nth-child(even) { background-color: #f2f2f2; }");
        out.println("button { background-color: #4CAF50; color: white; border: none; padding: 10px 20px; cursor: pointer; font-size: 1em; border-radius: 5px; }");
        out.println("button:hover { background-color: #45a049; }");
        out.println(".container { text-align: center; padding: 20px; }");
        out.println(".footer { text-align: center; padding: 10px; background-color: #333; color: white; position: fixed; width: 100%; bottom: 0; }");
        out.println("</style>");
        out.println("</head>");
        out.println("<body>");

        out.println("<header>");
        out.println("<h1>Welcome To Evently - An Event Management Portal</h1>");
        out.println("</header>");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String conURL = "jdbc:mysql://localhost:3306/EventlyDB";
            String dbusername = "root";
            String dbuserpassword = "";
            Connection con;
            con = DriverManager.getConnection(conURL, dbusername, dbuserpassword);
            con.setAutoCommit(false);
            Statement statement = con.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM card");

            out.println("<div class=\"container\">");
            out.println("<h2>Transaction Details</h2>");
            out.println("<a href=\"TransactionDetails.jsp\"><button>Event Details Page</button></a>");
            out.println("</div>");

            out.println("<div class=\"container\">");
            out.println("<table>");
            out.println("<tr><th>Event No</th><th>Event Name</th><th>Name</th><th>Payment Date</th></tr>");

            while (resultSet.next()) {
                String en = resultSet.getString("Event_Number");
                String re = resultSet.getString("Event_Name");
                String pd = resultSet.getString("Expiry_Date");
                String name = resultSet.getString("Card_Name");

                out.println("<tr><td>" + en + "</td><td>" + re + "</td><td>" + name + "</td><td>" + pd + "</td></tr>");
            }

            con.commit();
            con.close();
            out.println("</table>");
            out.println("</div>");

        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Exception Caught: " + e);
        }

        out.println("<div class=\"footer\">");
        out.println("<label>&#169; 2024 Evently. All rights reserved.</label>");
        out.println("</div>");

        out.println("</body>");
        out.println("</html>");
    }
}