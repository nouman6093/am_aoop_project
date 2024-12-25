package com.code;

import java.io.*;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class VaPa extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        try (PrintWriter out = response.getWriter()) {
            String userName = request.getParameter("Pausername");
            String userPassword = request.getParameter("Papassword");

            if ((userName == null || userName.trim().isEmpty()) &&
                    (userPassword == null || userPassword.trim().isEmpty())) {
                response.setContentType("text/html");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Please Enter Your Login Details!!!');");
                out.println("</script>");
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("Plogin.jsp");
                requestDispatcher.include(request, response);
            } else{
                try {
                    if(LoginDao.validate(userName, userPassword)){
                        RequestDispatcher requestDispatcher = request.getRequestDispatcher("ParticipantEvent.jsp");
                        requestDispatcher.forward(request, response);
                    }else{
                        response.setContentType("text/html");
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('Sorry! ... User Name and Password Incorrect!!!');");
                        out.println("</script>");
                        RequestDispatcher requestDispatcher = request.getRequestDispatcher("Plogin.jsp");
                        requestDispatcher.include(request, response);
                    }
                } catch (SQLException ex) {
                    Logger.getLogger(VaPa.class.getName()).log(Level.SEVERE, null, ex);
                }
            }

        }
    }

}