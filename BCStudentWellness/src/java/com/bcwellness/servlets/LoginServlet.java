/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.bcwellness.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;




/**
 *
 * @author vande
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // 1. Get form parameters
        String studentNumber = request.getParameter("studentNumber");
        String password = request.getParameter("password");
        
        // 2. Validate inputs (basic validation for now)
        if(studentNumber == null || studentNumber.isEmpty() || 
           password == null || password.isEmpty()) {
            request.setAttribute("errorMessage", "Student number and password are required");
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }
        
        // 3. Authentication logic (placeholder - replace with database check)
        boolean authenticated = authenticateUser(studentNumber, password);
        
        if(authenticated) {
            // 4. Create session and store user information
            HttpSession session = request.getSession();
            session.setAttribute("studentNumber", studentNumber);
            session.setAttribute("name", "Test User"); // Replace with actual name from DB
            
            // 5. Redirect to dashboard
            response.sendRedirect("dashboard.jsp");
        } else {
            // 6. Authentication failed
            request.setAttribute("errorMessage", "Invalid credentials");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
        response.sendRedirect("dashboard.jsp");
    }
    
    // Temporary authentication method - replace with database check
    private boolean authenticateUser(String studentNumber, String password) {
        // For testing purposes only - in real app, check against database
        return !studentNumber.isEmpty() && !password.isEmpty();
    }
}
