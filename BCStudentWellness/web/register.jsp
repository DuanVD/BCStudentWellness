<%-- 
    Document   : register.jsp
    Created on : 16 Jul 2025, 04:40:52
    Author     : vande
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Registration</title>
        
        <style>
            body { font-family: Arial, sans-serif; margin: 40px; }
            .container { max-width: 500px; margin: 0 auto; }
            .form-group { margin-bottom: 15px; }
            label { display: block; margin-bottom: 5px; }
            input[type="text"], input[type="email"], input[type="tel"], 
            input[type="password"] { width: 100%; padding: 8px; box-sizing: border-box; }
            .btn { background-color: #4CAF50; color: white; padding: 10px 15px; 
               border: none; border-radius: 4px; cursor: pointer; }
            .error { color: red; }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Student Registration</h1>
            
            
            <% if(request.getAttribute("errorMessage") != null) { %>
                <p class="error"><%= request.getAttribute("errorMessage") %></p>
            <% } %>
        
            <form action="RegisterServlet" method="POST">
                <div class="form-group">
                    <label for="studentNumber">Student Number:</label>
                    <input type="text" id="studentNumber" name="studentNumber" required>
                </div>
            
                <div class="form-group">
                    <label for="name">First Name:</label>
                    <input type="text" id="name" name="name" required>
                </div>
            
                <div class="form-group">
                    <label for="surname">Last Name:</label>
                    <input type="text" id="surname" name="surname" required>
                </div>
            
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required>
                </div>
            
                <div class="form-group">
                    <label for="phone">Phone Number:</label>
                    <input type="tel" id="phone" name="phone" required>
                </div>
            
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required>
                </div>
            
                <div class="form-group">
                    <label for="confirmPassword">Confirm Password:</label>
                    <input type="password" id="confirmPassword" name="confirmPassword" required>
                </div>
            
                <button type="submit" class="btn">Register</button>
            </form>
        
            <p>Already have an account? <a href="login.jsp">Login here</a></p>
        </div>
    </body>
</html>
