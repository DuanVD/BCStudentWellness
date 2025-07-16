<%-- 
    Document   : dashboard.jsp
    Created on : 16 Jul 2025, 04:50:11
    Author     : vande
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    // Check if user is logged in
    if(session.getAttribute("studentNumber") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Dashboard</title>
        
        <style>
            body { font-family: Arial, sans-serif; margin: 40px; }
            .container { max-width: 800px; margin: 0 auto; }
            .welcome { font-size: 24px; margin-bottom: 20px; }
            .btn { 
                display: inline-block; padding: 10px 20px; margin: 10px 5px; 
                background-color: #4CAF50; color: white; text-decoration: none; 
                border-radius: 5px; border: none; cursor: pointer;
            }
            .btn.logout { background-color: #f44336; }
            .services { margin-top: 30px; }
        </style>
    </head>
    <body>
        <div class="container">
            <%-- Check if user is logged in --%>
            <% if(session.getAttribute("student") == null) { 
                response.sendRedirect("login.jsp");
                return;
            } %>
        
            <div class="welcome">
                Welcome, <%= session.getAttribute("name") %>!
            </div>
        
            <form action="LogoutServlet" method="POST">
                <button type="submit" class="btn logout">Logout</button>
            </form>
        
            <div class="services">
                <h2>Wellness Services</h2>
                <p>Access your wellness services here:</p>
            
                <a href="#" class="btn">Book Appointment</a>
                <a href="#" class="btn">View Appointments</a>
                <a href="#" class="btn">Submit Feedback</a>
            </div>
        </div>
    </body>
</html>
