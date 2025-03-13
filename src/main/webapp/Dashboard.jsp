<%@ page import="Model.User" %>
<%@ page session="true" %>

<%
    User user = (User) session.getAttribute("user"); // Retrieve the User object from session
    if (user == null) {
        response.sendRedirect("login.jsp");
    } else {
        String userName = user.getNom();
        String userRole = user.getRole();
        // Now you can use userName and userRole in your JSP page
    }
%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
</head>
<body>
<h2>Welcome, <%= user.getNom() %>!</h2>
<a href="LogoutServlet">Logout</a>
</body>
</html>
