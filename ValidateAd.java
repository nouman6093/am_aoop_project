package com.code;

import java.io.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ValidateAd extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try (PrintWriter printWriterOut = response.getWriter()) {
            String userName = request.getParameter("Ausername");
            String userPassword = request.getParameter("Apassword");

            response.setContentType("text/html");

            String adminUserOne = "A101";
            String adminUserOnePassword = "Admin101";

            String adminUserTwo = "A202";
            String adminUserTwoPassword = "Admin202";

            String adminUserThree = "A303";
            String adminUserThreePassword = "Admin303";

            String adminUserFour = "A404";
            String adminUserFourPassword = "Admin404";

            if (userName.equals(adminUserOne) && userPassword.equals(adminUserOnePassword)) {
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("AdminEvent.jsp");
                requestDispatcher.forward(request, response);
            } else if (userName.equals(adminUserTwo) && userPassword.equals(adminUserTwoPassword)) {
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("AdminEvent.jsp");
                requestDispatcher.forward(request, response);
            } else if (userName.equals(adminUserThree) && userPassword.equals(adminUserThreePassword)) {
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("AdminEvent.jsp");
                requestDispatcher.forward(request, response);
            } else if (userName.equals(adminUserFour) && userPassword.equals(adminUserFourPassword)) {
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("AdminEvent.jsp");
                requestDispatcher.forward(request, response);
            } else {
                response.setContentType("text/html");
                printWriterOut.println("<script type=\"text/javascript\">");
                printWriterOut.println("alert('Please Enter Valid Username & Password for Admin!!!');");
                printWriterOut.println("</script>");
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("Alogin.jsp");
                requestDispatcher.include(request, response);
            }
        }
    }
}