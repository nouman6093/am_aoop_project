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

public class ViewEvent1 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.println("<html lang=\"en\">");
        out.println("<head>");
        out.println("<meta charset=\"UTF-8\">");
        out.println("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">");
        out.println("<title>Event Details - Evently</title>");
        out.println("<link href=\"https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap\" rel=\"stylesheet\">");
        out.println("<style>");
        out.println("body { font-family: 'Roboto', sans-serif; background-color: #f4f7f6; color: #333; margin: 0; padding: 0; }");
        out.println("h1 { text-align: center; color: #4CAF50; }");
        out.println("table { width: 80%; margin: 20px auto; border-collapse: collapse; border: 1px solid #ddd; border-radius: 8px; overflow: hidden; }");
        out.println("th, td { padding: 15px; text-align: left; }");
        out.println("th { background-color: #4CAF50; color: white; font-weight: bold; }");
        out.println("tr:nth-child(even) { background-color: #f2f2f2; }");
        out.println("tr:hover { background-color: #ddd; }");
        out.println("footer { text-align: center; padding: 20px; background-color: #4CAF50; color: white; position: fixed; bottom: 0; width: 100%; }");
        out.println("</style>");
        out.println("</head>");
        out.println("<body>");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String conURL = "jdbc:mysql://localhost:3306/EventlyDB";
            String dbusername = "root";
            String dbuserpassword = "";
            Connection con = DriverManager.getConnection(conURL, dbusername, dbuserpassword);
            con.setAutoCommit(false);
            Statement statement = con.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM Event");

            out.println("<h1>Welcome to Evently - Event Management Portal</h1>");
            out.println("<h2>Event Details</h2>");
            out.println("<table>");
            out.println("<thead>");
            out.println("<tr>");
            out.println("<th>Event Number</th><th>Event Name</th><th>Coordinator</th><th>Coordinator Contact</th><th>Fees</th><th>Venue</th><th>Date</th>");
            out.println("</tr>");
            out.println("</thead>");
            out.println("<tbody>");

            while (resultSet.next()) {
                String n = resultSet.getString("Event_Number");
                String nm = resultSet.getString("Event_Name");
                String co = resultSet.getString("Coordinator_Name");
                String cono = resultSet.getString("Coordinator_Number");
                String f = resultSet.getString("Fee");
                String v = resultSet.getString("Venue");
                String d = resultSet.getString("Date");

                out.println("<tr>");
                out.println("<td>" + n + "</td>");
                out.println("<td>" + nm + "</td>");
                out.println("<td>" + co + "</td>");
                out.println("<td>" + cono + "</td>");
                out.println("<td>" + f + "</td>");
                out.println("<td>" + v + "</td>");
                out.println("<td>" + d + "</td>");
                out.println("</tr>");
            }

            con.commit();
            con.close();

            out.println("</tbody>");
            out.println("</table>");
            out.println("<footer>");
            out.println("<p>&copy; 1999-2022 Evently. All rights reserved.</p>");
            out.println("</footer>");
            out.println("</body>");
            out.println("</html>");

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            out.println("<h2 style=\"color: red; text-align: center;\">Error: Unable to load events.</h2>");
        }
    }
}