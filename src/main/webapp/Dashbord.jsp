<%@ page import="java.util.*" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="Model.User" %>
<%
    HttpSession session1 = request.getSession(false);
    if (session1 == null || session1.getAttribute("user") == null) {
        response.sendRedirect("login.jsp");
    }
%>
<h2>Welcome, <%= ((User) session1.getAttribute("user")).getName() %>!</h2>
