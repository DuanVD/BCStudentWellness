/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.bcwellness.servlets;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author vande
 */
@WebServlet(name = "RegisterServlet", urlPatterns = {"/RegisterServlet"})
public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // 1. Get all form parameters
        String studentNumber = request.getParameter("studentNumber");
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        
        // 2. Validate inputs
        if(!validateRegistration(studentNumber, name, surname, email, phone, password, confirmPassword)) {
            request.setAttribute("errorMessage", "Please fill all fields correctly");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }
        
        // 3. Check if passwords match
        if(!password.equals(confirmPassword)) {
            request.setAttribute("errorMessage", "Passwords do not match");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }
        
        // 4. Process registration (placeholder - replace with database operation)
        boolean registrationSuccess = registerUser(studentNumber, name, surname, email, phone, password);
        
        if(registrationSuccess) {
            // 5. Redirect to login page with success message
            request.setAttribute("successMessage", "Registration successful! Please login");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            // 6. Registration failed
            request.setAttribute("errorMessage", "Registration failed. Please try again");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
    }
    
    private boolean validateRegistration(String... fields) {
        for(String field : fields) {
            if(field == null || field.trim().isEmpty()) {
                return false;
            }
        }
        return true;
    }
    
    // Temporary registration method - replace with database operation
    private boolean registerUser(String studentNumber, String name, String surname, 
                               String email, String phone, String password) {
        // For testing purposes only - in real app, save to database
        return true;
    }
}