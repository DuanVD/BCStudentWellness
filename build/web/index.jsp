<%-- 
    Document   : index.jsp
    Created on : 16 Jul 2025, 04:36:53
    Author     : vande
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BC Student Wellness - Home</title>
        <style>
            body { font-family: Arial, sans-serif; margin: 40px; }
            .container { max-width: 800px; margin: 0 auto; text-align: center; }
            .btn { display: inline-block; padding: 10px 20px; margin: 10px; 
               background-color: #4CAF50; color: white; text-decoration: none; 
               border-radius: 5px; }
        .btn:hover { background-color: #45a049; }
        </style>
    </head>
    <body>
        <div class = "container">
            <h1>Welcome to the Belgium Campus Student Wellness System</h1>
            
            <a href="login.jsp" class="btn">Login</a>
            <a href="register.jsp" class="btn">Register</a>
        </div>
    </body>
</html>
