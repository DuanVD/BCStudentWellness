<%-- 
    Document   : login.jsp
    Created on : 16 Jul 2025, 04:45:02
    Author     : vande
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Login</title>
        
        <style>
            body { font-family: Arial, sans-serif; margin: 40px; }
            .container { max-width: 400px; margin: 0 auto; }
            .form-group { margin-bottom: 15px; }
            label { display: block; margin-bottom: 5px; }
            input[type="text"], input[type="password"] { 
                width: 100%; padding: 8px; box-sizing: border-box; 
            }
            .btn { background-color: #4CAF50; color: white; padding: 10px 15px; 
                border: none; border-radius: 4px; cursor: pointer; }
            .error { color: red; }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Student Login</h1>
        
            <% if(request.getAttribute("errorlogin") != null) { %>
                <p class="error"><%= request.getAttribute("errorMessage") %></p>
            <% } %>
        
            <form action="LoginServlet" method="POST">
                <div class="form-group">
                    <label for="studentNumber">Student Number:</label>
                    <input type="text" id="studentNumber" name="studentNumber" required>
                </div>
            
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required>
                </div>
            
                <button type="submit" class="btn">Login</button>
            </form>
        
            <p>Don't have an account? <a href="register.jsp">Register here</a></p>
        </div>
    </body>
</html>
